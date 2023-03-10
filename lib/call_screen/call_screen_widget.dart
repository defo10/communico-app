import 'package:communico/backend/backend.dart';
import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';

import '../auth/auth_util.dart';
import '../feedback_mediator/feedback_mediator_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CallScreenWidget extends StatefulWidget {
  final CallsRecord callsRecord;
  final JitsiMeetingOptions jitsiOptions;

  CallScreenWidget({Key key, this.callsRecord}) :
        this.jitsiOptions = JitsiMeetingOptions(
            roomNameOrUrl: "communicohardcodedmeeting12345",
            serverUrl: "https://meet.jit.si",
            subject: "Call",
            isAudioMuted: false,
            isAudioOnly: true,
            isVideoMuted: true,
            userDisplayName: currentUserDisplayName,
            featureFlags: {
              FeatureFlag.isAddPeopleEnabled: false,
              FeatureFlag.isCalendarEnabled: false,
              FeatureFlag.isInviteEnabled: false,
              FeatureFlag.isAndroidScreensharingEnabled: false,
              FeatureFlag.isHelpButtonEnabled: false,
              FeatureFlag.isKickoutEnabled: false,
              FeatureFlag.isRaiseHandEnabled: false,
              FeatureFlag.isWelcomePageEnabled: false,
            }
        ),
        super(key: key);

  @override
  _CallScreenWidgetState createState() => _CallScreenWidgetState();
}

class _CallScreenWidgetState extends State<CallScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool finishedCall = false;

  @override
  void initState() {
    super.initState();
    JitsiMeetWrapper.joinMeeting(
        options: this.widget.jitsiOptions,
        listener: JitsiMeetingListener(onClosed: () {
          this.setState(() {
            finishedCall = true;
          });
        }));
  }

  @override
  Widget build(BuildContext context) {
    if (finishedCall) {
      var count = 0;
      Navigator.popUntil(context, (route) {
        return count++ == 2;
      });
    }
    return Container();
    //return NativeCallScreen(scaffoldKey: scaffoldKey);
  }
}

class NativeCallScreen extends StatelessWidget {
  const NativeCallScreen({
    Key key,
    @required this.scaffoldKey,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF192E64),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 32),
                child: Container(
                  width: 120,
                  height: 120,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://picsum.photos/seed/98/600',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 92),
                child: AuthUserStreamWidget(
                  child: Text(
                    currentUserDisplayName,
                    style: FlutterFlowTheme.of(context).title2.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 40,
                    borderWidth: 1,
                    buttonSize: 60,
                    fillColor: Color(0xFFC81521),
                    icon: Icon(
                      Icons.phone_disabled_sharp,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 30,
                    ),
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FeedbackMediatorWidget(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
