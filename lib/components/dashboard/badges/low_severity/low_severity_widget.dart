import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'low_severity_model.dart';
export 'low_severity_model.dart';

class LowSeverityWidget extends StatefulWidget {
  const LowSeverityWidget({
    super.key,
    required this.number,
  });

  final double? number;

  @override
  State<LowSeverityWidget> createState() => _LowSeverityWidgetState();
}

class _LowSeverityWidgetState extends State<LowSeverityWidget> {
  late LowSeverityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LowSeverityModel());

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
        color: FlutterFlowTheme.of(context).utilityBlue50,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).utilityBlue200,
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
              width: 7.0,
              height: 7.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).accent4,
                shape: BoxShape.circle,
              ),
            ),
            Text(
              valueOrDefault<String>(
                widget.number?.toString(),
                '9.8',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    color: FlutterFlowTheme.of(context).utilityBlue700,
                    letterSpacing: 0.0,
                  ),
            ),
          ].divide(const SizedBox(width: 4.0)),
        ),
      ),
    );
  }
}
