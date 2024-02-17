import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'trans3_model.dart';
export 'trans3_model.dart';

class Trans3Widget extends StatefulWidget {
  const Trans3Widget({super.key});

  @override
  State<Trans3Widget> createState() => _Trans3WidgetState();
}

class _Trans3WidgetState extends State<Trans3Widget> {
  late Trans3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Trans3Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed('AfterVerificationProfile');
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFE9DBB6),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Lottie.asset(
                    'assets/lottie_animations/cookhatlot3.json',
                    width: 225.0,
                    height: 247.0,
                    fit: BoxFit.cover,
                    animate: true,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
