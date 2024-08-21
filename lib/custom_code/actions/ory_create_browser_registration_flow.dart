// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';

import 'package:universal_html/html.dart' as html;

import 'register_auth_service.dart';

Future oryCreateBrowserRegistrationFlow(
    Future Function(String? errorMsg) onErrorRegistration,
    Future Function() onSuccessfulRegistration) async {
  // Add your function code here!
  final registrationFlow = await AuthService().createBrowserRegistrationFlow();
  FFAppState().oryPasskeyCreateData = AuthService()
      .getValueFromRegistrationFlowByName(
          registrationFlow!, "passkey_create_data");
  FFAppState().oryFlowId = registrationFlow!.id;
  FFAppState().oryCsrfToken =
      AuthService().getCSRFTokenFromRegistrationFlowByName(registrationFlow!);

  html.window.onMessage.listen((event) async {
    Map<String, dynamic> jsonMap = jsonDecode(event.data);

    var passkeyRegister = jsonMap['passkey_register'];
    var email = jsonMap['email'];

    if (passkeyRegister == null) return;
    final registrationResult = await AuthService()
        .updateBrowserRegistrationFlow(FFAppState().oryFlowId, email,
            passkeyRegister, FFAppState().oryCsrfToken);

    if (registrationResult == null) {
      onErrorRegistration!.call("You might have already used this passkey.");
    } else {
      onSuccessfulRegistration!.call();
    }
  });
}
