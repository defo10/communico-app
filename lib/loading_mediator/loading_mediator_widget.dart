import 'dart:collection';

import 'package:communico/auth/auth_util.dart';
import 'package:communico/backend/backend.dart';
import 'package:communico/index.dart';

import '../backend/schema/call_request.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_functions/cloud_functions.dart';

import '../flutter_flow/flutter_flow_widgets.dart';

class LoadingMediatorWidget extends StatefulWidget {
  const LoadingMediatorWidget({Key key, this.callRequest}) : super(key: key);

  final CallRequest callRequest;

  @override
  _LoadingMediatorWidgetState createState() => _LoadingMediatorWidgetState();
}

class _LoadingMediatorWidgetState extends State<LoadingMediatorWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FirebaseFunctions
          .instance
          .httpsCallable('call')
          .call(createCallRequestData(
        topics: this.widget.callRequest.topics.toList(),
        comment: this.widget.callRequest.comment,
        displayCallerName: this.widget.callRequest.displayCallerName,
        caller: this.widget.callRequest.caller,
        languages: this.widget.callRequest.languages.toList()
      )),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return LoadingScreen(
              scaffoldKey: scaffoldKey,
              child: LoadingError()
          );
        }

        if (!snapshot.hasData) {
          return LoadingScreen(
            scaffoldKey: scaffoldKey,
            child: LoadingBody()
          );
        }

        CallsRecord call = serializers.deserializeWith(CallsRecord.serializer, snapshot.data.data);
        return CallScreenWidget(callsRecord: call);
      },
    );
  }
}

class LoadingError extends StatelessWidget {
  const LoadingError({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text("No connection possible :("),
              ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              FFButtonWidget(
                onPressed: () => Navigator.pop(context),
                text: FFLocalizations.of(context).getText(
                  'goBack',
                ),
                options: FFButtonOptions(
                  width: 150,
                  height: 50,
                  color: FlutterFlowTheme.of(context).primaryText,
                  textStyle:
                  FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Inter',
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              )
            ],
          )
        ]
    );
  }
}

class LoadingScreen extends StatelessWidget {
  final Widget child;

  const LoadingScreen({
    Key key,
    @required this.scaffoldKey,
    this.child,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.close,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30,
          ),
          onPressed: () {
            /// TODO: The cloud function is running anyhow, so might
            /// need to cancel somehow?
            Navigator.pop(context);
          },
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: this.child,
    );
  }
}

class LoadingBody extends StatelessWidget {
  const LoadingBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'wye11seo' /* Connecting with Mediator... */,
                    ),
                    style: FlutterFlowTheme.of(context).title3,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  height: 4,
                  child: LinearProgressIndicator(
                    color: FlutterFlowTheme.of(context).primaryColor,
                    backgroundColor: Color(0xFFF1F4F8),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
