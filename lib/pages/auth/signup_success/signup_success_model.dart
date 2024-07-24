import '/flutter_flow/flutter_flow_util.dart';
import 'signup_success_widget.dart' show SignupSuccessWidget;
import 'package:flutter/material.dart';

class SignupSuccessModel extends FlutterFlowModel<SignupSuccessWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
