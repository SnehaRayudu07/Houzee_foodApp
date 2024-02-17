import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/houzee/components/addto_menu/addto_menu_widget.dart';
import '/houzee/components/change_cook_details/change_cook_details_widget.dart';
import '/houzee/components/custom_app_bar_cooks_home/custom_app_bar_cooks_home_widget.dart';
import '/houzee/components/navigation_bar_user/navigation_bar_user_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'cooks_home_page_model.dart';
export 'cooks_home_page_model.dart';

class CooksHomePageWidget extends StatefulWidget {
  const CooksHomePageWidget({
    super.key,
    this.menuItems,
  });

  final DocumentReference? menuItems;

  @override
  State<CooksHomePageWidget> createState() => _CooksHomePageWidgetState();
}

class _CooksHomePageWidgetState extends State<CooksHomePageWidget>
    with TickerProviderStateMixin {
  late CooksHomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'iconButtonOnPageLoadAnimation1': AnimationInfo(
      reverse: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 10.ms,
          duration: 1000.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.3, 1.3),
        ),
      ],
    ),
    'iconButtonOnPageLoadAnimation2': AnimationInfo(
      reverse: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 10.ms,
          duration: 1000.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.3, 1.3),
        ),
      ],
    ),
    'iconButtonOnPageLoadAnimation3': AnimationInfo(
      reverse: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 10.ms,
          duration: 1000.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.3, 1.3),
        ),
      ],
    ),
    'iconButtonOnPageLoadAnimation4': AnimationInfo(
      reverse: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 10.ms,
          duration: 1000.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.3, 1.3),
        ),
      ],
    ),
    'iconButtonOnPageLoadAnimation5': AnimationInfo(
      reverse: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 10.ms,
          duration: 1000.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.3, 1.3),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CooksHomePageModel());
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

    return StreamBuilder<List<RestaurantsRecord>>(
      stream: queryRestaurantsRecord(
        queryBuilder: (restaurantsRecord) => restaurantsRecord.where(
          'CooksRef',
          isEqualTo: currentUserReference,
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 30.0,
                height: 30.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
              ),
            ),
          );
        }
        List<RestaurantsRecord> cooksHomePageRestaurantsRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final cooksHomePageRestaurantsRecord =
            cooksHomePageRestaurantsRecordList.isNotEmpty
                ? cooksHomePageRestaurantsRecordList.first
                : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: 350.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/output-onlinepngtools_(1).png',
                            ).image,
                          ),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(60.0),
                            bottomRight: Radius.circular(60.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                        child: SizedBox(
                          height: 290.0,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 50.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 300.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                  ),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 1.0),
                                        child: Lottie.asset(
                                          'assets/lottie_animations/cookCooking_(1).json',
                                          width: 320.0,
                                          height: 260.0,
                                          fit: BoxFit.cover,
                                          animate: true,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.6, -0.26),
                                        child: Container(
                                          width: 54.0,
                                          height: 54.0,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, -1.2),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      const Color(0x00E6AE46),
                                                  borderRadius: 60.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 60.0,
                                                  hoverColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary,
                                                  hoverIconColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  icon: FaIcon(
                                                    FontAwesomeIcons
                                                        .fileContract,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    size: 24.0,
                                                  ),
                                                  onPressed: () {
                                                    print(
                                                        'IconButton pressed ...');
                                                  },
                                                ).animateOnPageLoad(animationsMap[
                                                    'iconButtonOnPageLoadAnimation1']!),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.05, 1.6),
                                                child: Text(
                                                  'Contract',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 10.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.6, -0.26),
                                        child: Container(
                                          width: 54.0,
                                          height: 54.0,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -0.4, -1.2),
                                                child: FlutterFlowIconButton(
                                                  borderRadius: 60.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 60.0,
                                                  hoverColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary,
                                                  hoverIconColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  icon: Icon(
                                                    Icons
                                                        .account_balance_wallet_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    size: 29.0,
                                                  ),
                                                  onPressed: () {
                                                    print(
                                                        'IconButton pressed ...');
                                                  },
                                                ).animateOnPageLoad(animationsMap[
                                                    'iconButtonOnPageLoadAnimation2']!),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.05, 1.6),
                                                child: Text(
                                                  'Wallet',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 10.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -0.8),
                                        child: Container(
                                          width: 54.0,
                                          height: 54.0,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -0.4, -1.3),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      const Color(0x00E6AE46),
                                                  borderRadius: 60.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 60.0,
                                                  hoverColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary,
                                                  hoverIconColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  icon: FaIcon(
                                                    FontAwesomeIcons.solidEdit,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    size: 24.0,
                                                  ),
                                                  onPressed: () async {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return GestureDetector(
                                                          onTap: () => _model
                                                                  .unfocusNode
                                                                  .canRequestFocus
                                                              ? FocusScope.of(
                                                                      context)
                                                                  .requestFocus(
                                                                      _model
                                                                          .unfocusNode)
                                                              : FocusScope.of(
                                                                      context)
                                                                  .unfocus(),
                                                          child: Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child:
                                                                ChangeCookDetailsWidget(
                                                              restRef:
                                                                  cooksHomePageRestaurantsRecord!,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));
                                                  },
                                                ).animateOnPageLoad(animationsMap[
                                                    'iconButtonOnPageLoadAnimation3']!),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.05, 1.6),
                                                child: Text(
                                                  'Edit details',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 10.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.8, 0.5),
                                        child: Container(
                                          width: 54.0,
                                          height: 54.0,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -0.4, -1.2),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      const Color(0x00E6AE46),
                                                  borderRadius: 60.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 60.0,
                                                  hoverColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary,
                                                  hoverIconColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  icon: Icon(
                                                    Icons.menu_book_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    size: 28.0,
                                                  ),
                                                  onPressed: () {
                                                    print(
                                                        'IconButton pressed ...');
                                                  },
                                                ).animateOnPageLoad(animationsMap[
                                                    'iconButtonOnPageLoadAnimation4']!),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.05, 1.6),
                                                child: Text(
                                                  'Add menu',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 10.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.8, 0.5),
                                        child: Container(
                                          width: 54.0,
                                          height: 54.0,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -0.4, -1.2),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      const Color(0x00E6AE46),
                                                  borderRadius: 60.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 60.0,
                                                  hoverColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary,
                                                  hoverIconColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  icon: FaIcon(
                                                    FontAwesomeIcons
                                                        .handHoldingHeart,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    size: 26.0,
                                                  ),
                                                  onPressed: () {
                                                    print(
                                                        'IconButton pressed ...');
                                                  },
                                                ).animateOnPageLoad(animationsMap[
                                                    'iconButtonOnPageLoadAnimation5']!),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.05, 1.6),
                                                child: Text(
                                                  'Points',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 10.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 6.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    cooksHomePageRestaurantsRecord?.name,
                                    'NewCook',
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontWeight: FontWeight.w200,
                                      ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  cooksHomePageRestaurantsRecord?.averageRating
                                      .toString(),
                                  '0',
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 6.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Container(
                                width: 370.0,
                                height: 50.0,
                                decoration: const BoxDecoration(),
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    valueOrDefault<String>(
                                      cooksHomePageRestaurantsRecord
                                          ?.description,
                                      'Write bio here!!',
                                    ),
                                    'Write your bio!!',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 14.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 6.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Opacity(
                              opacity: 0.4,
                              child: Container(
                                width: 100.0,
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Menu',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Proxima_Nova',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.4,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width: 100.0,
                                  height: 2.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 10.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () => _model
                                                  .unfocusNode.canRequestFocus
                                              ? FocusScope.of(context)
                                                  .requestFocus(
                                                      _model.unfocusNode)
                                              : FocusScope.of(context)
                                                  .unfocus(),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: AddtoMenuWidget(
                                              restRef:
                                                  cooksHomePageRestaurantsRecord!
                                                      .reference,
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                  child: Container(
                                    width: 350.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x33000000),
                                          offset: Offset(1.0, 2.0),
                                          spreadRadius: 0.0,
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    alignment: const AlignmentDirectional(1.0, 0.0),
                                    child: Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            145.0, 0.0, 13.0, 0.0),
                                        child: AutoSizeText(
                                          'Add Items',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                fontSize: 14.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      StreamBuilder<List<MenuRecord>>(
                        stream: queryMenuRecord(
                          parent: cooksHomePageRestaurantsRecord?.reference,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 30.0,
                                height: 30.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<MenuRecord> listViewMenuRecordList =
                              snapshot.data!;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewMenuRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewMenuRecord =
                                  listViewMenuRecordList[listViewIndex];
                              return Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 350.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x33000000),
                                            offset: Offset(0.0, 2.0),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 8.0, 8.0, 8.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 100.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100.0),
                                                  ),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100.0),
                                                    child: Image.network(
                                                      valueOrDefault<String>(
                                                        listViewMenuRecord
                                                            .image,
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/houzee-khylpc/assets/97u5pyfyi9mo/back13.jpg',
                                                      ),
                                                      width: 300.0,
                                                      height: 200.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: 200.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          6.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  listViewMenuRecord
                                                                      .name,
                                                                  'newItem',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      fontSize:
                                                                          18.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          6.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  listViewMenuRecord
                                                                      .description,
                                                                  'setDesc',
                                                                ),
                                                                maxLines: 1,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      fontSize:
                                                                          12.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    listViewMenuRecord
                                                                        .rating
                                                                        .toString(),
                                                                    '0',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                ),
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 24.0,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 12.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      await listViewMenuRecord
                                                          .reference
                                                          .delete();
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Icon(
                                                          Icons.delete_outline,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          size: 24.0,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ].addToStart(const SizedBox(height: 10.0)),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: wrapWithModel(
                      model: _model.customAppBarCooksHomeModel,
                      updateCallback: () => setState(() {}),
                      child: const CustomAppBarCooksHomeWidget(),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: wrapWithModel(
                      model: _model.navigationBarUserModel,
                      updateCallback: () => setState(() {}),
                      child: const NavigationBarUserWidget(
                        selectedPageIndex: 4,
                        hidden: false,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
