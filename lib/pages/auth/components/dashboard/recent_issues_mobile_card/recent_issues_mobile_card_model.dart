import '/flutter_flow/flutter_flow_util.dart';
import '/pages/auth/components/dashboard/badges/critical_severity/critical_severity_widget.dart';
import '/pages/auth/components/dashboard/badges/low_severity/low_severity_widget.dart';
import '/pages/auth/components/dashboard/badges/medium_severity/medium_severity_widget.dart';
import 'recent_issues_mobile_card_widget.dart'
    show RecentIssuesMobileCardWidget;
import 'package:flutter/material.dart';

class RecentIssuesMobileCardModel
    extends FlutterFlowModel<RecentIssuesMobileCardWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // Model for CriticalSeverity component.
  late CriticalSeverityModel criticalSeverityModel;
  // Model for MediumSeverity component.
  late MediumSeverityModel mediumSeverityModel;
  // Model for LowSeverity component.
  late LowSeverityModel lowSeverityModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;

  @override
  void initState(BuildContext context) {
    criticalSeverityModel = createModel(context, () => CriticalSeverityModel());
    mediumSeverityModel = createModel(context, () => MediumSeverityModel());
    lowSeverityModel = createModel(context, () => LowSeverityModel());
  }

  @override
  void dispose() {
    criticalSeverityModel.dispose();
    mediumSeverityModel.dispose();
    lowSeverityModel.dispose();
  }
}
