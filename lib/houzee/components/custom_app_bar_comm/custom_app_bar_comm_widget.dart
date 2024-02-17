import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'custom_app_bar_comm_model.dart';
export 'custom_app_bar_comm_model.dart';

class CustomAppBarCommWidget extends StatefulWidget {
  const CustomAppBarCommWidget({super.key});

  @override
  State<CustomAppBarCommWidget> createState() => _CustomAppBarCommWidgetState();
}

class _CustomAppBarCommWidgetState extends State<CustomAppBarCommWidget> {
  late CustomAppBarCommModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomAppBarCommModel());
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
        color: FlutterFlowTheme.of(context).alternate,
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
                context.safePop();
              },
              child: Icon(
                Icons.chevron_left_rounded,
                color: FlutterFlowTheme.of(context).tertiary,
                size: 30.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 0.0, 0.0),
            child: Text(
              'Cooking Community',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Outfit',
                    color: FlutterFlowTheme.of(context).tertiary,
                    fontSize: 18.0,
                  ),
            ),
          ),
          Flexible(
            child: Align(
              alignment: const AlignmentDirectional(0.4, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    'createPost',
                    queryParameters: {
                      'createPost': serializeParam(
                        currentUserReference,
                        ParamType.DocumentReference,
                      ),
                    }.withoutNulls,
                  );
                },
                child: Icon(
                  Icons.add_box_rounded,
                  color: FlutterFlowTheme.of(context).tertiary,
                  size: 26.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
