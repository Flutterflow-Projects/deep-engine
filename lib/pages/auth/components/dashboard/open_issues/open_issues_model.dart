import '/flutter_flow/flutter_flow_util.dart';
import '/pages/auth/components/dashboard/recent_issues_row/recent_issues_row_widget.dart';
import 'open_issues_widget.dart' show OpenIssuesWidget;
import 'package:flutter/material.dart';

class OpenIssuesModel extends FlutterFlowModel<OpenIssuesWidget> {
  ///  State fields for stateful widgets in this component.

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
  // Model for RecentIssuesRow component.
  late RecentIssuesRowModel recentIssuesRowModel1;
  // Model for RecentIssuesRow component.
  late RecentIssuesRowModel recentIssuesRowModel2;
  // Model for RecentIssuesRow component.
  late RecentIssuesRowModel recentIssuesRowModel3;

  @override
  void initState(BuildContext context) {
    recentIssuesRowModel1 = createModel(context, () => RecentIssuesRowModel());
    recentIssuesRowModel2 = createModel(context, () => RecentIssuesRowModel());
    recentIssuesRowModel3 = createModel(context, () => RecentIssuesRowModel());
  }

  @override
  void dispose() {
    recentIssuesRowModel1.dispose();
    recentIssuesRowModel2.dispose();
    recentIssuesRowModel3.dispose();
  }
}
