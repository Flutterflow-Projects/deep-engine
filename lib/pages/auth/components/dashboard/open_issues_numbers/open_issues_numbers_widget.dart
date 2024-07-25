import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/auth/components/dashboard/issues_number_card/issues_number_card_widget.dart';
import 'package:flutter/material.dart';
import 'open_issues_numbers_model.dart';
export 'open_issues_numbers_model.dart';

class OpenIssuesNumbersWidget extends StatefulWidget {
  const OpenIssuesNumbersWidget({super.key});

  @override
  State<OpenIssuesNumbersWidget> createState() =>
      _OpenIssuesNumbersWidgetState();
}

class _OpenIssuesNumbersWidgetState extends State<OpenIssuesNumbersWidget> {
  late OpenIssuesNumbersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OpenIssuesNumbersModel());

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
                  mainAxisSize: MainAxisSize.max,
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
        Align(
          alignment: const AlignmentDirectional(-1.0, 0.0),
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: wrapWithModel(
                      model: _model.issuesNumberCardModel1,
                      updateCallback: () => setState(() {}),
                      child: const IssuesNumberCardWidget(
                        type: 'Critical',
                        number: 2,
                      ),
                    ),
                  ),
                  Flexible(
                    child: wrapWithModel(
                      model: _model.issuesNumberCardModel2,
                      updateCallback: () => setState(() {}),
                      child: const IssuesNumberCardWidget(
                        type: 'High',
                        number: 12,
                      ),
                    ),
                  ),
                  Flexible(
                    child: wrapWithModel(
                      model: _model.issuesNumberCardModel3,
                      updateCallback: () => setState(() {}),
                      child: const IssuesNumberCardWidget(
                        type: 'Medium',
                        number: 36,
                      ),
                    ),
                  ),
                  Flexible(
                    child: wrapWithModel(
                      model: _model.issuesNumberCardModel4,
                      updateCallback: () => setState(() {}),
                      child: const IssuesNumberCardWidget(
                        type: 'Low',
                        number: 104,
                      ),
                    ),
                  ),
                ]
                    .divide(const SizedBox(width: 16.0))
                    .addToStart(const SizedBox(width: 16.0))
                    .addToEnd(const SizedBox(width: 16.0)),
              ),
            ),
          ),
        ),
      ].divide(const SizedBox(height: 16.0)).addToStart(const SizedBox(height: 16.0)),
    );
  }
}
