import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'custom_app_barforgotpass_model.dart';
export 'custom_app_barforgotpass_model.dart';

class CustomAppBarforgotpassWidget extends StatefulWidget {
  const CustomAppBarforgotpassWidget({super.key});

  @override
  State<CustomAppBarforgotpassWidget> createState() =>
      _CustomAppBarforgotpassWidgetState();
}

class _CustomAppBarforgotpassWidgetState
    extends State<CustomAppBarforgotpassWidget> {
  late CustomAppBarforgotpassModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomAppBarforgotpassModel());
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
        color: FlutterFlowTheme.of(context).tertiary,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(40.0),
          bottomRight: Radius.circular(40.0),
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
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
                context.safePop();
              },
              child: Icon(
                Icons.chevron_left_rounded,
                color: FlutterFlowTheme.of(context).secondary,
                size: 30.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
