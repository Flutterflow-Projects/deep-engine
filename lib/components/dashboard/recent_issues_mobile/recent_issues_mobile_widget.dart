import '/components/dashboard/recent_issues_mobile_card/recent_issues_mobile_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'recent_issues_mobile_model.dart';
export 'recent_issues_mobile_model.dart';

class RecentIssuesMobileWidget extends StatefulWidget {
  const RecentIssuesMobileWidget({super.key});

  @override
  State<RecentIssuesMobileWidget> createState() =>
      _RecentIssuesMobileWidgetState();
}

class _RecentIssuesMobileWidgetState extends State<RecentIssuesMobileWidget> {
  late RecentIssuesMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecentIssuesMobileModel());

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
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 80.0,
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
                ],
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).borderPrimary,
              ),
              wrapWithModel(
                model: _model.recentIssuesMobileCardModel1,
                updateCallback: () => setState(() {}),
                child: const RecentIssuesMobileCardWidget(
                  severity: 'Critical',
                  severityNumber: 9.8,
                  dateTime: 'Feb 25, 2024 at 18:34:22 GMT',
                  description:
                      'OpenSSH X11 Forwarding Security Bypass Vulnerability (Linux)',
                  location: 'Production',
                ),
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).borderPrimary,
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: wrapWithModel(
                  model: _model.recentIssuesMobileCardModel2,
                  updateCallback: () => setState(() {}),
                  child: const RecentIssuesMobileCardWidget(
                    severity: 'High',
                    severityNumber: 7.8,
                    dateTime: 'Feb 25, 2024 at 18:34:22 GMT',
                    description:
                        'Diffie-Hellman Ephemeral Key Exchange DoS Vulnerability (SSH, D(HE)ater)',
                    location: 'Test Env',
                  ),
                ),
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).borderPrimary,
              ),
              wrapWithModel(
                model: _model.recentIssuesMobileCardModel3,
                updateCallback: () => setState(() {}),
                child: const RecentIssuesMobileCardWidget(
                  severity: 'Low',
                  severityNumber: 3.6,
                  dateTime: 'Feb 25, 2024 at 18:34:22 GMT',
                  description: 'ICMP Timestamp Reply Information Disclosure',
                  location: 'Some App',
                ),
              ),
            ],
          ),
        ),
      ].divide(const SizedBox(height: 16.0)).addToStart(const SizedBox(height: 16.0)),
    );
  }
}
