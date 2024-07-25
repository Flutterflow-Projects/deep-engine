import '/flutter_flow/flutter_flow_util.dart';
import '/pages/auth/components/dashboard/issues_number_card/issues_number_card_widget.dart';
import 'open_issues_numbers_widget.dart' show OpenIssuesNumbersWidget;
import 'package:flutter/material.dart';

class OpenIssuesNumbersModel extends FlutterFlowModel<OpenIssuesNumbersWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for IssuesNumberCard component.
  late IssuesNumberCardModel issuesNumberCardModel1;
  // Model for IssuesNumberCard component.
  late IssuesNumberCardModel issuesNumberCardModel2;
  // Model for IssuesNumberCard component.
  late IssuesNumberCardModel issuesNumberCardModel3;
  // Model for IssuesNumberCard component.
  late IssuesNumberCardModel issuesNumberCardModel4;

  @override
  void initState(BuildContext context) {
    issuesNumberCardModel1 =
        createModel(context, () => IssuesNumberCardModel());
    issuesNumberCardModel2 =
        createModel(context, () => IssuesNumberCardModel());
    issuesNumberCardModel3 =
        createModel(context, () => IssuesNumberCardModel());
    issuesNumberCardModel4 =
        createModel(context, () => IssuesNumberCardModel());
  }

  @override
  void dispose() {
    issuesNumberCardModel1.dispose();
    issuesNumberCardModel2.dispose();
    issuesNumberCardModel3.dispose();
    issuesNumberCardModel4.dispose();
  }
}
