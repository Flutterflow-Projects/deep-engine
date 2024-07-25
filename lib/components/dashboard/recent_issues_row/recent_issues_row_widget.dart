import '/components/dashboard/badges/critical_severity/critical_severity_widget.dart';
import '/components/dashboard/badges/location_production/location_production_widget.dart';
import '/components/dashboard/badges/location_test_env/location_test_env_widget.dart';
import '/components/dashboard/badges/low_severity/low_severity_widget.dart';
import '/components/dashboard/badges/medium_severity/medium_severity_widget.dart';
import '/components/dashboard/badges/production/production_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'recent_issues_row_model.dart';
export 'recent_issues_row_model.dart';

class RecentIssuesRowWidget extends StatefulWidget {
  const RecentIssuesRowWidget({
    super.key,
    required this.severity,
    required this.severityNumber,
    required this.description,
    required this.date,
    required this.time,
    required this.location,
  });

  final String? severity;
  final double? severityNumber;
  final String? description;
  final String? date;
  final String? time;
  final String? location;

  @override
  State<RecentIssuesRowWidget> createState() => _RecentIssuesRowWidgetState();
}

class _RecentIssuesRowWidgetState extends State<RecentIssuesRowWidget> {
  late RecentIssuesRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecentIssuesRowModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        MouseRegion(
          opaque: false,
          cursor: MouseCursor.defer ?? MouseCursor.defer,
          onEnter: ((event) async {
            setState(() => _model.mouseRegionHovered1 = true);
          }),
          onExit: ((event) async {
            setState(() => _model.mouseRegionHovered1 = false);
          }),
          child: Container(
            width: 100.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: _model.mouseRegionHovered1
                  ? FlutterFlowTheme.of(context).hoverBg
                  : const Color(0x00000000),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (widget.severity == 'Critical')
                  wrapWithModel(
                    model: _model.criticalSeverityModel,
                    updateCallback: () => setState(() {}),
                    child: CriticalSeverityWidget(
                      number: widget.severityNumber!,
                    ),
                  ),
                if (widget.severity == 'High')
                  wrapWithModel(
                    model: _model.mediumSeverityModel,
                    updateCallback: () => setState(() {}),
                    child: MediumSeverityWidget(
                      number: widget.severityNumber!,
                    ),
                  ),
                if (widget.severity == 'Low')
                  wrapWithModel(
                    model: _model.lowSeverityModel,
                    updateCallback: () => setState(() {}),
                    child: LowSeverityWidget(
                      number: widget.severityNumber!,
                    ),
                  ),
              ],
            ),
          ),
        ),
        MouseRegion(
          opaque: false,
          cursor: MouseCursor.defer ?? MouseCursor.defer,
          onEnter: ((event) async {
            setState(() => _model.mouseRegionHovered2 = true);
          }),
          onExit: ((event) async {
            setState(() => _model.mouseRegionHovered2 = false);
          }),
          child: Container(
            width: 371.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: _model.mouseRegionHovered2
                  ? FlutterFlowTheme.of(context).hoverBg
                  : const Color(0x00000000),
            ),
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.description,
                      'OpenSSH X11 Forwarding Security BypassVulnerability (Linux)',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
        MouseRegion(
          opaque: false,
          cursor: MouseCursor.defer ?? MouseCursor.defer,
          onEnter: ((event) async {
            setState(() => _model.mouseRegionHovered3 = true);
          }),
          onExit: ((event) async {
            setState(() => _model.mouseRegionHovered3 = false);
          }),
          child: Container(
            width: 146.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: _model.mouseRegionHovered3
                  ? FlutterFlowTheme.of(context).hoverBg
                  : const Color(0x00000000),
            ),
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.date,
                      'Feb 25, 2024',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.time,
                      'at 18:34:22 GMT',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).textTertiary600,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
        MouseRegion(
          opaque: false,
          cursor: MouseCursor.defer ?? MouseCursor.defer,
          onEnter: ((event) async {
            setState(() => _model.mouseRegionHovered4 = true);
          }),
          onExit: ((event) async {
            setState(() => _model.mouseRegionHovered4 = false);
          }),
          child: Container(
            width: 101.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: _model.mouseRegionHovered4
                  ? FlutterFlowTheme.of(context).hoverBg
                  : const Color(0x00000000),
            ),
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (widget.location == 'Production')
                  wrapWithModel(
                    model: _model.productionModel,
                    updateCallback: () => setState(() {}),
                    child: const ProductionWidget(),
                  ),
                if (widget.location == 'TestEnv')
                  wrapWithModel(
                    model: _model.locationTestEnvModel,
                    updateCallback: () => setState(() {}),
                    child: const LocationTestEnvWidget(),
                  ),
                if (widget.location == 'SomeApp')
                  wrapWithModel(
                    model: _model.locationProductionModel,
                    updateCallback: () => setState(() {}),
                    child: const LocationProductionWidget(),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
