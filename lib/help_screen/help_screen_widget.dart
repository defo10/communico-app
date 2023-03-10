import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpScreenWidget extends StatefulWidget {
  const HelpScreenWidget({Key key}) : super(key: key);

  @override
  _HelpScreenWidgetState createState() => _HelpScreenWidgetState();
}

class _HelpScreenWidgetState extends State<HelpScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(32, 18, 32, 18),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 64, 0, 32),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '57xlkz7i' /* Help */,
                        ),
                        style: FlutterFlowTheme.of(context).title1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                      child: Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: ExpandableNotifier(
                          initialExpanded: false,
                          child: ExpandablePanel(
                            header: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'vn8unm31' /* What is Communico? */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.black,
                                  size: 28,
                                ),
                              ],
                            ),
                            collapsed: Container(
                              width: 1,
                              height: 1,
                              decoration: BoxDecoration(),
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'k4vrnsne' /* Communico is an app created by... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0x8A000000),
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: true,
                              tapBodyToCollapse: true,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: false,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                      child: Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: ExpandableNotifier(
                          initialExpanded: false,
                          child: ExpandablePanel(
                            header: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'hzmibve5' /* Are there any costs? */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.black,
                                  size: 28,
                                ),
                              ],
                            ),
                            collapsed: Container(
                              width: 1,
                              height: 1,
                              decoration: BoxDecoration(),
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '22imv76q' /* There are no costs. */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0x8A000000),
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: true,
                              tapBodyToCollapse: true,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: false,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                      child: Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: ExpandableNotifier(
                          initialExpanded: false,
                          child: ExpandablePanel(
                            header: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '6t8cmzch' /* Why is it free? */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.black,
                                  size: 28,
                                ),
                              ],
                            ),
                            collapsed: Container(
                              width: 1,
                              height: 1,
                              decoration: BoxDecoration(),
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'oqqy30cc' /* The app was developed to ease ... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0x8A000000),
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: true,
                              tapBodyToCollapse: true,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: false,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                      child: Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: ExpandableNotifier(
                          initialExpanded: false,
                          child: ExpandablePanel(
                            header: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'tmzih215' /* Who can call me? */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.black,
                                  size: 28,
                                ),
                              ],
                            ),
                            collapsed: Container(
                              width: 1,
                              height: 1,
                              decoration: BoxDecoration(),
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'pzd8d0xv' /* Anyone who downloaded the asso... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0x8A000000),
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: true,
                              tapBodyToCollapse: true,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: false,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                      child: Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: ExpandableNotifier(
                          initialExpanded: false,
                          child: ExpandablePanel(
                            header: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'sny92lgf' /* I am not getting called? */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.black,
                                  size: 28,
                                ),
                              ],
                            ),
                            collapsed: Container(
                              width: 1,
                              height: 1,
                              decoration: BoxDecoration(),
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'pow3hc3a' /* Need for translations is hard ... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0x8A000000),
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: true,
                              tapBodyToCollapse: true,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: false,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                      child: Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: ExpandableNotifier(
                          initialExpanded: false,
                          child: ExpandablePanel(
                            header: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'tx835njf' /* Are my calls recorded? */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.black,
                                  size: 28,
                                ),
                              ],
                            ),
                            collapsed: Container(
                              width: 1,
                              height: 1,
                              decoration: BoxDecoration(),
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'qoin6saf' /* Your calls are not recorded. O... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0x8A000000),
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: true,
                              tapBodyToCollapse: true,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: false,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                      child: Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: ExpandableNotifier(
                          initialExpanded: false,
                          child: ExpandablePanel(
                            header: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'pp90t98r' /* Can I connect with the same tw... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.black,
                                  size: 28,
                                ),
                              ],
                            ),
                            collapsed: Container(
                              width: 1,
                              height: 1,
                              decoration: BoxDecoration(),
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'u2pug9kb' /* You can connect with the same ... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0x8A000000),
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: true,
                              tapBodyToCollapse: true,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: false,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(18, 32, 18, 92),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'qqqmg6eb' /* Daniel Stachnik, Johanna Schäp... */,
                  ),
                  style: FlutterFlowTheme.of(context).subtitle1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
