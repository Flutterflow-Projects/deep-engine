import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/auth/components/dashboard/issues_number_mobile_card/issues_number_mobile_card_widget.dart';
import 'package:flutter/material.dart';
import 'open_issues_numbers_mobile_model.dart';
export 'open_issues_numbers_mobile_model.dart';

class OpenIssuesNumbersMobileWidget extends StatefulWidget {
  const OpenIssuesNumbersMobileWidget({super.key});

  @override
  State<OpenIssuesNumbersMobileWidget> createState() =>
      _OpenIssuesNumbersMobileWidgetState();
}

class _OpenIssuesNumbersMobileWidgetState
    extends State<OpenIssuesNumbersMobileWidget> {
  late OpenIssuesNumbersMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OpenIssuesNumbersMobileModel());

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
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 24.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Open issues',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Affected targets: ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .textTertiary600,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        Text(
                          '72',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                decoration: TextDecoration.underline,
                              ),
                        ),
                      ],
                    ),
                  ].divide(const SizedBox(height: 4.0)),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.error_outline_rounded,
                    color: FlutterFlowTheme.of(context).error,
                    size: 24.0,
                  ),
                  Text(
                    'Action needed',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).error,
                          letterSpacing: 0.0,
                        ),
                  ),
                ].divide(const SizedBox(width: 4.0)),
              ),
            ],
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: wrapWithModel(
                      model: _model.issuesNumberMobileCardModel1,
                      updateCallback: () => setState(() {}),
                      child: const IssuesNumberMobileCardWidget(
                        type: 'Critical',
                        number: 2,
                      ),
                    ),
                  ),
                  Flexible(
                    child: wrapWithModel(
                      model: _model.issuesNumberMobileCardModel2,
                      updateCallback: () => setState(() {}),
                      child: const IssuesNumberMobileCardWidget(
                        type: 'High',
                        number: 12,
                      ),
                    ),
                  ),
                ]
                    .divide(const SizedBox(width: 8.0))
                    .addToStart(const SizedBox(width: 16.0))
                    .addToEnd(const SizedBox(width: 16.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: wrapWithModel(
                      model: _model.issuesNumberMobileCardModel3,
                      updateCallback: () => setState(() {}),
                      child: const IssuesNumberMobileCardWidget(
                        type: 'Medium',
                        number: 36,
                      ),
                    ),
                  ),
                  Flexible(
                    child: wrapWithModel(
                      model: _model.issuesNumberMobileCardModel4,
                      updateCallback: () => setState(() {}),
                      child: const IssuesNumberMobileCardWidget(
                        type: 'Low',
                        number: 104,
                      ),
                    ),
                  ),
                ]
                    .divide(const SizedBox(width: 8.0))
                    .addToStart(const SizedBox(width: 16.0))
                    .addToEnd(const SizedBox(width: 16.0)),
              ),
            ),
          ].divide(const SizedBox(height: 4.0)),
        ),
      ].divide(const SizedBox(height: 16.0)).addToStart(const SizedBox(height: 16.0)),
    );
  }
}
