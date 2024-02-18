import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/houzee/components/custom_app_bar_create_post/custom_app_bar_create_post_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'create_post_model.dart';
export 'create_post_model.dart';

class CreatePostWidget extends StatefulWidget {
  const CreatePostWidget({
    super.key,
    required this.createPost,
  });

  final DocumentReference? createPost;

  @override
  State<CreatePostWidget> createState() => _CreatePostWidgetState();
}

class _CreatePostWidgetState extends State<CreatePostWidget> {
  late CreatePostModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreatePostModel());

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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondary,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => Container(
                              width: 40.0,
                              height: 40.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                valueOrDefault<String>(
                                  currentUserPhoto,
                                  'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAN8AAADiCAMAAAD5w+JtAAAAe1BMVEX///8AAACQkJDKysr5+fnQ0NDx8fH09PTm5uatra3j4+Pv7+/MzMzFxcX8/Py3t7doaGhhYWF/f3/b29udnZ0qKipAQEBubm6Kioqnp6e+vr4ZGRk3NzdMTEyWlpZHR0eEhIRYWFh3d3dUVFQhISEYGBgNDQ0zMzMgICB1zAVoAAALQElEQVR4nO1d6ZqiOhB1ARdcUAQR21bRbu33f8IBkwDZWEMq+s35NXfGCzkkqT2VwaB/WM7x7MWn4C/Yb71ovNDwSn1YjvZDBl+3MfSoFGEZstwIRjPosXXG5PwrY5di40APsBMc6dRluE2gB9kaTlzJLsUcepztML3VYpfgewo91hY412WXYgk92qZY/TWhNxxG0ANuhOm2GbsEHvSYG+DYmF2CEHrUdWFt2tBLVCH0wOth92hH701m0G/LLsEBevDVaLk2MUzX9IugE73hcAXNoBR2R3YJDmfXXkPzkGDenR7C/ryD5iLAQRW9FEFkQfNh0E2yCHA1iuFFNb2hSUapdeqBXuI4GRKFmv70Qi/BEZpaiulXX/SMsGkmrS3OOgC3SielAbK3J9jv7KUAdX2thoGINvAB6XW1qGsBLpLfj97jABVA/NZDb3iHodc8TNYWIJ6vp40eyArtEmppjJt2eq5OesOh7kSagmBEI2z10ltopqd5Ate9eURSaLVDdSm+IjSK0NqpS5XQF66wzhqsag4nbfwSHHt3i3jolTDKA4KV0OwnKQ3o1sFeLz+t9ucLuktldGsJ3ekl3UaM9mChShfiy5lUVXN96+Y3UEfv5QDtuDJKGtr5NapSKgPZWtfSX2nPRyjagdf8ieOy39m6+SkRoTFlmOxKfulq59c9KX1hJ2Um/+1ZO7+SwdTCVrDk5DMIkE3qkhv7OYsFhrSATX+UqX3e/VRSJSETy5qDMCmiFtR+Yn9Z7o1L0vn6FXy5PGfw+PbO82WdQwGSba3bg5CPhMX9fHSaBFDEvsmlNxpSWNXcglFzvSx+bNwDgSpUpae9dsVWQu8ZIlddbhL7bauQhOseopqizKnpEjERfTeITLXc4r91qnQU+ZYQ5T4jCbu/jkWOjuCZEHWTEh+++1YRPFTBcBtD7EEoKHngN3bQ/aHNITKGHyoOLvKWH0ilz4qn96skUMlbfvrdW+EwhmqOnfKxD5By0CU3DEWn3dbscwGs64EgEa/MCWVrv2Dq0Dg9pawunI1dwVQrs4aiujRrTD8YwLlNwfJT92RGAQId3mHEnEITn87ygyj3BFOan0ITkbbcoUrpGU9b4ZMpF/ep8MGNQKspOoI3i8LTXxB7bllpgDP34uDvFEasWUDNH9gRcppfMYJe7F/wlNk0s2f+o5j+UTHGBHg6l+JXMBHpIK0s9EW76ZQKL8pPwBYH1ADzSBlT3CsTf0whW3GeCk+A7BVDZSAy8YnXZhi5bnT7ko9wRX6EZ6uwgXP7ZdQzhVJQZiIRJGjveGRZLeRGm0U+iYXkyTX7l2zpAqQdCqAceDxYlOJqKvNseomThQHjN2RYFAliSitqrdbG67MQRU4U6wn0wLFLCwgyuD354zzc+FXCb+pvQnQC4FhQ5BP0xAsoPbYSNPMe7Jc349QRfyjCgWI2i1wA2wYsTi44yOhh8tdlEQviQD6Yv0eBq60fn07fLTI0KjBh6TFmYhYCK0uMZGqc8Rxp++AJ0WlLkOSh9lqmob9KHiKbe3bpA1igPD16JeYaus5DmOwedzZNe3wCu+6J0Thd3UTrM5vfsgNg2UdgrBTu02mvnkASDlvO62OyGgNakGSxi7LYQhYAp+dHkADUrSmOzLaxuLg1PqRUHrTAs8w46CQucLAtEkPWLWLc6mWzSyb1uyoydEyW6IazdrzCmkWyVHd8HvG79vX4+T4mpJEJqPuUo1tj8anB6BPnr4D49SbdGhDx05CVwzEe3ecDED8NRSnoRdojvEhsaygqimH0u6Pps2IzXrsPgd/b+3vmmt7DAfnuvVelXLTpIQahFrWLM1QAxT1zLQIGBQl+en6LCAuR4a8cyBHUfzZgQHZGvxregXEeXnB7lNwT//Dacsh30Hq6OAd20hLLd7qMlNJ8+bebxPlDJ5mBmhTRXTaqEwXWHLmxx3lVGQkTXoJqxR9To6icwSBZaUtn/OTDnSzo6heAynmENRXmqhJydv1vQX84uI6g6+KHrrIxisUWFQuUOvgDohwICkH6Sk3hkHR7UCXvi9lp6E6Zq+sGacIaZQBuGtTeVoca0Pxtfx4X34QrIpT7SnGdRawPyn0ltCDMuRoC8VOnph5mzR/WV8pCeGg9gFVl8TjUE6B1gZK6EAfGJEADEiX6pv6oFL5oUXvweo/GRGZocHXiPAQOJNp+Jt1xhTYgHw2t0eiOT8CMVYvj7sDJdk4Zv8yb43IshO2LtQDSfrCFSwxwPQ4nYV7zJ03gptVdV+5vd7J5hcRNrAKRTR0IPQAnEE/fXiqsAIEDJVxFDs7PbleMsl6vUH0Fbz1ji920+zywyc+FErJCwMthvtzNFovZzp6PyBl+Xsfh1fmrZdANQLw71nMt7bIccFUDFu4dZ5JyQCClEOwWtORtYk6yzQfduFwIvEIfnJKQtakQaIAY/5OR97Dgxos/HEFLeGBfYI6Tmi4T72DJq3IevMllzZkj7T8i+biRMzcCWfMd0fdfuNcL6ucQ3MXtX8jihI64yJGd55QZH5PFQlpufsf/L2BL/UpkMc7mgyR7zyC3SIBsiTYtCCAHjkCPO9TAgrSv3TcKn4RvsDgRsvuCggbxLyI5zRUtBWSVybXTkvd3olc43FZPkU2yY3Jmy5YcmUVWpw1MoUkA1Dnbxsgbb1S64VS3LDMNMwHyIW9Ld+GK7vF31TO6zqAab4TSwP3unv0It+Iy0nHgwRzPD4Xu6ipnN9zgGTctLCGGIKzrLSl9b40pn+lMDBjDwkoSoNqtJ3MMd+/57ti2x67v0d7SbypWcITKVN+IAoq5+DXvacFaL0b/BTvyWsBtixI3dy3rIJYjJN4w9j0MuPWvCmj6UD5+fS5tUugVfH0ciAIpNmsCXHKbRQpXsj6vW5eSOdi3Mt2IwbkIKpRt+zHD7fuw4nQdDvIbft99yEwfwWTpnq+e5x1G87Ej1OPk1LTRShDLzFbZZWK2mpU7okBODLcrpghNJ0g6FrUNo5BshaFqntBrXXGbdXQyMs6U9UNrX3WeBeAuhlzQXEDm1XbZPnkHetNiaTc1A8sJPk3KAq4yO6zr1lnkN4DtwVpLMVjmHk/3IJhVMHaekQFlhG6hEFuJZKf65tznoKLG7iMCNqFt8v0ZponIzKUjLaGymk2bu6Tu7ts6l+ps5W+ZMQTqPrLkfrPgFtl9h9jWCbNQ1EFdXfZgV3rF52kT2X2UnVvOeH7Yyq5vVNdMyKpzOd3f9rxSJXYWO/e8rbg+azj8VWQTN7h2KAijjvJscTzcq9+DsVew/+xn9XtobN2W8zhxb02vur13ZLir/zGLOPmNg1LOuaxwTI59B5txLLk6pxZFt4lqYstxGr0paqUE11G7D5rjUFM9TjrfHho2XqbjqvsN6zGsozaU3I368Oqv0/XxpuxG3UodrPBq9828etdbu6idSJHhVBrYmsZKXzZ8JFpYRnK9Ox46bHMpSqKnPV1cv99cI3e5c2YpHHvlzqOb2lmjIC2O7X5hoRmQHEhQeeMrLIQnrtvcdmcqBKXP0osT3xJcDkp0pdI7g3VmmlrSxoPWg+V3B78jqOOtn7Y6UxRNNd23uWtBHoji7zH6BORpkA5+pckg9MqutX5nEEub7cb8KcAhyxrXvL4pkGum0KU1DChV1/qabOOByhygR9Ej0ohaT067EUgbkn2OW8vjOsgPx3wiUg0hS3h9BNaCeyo+CbOPFi9pn4DP1e4p3I8Wn6kFUyfZ/b7wPtg6SxF+qm+L8c3dFPxZOA2UpRaNRPDJ3sMw7QMEPYJ+8fhwfsP//N4b//m9N/7ze2/85/fe+Hh+X9W/eWP8fVRZD49oMOhcN2sugmjwD+tOpmx+3W8/AAAAAElFTkSuQmCC',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AuthUserStreamWidget(
                              builder: (context) => Text(
                                currentUserDisplayName,
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                            Text(
                              currentUserEmail,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 12.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 10.0, 12.0, 0.0),
                        child: Container(
                          width: 350.0,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                          ),
                          child: Visibility(
                            visible: _model.uploadedFileUrl != '',
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                valueOrDefault<String>(
                                  _model.uploadedFileUrl,
                                  'data:image/jpeg;base64,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',
                                ),
                                width: double.infinity,
                                height: 250.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.image_outlined,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 26.0,
                            ),
                            onPressed: () async {
                              final selectedMedia =
                                  await selectMediaWithSourceBottomSheet(
                                context: context,
                                maxWidth: 300.00,
                                maxHeight: 300.00,
                                allowPhoto: true,
                                allowVideo: true,
                              );
                              if (selectedMedia != null &&
                                  selectedMedia.every((m) => validateFileFormat(
                                      m.storagePath, context))) {
                                setState(() => _model.isDataUploading = true);
                                var selectedUploadedFiles = <FFUploadedFile>[];

                                var downloadUrls = <String>[];
                                try {
                                  selectedUploadedFiles = selectedMedia
                                      .map((m) => FFUploadedFile(
                                            name: m.storagePath.split('/').last,
                                            bytes: m.bytes,
                                            height: m.dimensions?.height,
                                            width: m.dimensions?.width,
                                            blurHash: m.blurHash,
                                          ))
                                      .toList();

                                  downloadUrls = (await Future.wait(
                                    selectedMedia.map(
                                      (m) async => await uploadData(
                                          m.storagePath, m.bytes),
                                    ),
                                  ))
                                      .where((u) => u != null)
                                      .map((u) => u!)
                                      .toList();
                                } finally {
                                  _model.isDataUploading = false;
                                }
                                if (selectedUploadedFiles.length ==
                                        selectedMedia.length &&
                                    downloadUrls.length ==
                                        selectedMedia.length) {
                                  setState(() {
                                    _model.uploadedLocalFile =
                                        selectedUploadedFiles.first;
                                    _model.uploadedFileUrl = downloadUrls.first;
                                  });
                                } else {
                                  setState(() {});
                                  return;
                                }
                              }
                            },
                          ),
                          Text(
                            'Upload Image',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                150.0, 16.0, 0.0, 8.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await UserPostsRecord.createDoc(
                                        currentUserReference!)
                                    .set(createUserPostsRecordData(
                                  image: _model.uploadedFileUrl,
                                  caption: _model.textController.text,
                                  timestamp: getCurrentTimestamp,
                                  name: currentUserDisplayName,
                                  displayName: currentUserReference,
                                  photoUrl: currentUserPhoto,
                                ));

                                context.pushNamed('cooksCommunity');

                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Posted successfully!',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              },
                              text: 'Post',
                              options: FFButtonOptions(
                                width: 60.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Container(
                      width: 350.0,
                      height: 150.0,
                      decoration: const BoxDecoration(),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 10.0),
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.textController',
                            const Duration(milliseconds: 2000),
                            () => setState(() {}),
                          ),
                          autofocus: true,
                          textCapitalization: TextCapitalization.sentences,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'What\'s cooking!?',
                            hintStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF838B91),
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).accent3,
                                width: 1.5,
                              ),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.5,
                              ),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.5,
                              ),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                            ),
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 6.0, 15.0, 6.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF838B91),
                                  ),
                          textAlign: TextAlign.start,
                          maxLines: 7,
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ),
                ),
              ].addToStart(const SizedBox(height: 60.0)),
            ),
            wrapWithModel(
              model: _model.customAppBarCreatePostModel,
              updateCallback: () => setState(() {}),
              child: const CustomAppBarCreatePostWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
