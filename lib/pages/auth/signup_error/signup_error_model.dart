import '/flutter_flow/flutter_flow_util.dart';
import 'signup_error_widget.dart' show SignupErrorWidget;
import 'package:flutter/material.dart';

class SignupErrorModel extends FlutterFlowModel<SignupErrorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
