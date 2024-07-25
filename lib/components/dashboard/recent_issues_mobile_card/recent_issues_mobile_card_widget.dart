import '/components/dashboard/badges/critical_severity/critical_severity_widget.dart';
import '/components/dashboard/badges/low_severity/low_severity_widget.dart';
import '/components/dashboard/badges/medium_severity/medium_severity_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'recent_issues_mobile_card_model.dart';
export 'recent_issues_mobile_card_model.dart';

class RecentIssuesMobileCardWidget extends StatefulWidget {
  const RecentIssuesMobileCardWidget({
    super.key,
    required this.severity,
    required this.severityNumber,
    required this.dateTime,
    required this.description,
    required this.location,
  });

  final String? severity;
  final double? severityNumber;
  final String? dateTime;
  final String? description;
  final String? location;

  @override
  State<RecentIssuesMobileCardWidget> createState() =>
      _RecentIssuesMobileCardWidgetState();
}

class _RecentIssuesMobileCardWidgetState
    extends State<RecentIssuesMobileCardWidget> {
  late RecentIssuesMobileCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecentIssuesMobileCardModel());

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
      mainAxisSize: MainAxisSize.min,
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
            width: 80.0,
            height: 70.0,
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
            width: 251.0,
            decoration: BoxDecoration(
              color: _model.mouseRegionHovered2
                  ? FlutterFlowTheme.of(context).hoverBg
                  : const Color(0x00000000),
            ),
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1.0, -1.0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.dateTime,
                        'Feb 25, 2024 at 18:34:22 GMT',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).textTertiary600,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.description,
                        'OpenSSH X11 Forwarding Security Bypass Vulnerability (Linux)',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.location,
                        'Production',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: () {
                              if (widget.location == 'Production') {
                                return FlutterFlowTheme.of(context)
                                    .utilitySuccess700;
                              } else if (widget.location == 'Test Env') {
                                return FlutterFlowTheme.of(context)
                                    .utilityBlue700;
                              } else {
                                return FlutterFlowTheme.of(context)
                                    .utilityPink700;
                              }
                            }(),
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              ].divide(const SizedBox(height: 4.0)),
            ),
          ),
        ),
      ],
    );
  }
}
