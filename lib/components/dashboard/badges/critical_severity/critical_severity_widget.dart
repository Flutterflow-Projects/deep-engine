import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'critical_severity_model.dart';
export 'critical_severity_model.dart';

class CriticalSeverityWidget extends StatefulWidget {
  const CriticalSeverityWidget({
    super.key,
    required this.number,
  });

  final double? number;

  @override
  State<CriticalSeverityWidget> createState() => _CriticalSeverityWidgetState();
}

class _CriticalSeverityWidgetState extends State<CriticalSeverityWidget> {
  late CriticalSeverityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CriticalSeverityModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).utilityError50,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).utilityError200,
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).accent1,
                shape: BoxShape.circle,
              ),
            ),
            Text(
              valueOrDefault<String>(
                widget.number?.toString(),
                '9.8',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: FlutterFlowTheme.of(context).utilityError700,
                    letterSpacing: 0.0,
                  ),
            ),
          ].divide(const SizedBox(width: 4.0)),
        ),
      ),
    );
  }
}
