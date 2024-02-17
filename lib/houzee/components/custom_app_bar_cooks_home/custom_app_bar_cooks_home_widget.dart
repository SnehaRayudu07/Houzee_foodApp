import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'custom_app_bar_cooks_home_model.dart';
export 'custom_app_bar_cooks_home_model.dart';

class CustomAppBarCooksHomeWidget extends StatefulWidget {
  const CustomAppBarCooksHomeWidget({super.key});

  @override
  State<CustomAppBarCooksHomeWidget> createState() =>
      _CustomAppBarCooksHomeWidgetState();
}

class _CustomAppBarCooksHomeWidgetState
    extends State<CustomAppBarCooksHomeWidget> {
  late CustomAppBarCooksHomeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomAppBarCooksHomeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 60.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondary,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(35.0),
          bottomRight: Radius.circular(35.0),
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(0.0),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('homeUser');
              },
              child: Icon(
                Icons.chevron_left_rounded,
                color: FlutterFlowTheme.of(context).tertiary,
                size: 30.0,
              ),
            ),
          ),
          Flexible(
            child: Align(
              alignment: const AlignmentDirectional(-0.24, 0.0),
              child: Text(
                'Your Kitchen',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).tertiary,
                      fontSize: 18.0,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
