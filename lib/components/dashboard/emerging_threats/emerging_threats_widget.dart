import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'emerging_threats_model.dart';
export 'emerging_threats_model.dart';

class EmergingThreatsWidget extends StatefulWidget {
  const EmergingThreatsWidget({super.key});

  @override
  State<EmergingThreatsWidget> createState() => _EmergingThreatsWidgetState();
}

class _EmergingThreatsWidgetState extends State<EmergingThreatsWidget> {
  late EmergingThreatsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmergingThreatsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Emerging threats',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Inter',
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'CVE-2024-27198',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
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
                              'Read more',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: _model.mouseRegionHovered1
                                        ? FlutterFlowTheme.of(context).textHover
                                        : FlutterFlowTheme.of(context)
                                            .textTertiary600,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            FaIcon(
                              FontAwesomeIcons.externalLinkAlt,
                              color: _model.mouseRegionHovered1
                                  ? FlutterFlowTheme.of(context).textHover
                                  : FlutterFlowTheme.of(context)
                                      .textTertiary600,
                              size: 20.0,
                            ),
                          ].divide(const SizedBox(width: 8.0)),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'JetBrains TeamCity contains an\nauthentication bypass vulnarability that...',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).textTertiary600,
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    '9.8 Critical',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).accent4,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ].divide(const SizedBox(height: 8.0)),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'CVE-2024-27198',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
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
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Read more',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: _model.mouseRegionHovered2
                                        ? FlutterFlowTheme.of(context).textHover
                                        : FlutterFlowTheme.of(context)
                                            .textTertiary600,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            FaIcon(
                              FontAwesomeIcons.externalLinkAlt,
                              color: _model.mouseRegionHovered2
                                  ? FlutterFlowTheme.of(context).textHover
                                  : FlutterFlowTheme.of(context)
                                      .textTertiary600,
                              size: 20.0,
                            ),
                          ].divide(const SizedBox(width: 8.0)),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'JetBrains TeamCity contains an\nauthentication bypass vulnarability that...',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).textTertiary600,
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    '9.8 Critical',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).accent4,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ].divide(const SizedBox(height: 8.0)),
              ),
            ].divide(const SizedBox(height: 32.0)),
          ),
        ].divide(const SizedBox(height: 16.0)),
      ),
    );
  }
}
