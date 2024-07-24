import '/components/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
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
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered27 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered28 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered29 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered30 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered31 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered32 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered33 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered34 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered35 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered36 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered37 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered38 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered39 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered40 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered41 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered42 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered43 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered44 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered45 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered46 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered47 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered48 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered49 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered50 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered51 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered52 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered53 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered54 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered55 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered56 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered57 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered58 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered59 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered60 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered61 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered62 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered63 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered64 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered65 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered66 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered67 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered68 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered69 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered70 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered71 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered72 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered73 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered74 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered75 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered76 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered77 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered78 = false;
  // Model for sidebar component.
  late SidebarModel sidebarModel;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    sidebarModel.dispose();
  }
}
