import '/flutter_flow/flutter_flow_util.dart';
import 'create_an_account_passkey_widget.dart'
    show CreateAnAccountPasskeyWidget;
import 'package:flutter/material.dart';

class CreateAnAccountPasskeyModel
    extends FlutterFlowModel<CreateAnAccountPasskeyWidget> {
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
