import '/components/dashboard/recent_issues_row/recent_issues_row_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'open_issues_model.dart';
export 'open_issues_model.dart';

class OpenIssuesWidget extends StatefulWidget {
  const OpenIssuesWidget({super.key});

  @override
  State<OpenIssuesWidget> createState() => _OpenIssuesWidgetState();
}

class _OpenIssuesWidgetState extends State<OpenIssuesWidget> {
  late OpenIssuesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OpenIssuesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 24.0, 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recent issues',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ].divide(const SizedBox(height: 4.0)),
                ),
              ),
              MouseRegion(
                opaque: false,
                cursor: MouseCursor.defer ?? MouseCursor.defer,
                onEnter: ((event) async {
                  setState(() => _model.mouseRegionHovered1 = true);
                }),
                onExit: ((event) async {
                  setState(() => _model.mouseRegionHovered1 = false);
                }),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'See all',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: _model.mouseRegionHovered1
                                ? FlutterFlowTheme.of(context).textHover
                                : FlutterFlowTheme.of(context).textTertiary600,
                            letterSpacing: 0.0,
                          ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: _model.mouseRegionHovered1
                          ? FlutterFlowTheme.of(context).textHover
                          : FlutterFlowTheme.of(context).textTertiary600,
                      size: 15.0,
                    ),
                  ].divide(const SizedBox(width: 8.0)),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 24.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 100.0,
                    decoration: const BoxDecoration(),
                    child: MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered2 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered2 = false);
                      }),
                      child: Text(
                        'Severity',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: _model.mouseRegionHovered2
                                  ? FlutterFlowTheme.of(context).textHover
                                  : FlutterFlowTheme.of(context)
                                      .textTertiary600,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Container(
                    width: 370.0,
                    decoration: const BoxDecoration(),
                    child: MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered3 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered3 = false);
                      }),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Description',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: _model.mouseRegionHovered3
                                        ? FlutterFlowTheme.of(context).textHover
                                        : FlutterFlowTheme.of(context)
                                            .textTertiary600,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150.0,
                    decoration: const BoxDecoration(),
                    child: MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered4 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered4 = false);
                      }),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Date',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: _model.mouseRegionHovered4
                                        ? FlutterFlowTheme.of(context).textHover
                                        : FlutterFlowTheme.of(context)
                                            .textTertiary600,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100.0,
                    decoration: const BoxDecoration(),
                    child: MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered5 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered5 = false);
                      }),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Location',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: _model.mouseRegionHovered5
                                        ? FlutterFlowTheme.of(context).textHover
                                        : FlutterFlowTheme.of(context)
                                            .textTertiary600,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).borderPrimary,
              ),
              wrapWithModel(
                model: _model.recentIssuesRowModel1,
                updateCallback: () => setState(() {}),
                child: const RecentIssuesRowWidget(
                  severity: 'Critical',
                  severityNumber: 9.8,
                  description:
                      'OpenSSH X11 Forwarding Security Bypass Vulnerability (Linux)',
                  date: 'Feb 25, 2024',
                  time: 'at 18:34:22 GMT',
                  location: 'Production',
                ),
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).borderPrimary,
              ),
              wrapWithModel(
                model: _model.recentIssuesRowModel2,
                updateCallback: () => setState(() {}),
                child: const RecentIssuesRowWidget(
                  severity: 'High',
                  severityNumber: 7.8,
                  description:
                      'Diffie-Hellman Ephemeral Key Exchange DoS Vulnerability (SSH, D(HE)ater)',
                  date: 'Feb 25, 2024',
                  time: 'at 18:34:22 GMT',
                  location: 'TestEnv',
                ),
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).borderPrimary,
              ),
              wrapWithModel(
                model: _model.recentIssuesRowModel3,
                updateCallback: () => setState(() {}),
                child: const RecentIssuesRowWidget(
                  severity: 'Low',
                  severityNumber: 3.6,
                  description: 'ICMP Timestamp Reply Information Disclosure',
                  date: 'Feb 25, 2024',
                  time: 'at 18:34:22 GMT',
                  location: 'SomeApp',
                ),
              ),
            ],
          ),
        ),
      ].divide(const SizedBox(height: 16.0)).addToStart(const SizedBox(height: 16.0)),
    );
  }
}
