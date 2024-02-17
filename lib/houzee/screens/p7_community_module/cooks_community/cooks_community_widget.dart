import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/houzee/components/custom_app_bar_comm/custom_app_bar_comm_widget.dart';
import '/houzee/components/navigation_bar_user/navigation_bar_user_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cooks_community_model.dart';
export 'cooks_community_model.dart';

class CooksCommunityWidget extends StatefulWidget {
  const CooksCommunityWidget({super.key});

  @override
  State<CooksCommunityWidget> createState() => _CooksCommunityWidgetState();
}

class _CooksCommunityWidgetState extends State<CooksCommunityWidget> {
  late CooksCommunityModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CooksCommunityModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          height: 290.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/back3copygrad2.jpg',
                              ).image,
                            ),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.25),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 70.0, 16.0, 20.0),
                                    child: Container(
                                      width: 300.0,
                                      height: 38.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFAF2F2),
                                        borderRadius:
                                            BorderRadius.circular(80.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: SizedBox(
                                              width: 20.0,
                                              child: TextFormField(
                                                controller:
                                                    _model.textController,
                                                focusNode:
                                                    _model.textFieldFocusNode,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'What\'s cooking?',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        fontSize: 14.0,
                                                      ),
                                                  hintText:
                                                      'Share your recipe or cooking tips...',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            const Color(0xFF7F8487),
                                                        fontSize: 12.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 0.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            80.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 0.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            80.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 0.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            80.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 0.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            80.0),
                                                  ),
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      fontSize: 14.0,
                                                    ),
                                                validator: _model
                                                    .textControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 20.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.comments,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 20.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 300.0,
                          height: 3.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).tertiary,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: StreamBuilder<List<UserPostsRecord>>(
                            stream: queryUserPostsRecord(
                              queryBuilder: (userPostsRecord) => userPostsRecord
                                  .orderBy('timestamp', descending: true),
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
                              List<UserPostsRecord>
                                  listViewUserPostsRecordList = snapshot.data!;
                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewUserPostsRecordList.length,
                                separatorBuilder: (_, __) =>
                                    const SizedBox(height: 10.0),
                                itemBuilder: (context, listViewIndex) {
                                  final listViewUserPostsRecord =
                                      listViewUserPostsRecordList[
                                          listViewIndex];
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 25.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 15.0, 10.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 15.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                          child: Image.network(
                                                            valueOrDefault<
                                                                String>(
                                                              listViewUserPostsRecord
                                                                  .photoUrl,
                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/houzee-khylpc/assets/eealgw18eyik/user-128.png',
                                                            ),
                                                            width: 300.0,
                                                            height: 200.0,
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                listViewUserPostsRecord
                                                                    .name,
                                                                'UserName',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                dateTimeFormat(
                                                                    'relative',
                                                                    listViewUserPostsRecord
                                                                        .timestamp),
                                                                'now',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          130.0, 0.0, 0.0, 0.0),
                                                  child: Icon(
                                                    Icons.bookmark_border,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Icon(
                                                  Icons.all_inbox_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 500.0,
                                          height: 300.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.network(
                                              valueOrDefault<String>(
                                                listViewUserPostsRecord.image,
                                                'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D',
                                              ),
                                              width: 300.0,
                                              height: 200.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 10.0, 15.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                14.0, 0.0),
                                                    child: Icon(
                                                      Icons.favorite_border,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                14.0, 0.0),
                                                    child: Icon(
                                                      Icons
                                                          .chat_bubble_outline_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          255.0, 0.0, 0.0, 0.0),
                                                  child: Icon(
                                                    Icons.send,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 380.0,
                                          decoration: const BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 10.0, 15.0, 10.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'Liked by',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                    Text(
                                                      ' Sneha',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                    Text(
                                                      ' and',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                    Text(
                                                      ' 30 others',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 6.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 350.0,
                                                    height: 45.0,
                                                    decoration: const BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        AutoSizeText(
                                                          valueOrDefault<
                                                              String>(
                                                            listViewUserPostsRecord
                                                                .caption,
                                                            'Here\'s what\'s cooking!',
                                                          ),
                                                          maxLines: 7,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 3.0, 0.0, 0.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                                    text: 'View all comments',
                                                    options: FFButtonOptions(
                                                      height: 25.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 8.0,
                                                              ),
                                                      elevation: 0.0,
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: 35.0,
                                                            height: 35.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child:
                                                                AuthUserStreamWidget(
                                                              builder:
                                                                  (context) =>
                                                                      ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    currentUserPhoto,
                                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/houzee-khylpc/assets/eealgw18eyik/user-128.png',
                                                                  ),
                                                                  width: 270.0,
                                                                  height: 180.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        6.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Add your comment...',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        12.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Opacity(
                                          opacity: 0.1,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width: 380.0,
                                                height: 1.5,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ]
                          .addToStart(const SizedBox(height: 30.0))
                          .addToEnd(const SizedBox(height: 100.0)),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.navigationBarUserModel,
                  updateCallback: () => setState(() {}),
                  child: const NavigationBarUserWidget(
                    selectedPageIndex: 3,
                    hidden: false,
                  ),
                ),
              ),
              wrapWithModel(
                model: _model.customAppBarCommModel,
                updateCallback: () => setState(() {}),
                child: const CustomAppBarCommWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
