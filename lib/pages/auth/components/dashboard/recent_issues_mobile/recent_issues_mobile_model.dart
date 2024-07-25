import '/flutter_flow/flutter_flow_util.dart';
import '/pages/auth/components/dashboard/recent_issues_mobile_card/recent_issues_mobile_card_widget.dart';
import 'recent_issues_mobile_widget.dart' show RecentIssuesMobileWidget;
import 'package:flutter/material.dart';

class RecentIssuesMobileModel
    extends FlutterFlowModel<RecentIssuesMobileWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // Model for RecentIssuesMobileCard component.
  late RecentIssuesMobileCardModel recentIssuesMobileCardModel1;
  // Model for RecentIssuesMobileCard component.
  late RecentIssuesMobileCardModel recentIssuesMobileCardModel2;
  // Model for RecentIssuesMobileCard component.
  late RecentIssuesMobileCardModel recentIssuesMobileCardModel3;

  @override
  void initState(BuildContext context) {
    recentIssuesMobileCardModel1 =
        createModel(context, () => RecentIssuesMobileCardModel());
    recentIssuesMobileCardModel2 =
        createModel(context, () => RecentIssuesMobileCardModel());
    recentIssuesMobileCardModel3 =
        createModel(context, () => RecentIssuesMobileCardModel());
  }

  @override
  void dispose() {
    recentIssuesMobileCardModel1.dispose();
    recentIssuesMobileCardModel2.dispose();
    recentIssuesMobileCardModel3.dispose();
  }
}
