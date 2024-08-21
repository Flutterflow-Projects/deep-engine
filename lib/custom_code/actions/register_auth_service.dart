// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:built_value/json_object.dart';
import 'package:dio/dio.dart';
import 'package:dio/browser.dart';
import 'package:one_of/one_of.dart';
import 'package:universal_html/html.dart';
import 'package:ory_client/ory_client.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future registerAuthService() async {
  // Ory auth steps as per https://www.ory.sh/docs/getting-started/integrate-auth/flutter-web-redirect

  await dotenv.load(fileName: ".env");
  final baseUrl = dotenv.get("ORY_BASE_URL").toString();

  //final baseUrl = "http://localhost:3005";

  // create the dio client for http requests
  final options = BaseOptions(
    method: "passkey",
    baseUrl: baseUrl,
    connectTimeout: const Duration(seconds: 10000),
    receiveTimeout: const Duration(seconds: 5000),
    headers: {
      "Accept": "application/json",
    },
    validateStatus: (status) {
      // here we prevent the request from throwing an error when the status code is less than 500 (internal server error)
      return status! < 500;
    },
  );
  final dio = DioForBrowser(options);
  final adapter = BrowserHttpClientAdapter();
  // enable cookies support
  // we need this so we can send HTTP requests to the server with the cookies stored in the browser
  adapter.withCredentials = true;
  dio.httpClientAdapter = adapter;

  final auth = AuthService(dio);

  if (Uri.base.path != '/signIn' && Uri.base.path != '/signInPasskey') {
    if (!(await auth.isAuthenticated())) {
      _launchURL(baseUrl);
      return;
    }
  }
}

void _launchURL(String url) async {
  //window.open("$url/self-service/login/browser", '_self');
  window.open("/signIn", '_self');
}

class AuthService {
  late final FrontendApi _ory;
  late final OryClient _client;
  late final Dio _dio;
  Session? _identity;

  static final AuthService _singleton = AuthService._internal();
  bool _isInitialized = false;

  factory AuthService([Dio? dio]) {
    if (dio != null && !_singleton._isInitialized) {
      _singleton._client = OryClient(dio: dio);
      _singleton._ory = _singleton._client.getFrontendApi();
      _singleton._dio = dio;
      _singleton._isInitialized = true;
    } else if (!_singleton._isInitialized) {
      throw ArgumentError(
          'Dio must be provided when creating the AuthService for the first time.');
    }
    return _singleton;
  }

  AuthService._internal();

  Future<bool> isAuthenticated() async {
    return _ory.toSession().then((resp) {
      if (resp.statusCode == 200) {
        _identity = resp.data;
        print(resp);
        return true;
      }
      return false;
    }).catchError((error) {
      var substring = "passkey";
      if (error.toString().contains(substring)) return true;
      return false;
    });
  }

  Future logout() async {
    return _ory.createBrowserLogoutFlow().then((resp) {
      return _ory.updateLogoutFlow(token: resp.data!.logoutToken).then((resp) {
        window.location.reload();
      });
    });
  }

  String getValueFromRegistrationFlowByName(
      RegistrationFlow registrationFlow, String name) {
    var node = registrationFlow.ui.nodes.firstWhere(
        (element) => element.attributes.oneOf.value.toString().contains(name));

    //RegExp regExp = RegExp(r'value=([^,]+),');
    RegExp regExp = RegExp(r'value=({.*?}),\s');

    Match? match = regExp.firstMatch(node.toString());
    if (match != null) {
      return match.group(1)!.trim();
    } else {
      return "";
    }
  }

  String getCSRFTokenFromRegistrationFlowByName(
      RegistrationFlow registrationFlow) {
    var node = registrationFlow.ui.nodes.firstWhere((element) =>
        element.attributes.oneOf.value.toString().contains("csrf_token"));

    RegExp regExp = RegExp(r'value=([^,]+),');
    //RegExp regExp = RegExp(r'value=({.*?}),\s');

    Match? match = regExp.firstMatch(node.toString());
    if (match != null) {
      return match.group(1)!.trim();
    } else {
      return "";
    }
  }

  String getChallengeFromLoginFlow(dynamic loginFlow) {
    final challenge = loginFlow["ui"]["nodes"].firstWhere((element) =>
        element["attributes"]["name"].toString().contains("passkey_challenge"));

    return challenge["attributes"]["value"].toString();
  }

  String getCSRFTokenFromLoginFlowByName(dynamic loginFlow) {
    var node = loginFlow["ui"]["nodes"].firstWhere((element) =>
        element["attributes"]["name"].toString().contains("csrf_token"));

    return node["attributes"]["value"].toString();
  }

  Future<RegistrationFlow?> createBrowserRegistrationFlow() async {
    try {
      final resp = await _ory.createBrowserRegistrationFlow();

      /*final OneOf oneOf;
       oneOf = OneOf.fromValue1(
              value: UpdateRegistrationFlowWithPasskeyMethod((b) => b
                ..csrfToken=csrfToken
                ..passkeyRegister = "abc"
                ..traits = JsonObject({"email": "tim@thecalda.com"})
                ..method = "passkey"));
*/
      print(resp.data);
      /*final sdf = await _ory.updateRegistrationFlow(
          flow: resp.data!.id,
          updateRegistrationFlowBody: UpdateRegistrationFlowBody((b) => b
            ..oneOf = oneOf
          ));*/
      return resp.data;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  Future<Object?> updateBrowserRegistrationFlow(
      flow, email, passkeyRegister, csrfToken) async {
    try {
      final OneOf oneOf;
      oneOf = OneOf.fromValue1(
          value: UpdateRegistrationFlowWithPasskeyMethod((b) => b
            ..csrfToken = csrfToken
            ..passkeyRegister = passkeyRegister
            ..traits = JsonObject({"email": email})
            ..method = "passkey"));

      final resp = await _ory.updateRegistrationFlow(
          flow: flow,
          updateRegistrationFlowBody:
              UpdateRegistrationFlowBody((b) => b..oneOf = oneOf));

      return resp.data;
    } catch (error) {
      if (error.toString().contains("Invalid argument(s): passkey")) {
        return "Not an error, just sdk doesnt support passkey realy...";
      } else {
        return null;
      }
    }
  }

  Future<Object?> updateBrowserLoginFlow(flow, passkeyLogin, csrfToken) async {
    try {
      final OneOf oneOf;
      oneOf = OneOf.fromValue1(
          value: UpdateLoginFlowWithPasskeyMethod((b) => b
            ..csrfToken = csrfToken
            ..passkeyLogin = passkeyLogin.toString()
            ..method = "passkey"));

      final resp = await _ory.updateLoginFlow(
          flow: flow,
          updateLoginFlowBody:
              UpdateLoginFlowBody((b) => b..oneOf = oneOf));

      return resp.data;
    } catch (error) {
      if (error.toString().contains("Invalid argument(s): passkey")) {
        return "Not an error, just sdk doesnt support passkey realy...";
      } else {
        return null;
      }
    }
  }

  Future<dynamic?> createBrowserLoginFlow() async {
    try {
      Response response = await _dio.get('/self-service/login/browser');
      return response.data;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  /*Future<dynamic?> logoutUser() async {
    try {
      Response response = await _dio.get('/self-service/logout/browser');
      print(response.data);
      return response.data;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }*/

  get identity => _identity;
}
