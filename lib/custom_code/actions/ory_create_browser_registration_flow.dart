// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:universal_html/html.dart' as html;

import 'register_auth_service.dart';

Future oryCreateBrowserRegistrationFlow(BuildContext context) async {
  // Add your function code here!
  final registrationFlow = await AuthService().createBrowserRegistrationFlow();
  FFAppState().oryPasskeyCreateData = AuthService()
      .getValueFromRegistrationFlowByName(
          registrationFlow!, "passkey_create_data");
  FFAppState().oryFlowId = registrationFlow!.id;
  FFAppState().oryCsrfToken =
      AuthService().getCSRFTokenFromRegistrationFlowByName(registrationFlow!);

  html.window.onMessage.listen((event) {
    print(event);
    print(event.data);

    AuthService().updateBrowserRegistrationFlow(
        FFAppState().oryFlowId,
        event.data.email,
        event.data.passkey_register,
        FFAppState().oryCsrfToken);
  });
}
