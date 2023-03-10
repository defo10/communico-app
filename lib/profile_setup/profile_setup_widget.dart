import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import '../auth/auth_util.dart';
import '../backend/schema/tokens.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSetupWidget extends StatefulWidget {
  const ProfileSetupWidget({Key key}) : super(key: key);

  @override
  _ProfileSetupWidgetState createState() => _ProfileSetupWidgetState();
}

class _ProfileSetupWidgetState extends State<ProfileSetupWidget>
    with TickerProviderStateMixin {
  TextEditingController yourNameController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 50,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 20),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 100,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 20),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'buttonOnPageLoadAnimation': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 350,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 40),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    yourNameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).background,
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16, 64, 16, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 26, 0),
              child: Text(
                'Enter your name to get started',
                style: FlutterFlowTheme.of(context).title1,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 16),
              child: AutoSizeText(
                FFLocalizations.of(context).getText(
                  'qij4xf8z' /* Your name and picture will be ... */,
                ),
                style: FlutterFlowTheme.of(context).bodyText1,
              ).animated([animationsMap['textOnPageLoadAnimation']]),
            ),
            Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                child: TextFormField(
                  controller: yourNameController,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      'jnrviokh' /* Your Name */,
                    ),
                    labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).grayLight,
                        ),
                    hintText: FFLocalizations.of(context).getText(
                      'd2vbr19d' /* Please enter a valid number... */,
                    ),
                    hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
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
                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).textColor,
                      ),
                ).animated([animationsMap['textFieldOnPageLoadAnimation']]),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: AutoSizeText(
                      FFLocalizations.of(context).getText(
                        'pczfnkxk' /* By using Communico, you agree ... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 72, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  if (formKey.currentState == null ||
                      !formKey.currentState.validate()) {
                    return;
                  }

                  final user = await signInAnonymously(context);
                  if (user == null) {
                    return;
                  }
                  await user.updateDisplayName(yourNameController.text);

                  String fcmToken = await FirebaseMessaging.instance.getToken();
                  final data = createTokensRecordData(
                      fcmToken: fcmToken,
                      createdTime: getCurrentTimestamp
                  );
                  await currentUserReference.update({
                    "tokens": FieldValue.arrayUnion([data]),
                    "display_name": yourNameController.text
                  });
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavBarPage(initialPage: 'homePage'),
                    ),
                  );
                },
                text: FFLocalizations.of(context).getText(
                  'sl4excnt' /* Let's start */,
                ),
                options: FFButtonOptions(
                  width: 230,
                  height: 56,
                  color: FlutterFlowTheme.of(context).darkBackground,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),
                  elevation: 0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 0,
                  ),
                  borderRadius: 0,
                ),
              ).animated([animationsMap['buttonOnPageLoadAnimation']]),
            ),
          ],
        ),
      ),
    );
  }
}
