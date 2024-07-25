import '/flutter_flow/flutter_flow_util.dart';
import '/pages/auth/components/dashboard/issues_number_mobile_card/issues_number_mobile_card_widget.dart';
import 'open_issues_numbers_mobile_widget.dart'
    show OpenIssuesNumbersMobileWidget;
import 'package:flutter/material.dart';

class OpenIssuesNumbersMobileModel
    extends FlutterFlowModel<OpenIssuesNumbersMobileWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for IssuesNumberMobileCard component.
  late IssuesNumberMobileCardModel issuesNumberMobileCardModel1;
  // Model for IssuesNumberMobileCard component.
  late IssuesNumberMobileCardModel issuesNumberMobileCardModel2;
  // Model for IssuesNumberMobileCard component.
  late IssuesNumberMobileCardModel issuesNumberMobileCardModel3;
  // Model for IssuesNumberMobileCard component.
  late IssuesNumberMobileCardModel issuesNumberMobileCardModel4;

  @override
  void initState(BuildContext context) {
    issuesNumberMobileCardModel1 =
        createModel(context, () => IssuesNumberMobileCardModel());
    issuesNumberMobileCardModel2 =
        createModel(context, () => IssuesNumberMobileCardModel());
    issuesNumberMobileCardModel3 =
        createModel(context, () => IssuesNumberMobileCardModel());
    issuesNumberMobileCardModel4 =
        createModel(context, () => IssuesNumberMobileCardModel());
  }

  @override
  void dispose() {
    issuesNumberMobileCardModel1.dispose();
    issuesNumberMobileCardModel2.dispose();
    issuesNumberMobileCardModel3.dispose();
    issuesNumberMobileCardModel4.dispose();
  }
}
