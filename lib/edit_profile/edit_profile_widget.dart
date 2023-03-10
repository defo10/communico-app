import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfileWidget extends StatefulWidget {
  const EditProfileWidget({
    Key key,
    this.userProfile,
  }) : super(key: key);

  final DocumentReference userProfile;

  @override
  _EditProfileWidgetState createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
  String uploadedFileUrl = '';
  TextEditingController yourNameController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(widget.userProfile),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 40,
              height: 40,
              child: SpinKitPumpingHeart(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 40,
              ),
            ),
          );
        }
        final editProfileUsersRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryText,
            automaticallyImplyLeading: false,
            leading: InkWell(
              onTap: () async {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.chevron_left_rounded,
                color: FlutterFlowTheme.of(context).grayLight,
                size: 32,
              ),
            ),
            title: Text(
              FFLocalizations.of(context).getText(
                'hyvsguak' /* Edit Profile */,
              ),
              style: FlutterFlowTheme.of(context).title3,
            ),
            actions: [],
            centerTitle: false,
            elevation: 0,
          ),
          backgroundColor: FlutterFlowTheme.of(context).background,
          body: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 18, 12, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.always,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: CachedNetworkImage(
                          imageUrl: editProfileUsersRecord.photoUrl,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            final selectedMedia =
                                await selectMediaWithSourceBottomSheet(
                              context: context,
                              maxWidth: 100.00,
                              maxHeight: 100.00,
                              allowPhoto: true,
                            );
                            if (selectedMedia != null &&
                                selectedMedia.every((m) => validateFileFormat(
                                    m.storagePath, context))) {
                              showUploadMessage(
                                context,
                                'Uploading file...',
                                showLoading: true,
                              );
                              final downloadUrls = (await Future.wait(
                                      selectedMedia.map((m) async =>
                                          await uploadData(
                                              m.storagePath, m.bytes))))
                                  .where((u) => u != null)
                                  .toList();
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              if (downloadUrls != null &&
                                  downloadUrls.length == selectedMedia.length) {
                                setState(
                                    () => uploadedFileUrl = downloadUrls.first);
                                showUploadMessage(
                                  context,
                                  'Success!',
                                );
                              } else {
                                showUploadMessage(
                                  context,
                                  'Failed to upload media',
                                );
                                return;
                              }
                            }

                            final usersUpdateData = createUsersRecordData();
                            await editProfileUsersRecord.reference
                                .update(usersUpdateData);
                          },
                          text: FFLocalizations.of(context).getText(
                            'is50c6zm' /* Change Photo */,
                          ),
                          options: FFButtonOptions(
                            width: 140,
                            height: 40,
                            color: FlutterFlowTheme.of(context).darkBackground,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Inter',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                            elevation: 2,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 8,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                        child: TextFormField(
                          controller: yourNameController ??=
                              TextEditingController(
                            text: editProfileUsersRecord.displayName,
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'w3gtvat3' /* Your Name */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Inter',
                                  color: FlutterFlowTheme.of(context).grayLight,
                                ),
                            hintText: FFLocalizations.of(context).getText(
                              '2w6e6rch' /* Please enter a valid number... */,
                            ),
                            hintStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Inter',
                                      color: Color(0x98FFFFFF),
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return FFLocalizations.of(context).getText(
                                'owkv2zja' /* Field is required */,
                              );
                            }
                            if (val.length < 3) {
                              return 'Requires at least 3 characters.';
                            }
                            if (val.length > 20) {
                              return 'Maximum 20 characters allowed, currently ${val.length}.';
                            }
                            if (!RegExp(kTextValidatorUsernameRegex)
                                .hasMatch(val)) {
                              return 'Must start with a letter and can only contain letters, digits and - or _.';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if (formKey.currentState == null ||
                          !formKey.currentState.validate()) {
                        return;
                      }
                    },
                    text: FFLocalizations.of(context).getText(
                      '9zh5f1os' /* Save Changes */,
                    ),
                    options: FFButtonOptions(
                      width: 230,
                      height: 56,
                      color: FlutterFlowTheme.of(context).secondaryColor,
                      textStyle: FlutterFlowTheme.of(context)
                          .subtitle2
                          .override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 8,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
