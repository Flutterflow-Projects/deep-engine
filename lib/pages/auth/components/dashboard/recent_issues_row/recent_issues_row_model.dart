import '/flutter_flow/flutter_flow_util.dart';
import '/pages/auth/components/dashboard/badges/critical_severity/critical_severity_widget.dart';
import '/pages/auth/components/dashboard/badges/location_production/location_production_widget.dart';
import '/pages/auth/components/dashboard/badges/location_test_env/location_test_env_widget.dart';
import '/pages/auth/components/dashboard/badges/low_severity/low_severity_widget.dart';
import '/pages/auth/components/dashboard/badges/medium_severity/medium_severity_widget.dart';
import '/pages/auth/components/dashboard/badges/production/production_widget.dart';
import 'recent_issues_row_widget.dart' show RecentIssuesRowWidget;
import 'package:flutter/material.dart';

class RecentIssuesRowModel extends FlutterFlowModel<RecentIssuesRowWidget> {
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
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // Model for Production component.
  late ProductionModel productionModel;
  // Model for LocationTestEnv component.
  late LocationTestEnvModel locationTestEnvModel;
  // Model for LocationProduction component.
  late LocationProductionModel locationProductionModel;

  @override
  void initState(BuildContext context) {
    criticalSeverityModel = createModel(context, () => CriticalSeverityModel());
    mediumSeverityModel = createModel(context, () => MediumSeverityModel());
    lowSeverityModel = createModel(context, () => LowSeverityModel());
    productionModel = createModel(context, () => ProductionModel());
    locationTestEnvModel = createModel(context, () => LocationTestEnvModel());
    locationProductionModel =
        createModel(context, () => LocationProductionModel());
  }

  @override
  void dispose() {
    criticalSeverityModel.dispose();
    mediumSeverityModel.dispose();
    lowSeverityModel.dispose();
    productionModel.dispose();
    locationTestEnvModel.dispose();
    locationProductionModel.dispose();
  }
}
