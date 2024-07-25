import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'risk_trend_model.dart';
export 'risk_trend_model.dart';

class RiskTrendWidget extends StatefulWidget {
  const RiskTrendWidget({super.key});

  @override
  State<RiskTrendWidget> createState() => _RiskTrendWidgetState();
}

class _RiskTrendWidgetState extends State<RiskTrendWidget> {
  late RiskTrendModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RiskTrendModel());

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
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Risk trend',
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
              SizedBox(
                width: 350.0,
                height: 60.0,
                child: custom_widgets.ChartTabs(
                  width: 350.0,
                  height: 60.0,
                  activeTextColor: FlutterFlowTheme.of(context).secondaryText,
                  activeTabBg: FlutterFlowTheme.of(context).btnSecondaryBg,
                  textColor: FlutterFlowTheme.of(context).textTertiary600,
                  borderColor: FlutterFlowTheme.of(context).borderPrimary,
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
              SizedBox(
                width: double.infinity,
                height: 220.0,
                child: custom_widgets.CustomChart(
                  width: double.infinity,
                  height: 220.0,
                  textColor: FlutterFlowTheme.of(context).textTertiary600,
                  borderColor: FlutterFlowTheme.of(context).borderPrimary,
                ),
              ),
            ].divide(const SizedBox(height: 16.0)),
          ),
        ),
      ].divide(const SizedBox(height: 16.0)).addToStart(const SizedBox(height: 16.0)),
    );
  }
}
