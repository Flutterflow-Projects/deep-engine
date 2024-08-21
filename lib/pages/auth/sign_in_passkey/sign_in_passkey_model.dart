import '/flutter_flow/flutter_flow_util.dart';
import 'sign_in_passkey_widget.dart' show SignInPasskeyWidget;
import 'package:flutter/material.dart';

class SignInPasskeyModel extends FlutterFlowModel<SignInPasskeyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
