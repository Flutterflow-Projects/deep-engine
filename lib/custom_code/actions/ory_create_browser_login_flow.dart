// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future oryCreateBrowserLoginFlow(
  Future Function(String? errorMsg) onError,
  Future Function() onSuccess,
) async {
  // Add your function code here!
  final loginFlow = await AuthService().createBrowserLoginFlow();
  /*FFAppState().oryPasskeyCreateData = AuthService()
      .getValueFromRegistrationFlowByName(
          registrationFlow!, "passkey_create_data");
  FFAppState().oryFlowId = registrationFlow!.id;
  FFAppState().oryCsrfToken =
      AuthService().getCSRFTokenFromRegistrationFlowByName(registrationFlow!);*/

  /*html.window.onMessage.listen((event) async {
    Map<String, dynamic> jsonMap = jsonDecode(event.data);

    var passkeyRegister = jsonMap['passkey_register'];
    var email = jsonMap['email'];

    final registrationResult = await AuthService()
        .updateBrowserRegistrationFlow(FFAppState().oryFlowId, email,
            passkeyRegister, FFAppState().oryCsrfToken);

    if (registrationResult == null) {
      onErrorRegistration!.call("You might have already used this passkey.");
    } else {
      onSuccessfulRegistration!.call();
    }
  });*/
}
