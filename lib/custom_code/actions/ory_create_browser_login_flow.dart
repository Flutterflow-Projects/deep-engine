// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'register_auth_service.dart';
import 'package:universal_html/html.dart' as html;

Future oryCreateBrowserLoginFlow(
  Future Function(String? errorMsg) onError,
  Future Function() onSuccess,
) async {
  // Add your function code here!
  final loginFlow = await AuthService().createBrowserLoginFlow();
  print("loginflow");
  print(loginFlow);
  FFAppState().oryFlowId = loginFlow!["id"];
  FFAppState().oryPasskeyCreateData =
      AuthService().getChallengeFromLoginFlow(loginFlow);
  FFAppState().oryCsrfToken =
      AuthService().getCSRFTokenFromLoginFlowByName(loginFlow);

  html.window.onMessage.listen((event) async {
    Map<String, dynamic> jsonMap = jsonDecode(event.data);

    var passkeyLogin = jsonMap['passkey_login'];
    var email = jsonMap['email'];

    print(passkeyLogin);
    print(email);
    if (passkeyLogin == null) return;
    print("passkeyLogin");
    final loginResult = await AuthService().updateBrowserLoginFlow(
        FFAppState().oryFlowId, passkeyLogin, FFAppState().oryCsrfToken);

    if (loginResult == null) {
      onError!.call("You might have already used this passkey.");
    } else {
      onSuccess!.call();
    }
  });
}
