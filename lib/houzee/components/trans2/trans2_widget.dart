import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'trans2_model.dart';
export 'trans2_model.dart';

class Trans2Widget extends StatefulWidget {
  const Trans2Widget({super.key});

  @override
  State<Trans2Widget> createState() => _Trans2WidgetState();
}

class _Trans2WidgetState extends State<Trans2Widget> {
  late Trans2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Trans2Model());
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
        backgroundColor: const Color(0xFFF1DCBD),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Lottie.asset(
                    'assets/lottie_animations/Delivery_Boy.json',
                    width: 338.0,
                    height: 345.0,
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
