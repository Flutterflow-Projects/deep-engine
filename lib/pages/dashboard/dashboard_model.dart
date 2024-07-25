import '/flutter_flow/flutter_flow_util.dart';
import '/pages/auth/components/dashboard/emerging_threats/emerging_threats_widget.dart';
import '/pages/auth/components/dashboard/emerging_threats_mobile/emerging_threats_mobile_widget.dart';
import '/pages/auth/components/dashboard/header/header_widget.dart';
import '/pages/auth/components/dashboard/header_mobile/header_mobile_widget.dart';
import '/pages/auth/components/dashboard/monthly_summary/monthly_summary_widget.dart';
import '/pages/auth/components/dashboard/monthly_summary_mobile/monthly_summary_mobile_widget.dart';
import '/pages/auth/components/dashboard/open_issues/open_issues_widget.dart';
import '/pages/auth/components/dashboard/open_issues_numbers/open_issues_numbers_widget.dart';
import '/pages/auth/components/dashboard/open_issues_numbers_mobile/open_issues_numbers_mobile_widget.dart';
import '/pages/auth/components/dashboard/recent_issues_mobile/recent_issues_mobile_widget.dart';
import '/pages/auth/components/dashboard/recent_scans/recent_scans_widget.dart';
import '/pages/auth/components/dashboard/recent_scans_mobile/recent_scans_mobile_widget.dart';
import '/pages/auth/components/dashboard/risk_trend/risk_trend_widget.dart';
import '/pages/auth/components/dashboard/risk_trend_mobile/risk_trend_mobile_widget.dart';
import '/pages/auth/components/sidebar/sidebar_widget.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  Local state fields for this page.

  bool issuesClicked = true;

  bool targetClicked = true;

  bool scansClicked = true;

  bool schedulesClicked = true;

  bool reportingClicked = true;

  bool searchbarActive = true;

  bool activeMobileMenu = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered7 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered8 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered9 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered10 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered11 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered12 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered13 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered14 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered15 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered16 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered17 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered18 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered19 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered20 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered21 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered22 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered23 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered24 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered25 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered26 = false;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for HeaderMobile component.
  late HeaderMobileModel headerMobileModel;
  // Model for OpenIssuesNumbers component.
  late OpenIssuesNumbersModel openIssuesNumbersModel;
  // Model for OpenIssues component.
  late OpenIssuesModel openIssuesModel;
  // Model for RiskTrend component.
  late RiskTrendModel riskTrendModel;
  // Model for MonthlySummary component.
  late MonthlySummaryModel monthlySummaryModel;
  // Model for RecentScans component.
  late RecentScansModel recentScansModel;
  // Model for EmergingThreats component.
  late EmergingThreatsModel emergingThreatsModel;
  // Model for OpenIssuesNumbersMobile component.
  late OpenIssuesNumbersMobileModel openIssuesNumbersMobileModel;
  // Model for RecentIssuesMobile component.
  late RecentIssuesMobileModel recentIssuesMobileModel;
  // Model for RiskTrendMobile component.
  late RiskTrendMobileModel riskTrendMobileModel;
  // Model for MonthlySummaryMobile component.
  late MonthlySummaryMobileModel monthlySummaryMobileModel;
  // Model for RecentScansMobile component.
  late RecentScansMobileModel recentScansMobileModel;
  // Model for EmergingThreatsMobile component.
  late EmergingThreatsMobileModel emergingThreatsMobileModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered27 = false;
  // Model for sidebar component.
  late SidebarModel sidebarModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    headerMobileModel = createModel(context, () => HeaderMobileModel());
    openIssuesNumbersModel =
        createModel(context, () => OpenIssuesNumbersModel());
    openIssuesModel = createModel(context, () => OpenIssuesModel());
    riskTrendModel = createModel(context, () => RiskTrendModel());
    monthlySummaryModel = createModel(context, () => MonthlySummaryModel());
    recentScansModel = createModel(context, () => RecentScansModel());
    emergingThreatsModel = createModel(context, () => EmergingThreatsModel());
    openIssuesNumbersMobileModel =
        createModel(context, () => OpenIssuesNumbersMobileModel());
    recentIssuesMobileModel =
        createModel(context, () => RecentIssuesMobileModel());
    riskTrendMobileModel = createModel(context, () => RiskTrendMobileModel());
    monthlySummaryMobileModel =
        createModel(context, () => MonthlySummaryMobileModel());
    recentScansMobileModel =
        createModel(context, () => RecentScansMobileModel());
    emergingThreatsMobileModel =
        createModel(context, () => EmergingThreatsMobileModel());
    sidebarModel = createModel(context, () => SidebarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
    headerMobileModel.dispose();
    openIssuesNumbersModel.dispose();
    openIssuesModel.dispose();
    riskTrendModel.dispose();
    monthlySummaryModel.dispose();
    recentScansModel.dispose();
    emergingThreatsModel.dispose();
    openIssuesNumbersMobileModel.dispose();
    recentIssuesMobileModel.dispose();
    riskTrendMobileModel.dispose();
    monthlySummaryMobileModel.dispose();
    recentScansMobileModel.dispose();
    emergingThreatsMobileModel.dispose();
    sidebarModel.dispose();
  }
}
