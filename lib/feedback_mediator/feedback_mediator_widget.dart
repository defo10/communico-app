import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedbackMediatorWidget extends StatefulWidget {
  const FeedbackMediatorWidget({Key key}) : super(key: key);

  @override
  _FeedbackMediatorWidgetState createState() => _FeedbackMediatorWidgetState();
}

class _FeedbackMediatorWidgetState extends State<FeedbackMediatorWidget> {
  List<String> choiceChipsValues;
  double ratingBarValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              buttonSize: 48,
              fillColor: Colors.transparent,
              icon: Icon(
                Icons.skip_next_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(18, 0, 18, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 48, 80, 0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'hb46oro4' /* How was your call with [blabla... */,
                ),
                style: FlutterFlowTheme.of(context).title1,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 64, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RatingBar.builder(
                    onRatingUpdate: (newValue) =>
                        setState(() => ratingBarValue = newValue),
                    itemBuilder: (context, index) => Icon(
                      Icons.star_rate_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                    direction: Axis.horizontal,
                    initialRating: ratingBarValue ??= 3,
                    unratedColor: FlutterFlowTheme.of(context).grayIcon,
                    itemCount: 5,
                    itemSize: 40,
                    glowColor: FlutterFlowTheme.of(context).primaryText,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 64, 0, 16),
              child: Text(
                FFLocalizations.of(context).getText(
                  '0qfmyar8' /* Please indicate if you experie... */,
                ),
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(18, 0, 18, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: FlutterFlowChoiceChips(
                      initiallySelected:
                          choiceChipsValues != null ? choiceChipsValues : [],
                      options: [
                        ChipData(FFLocalizations.of(context).getText(
                          'gi82j5gs' /* Unprofessional */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'srmhddza' /* Lack of language skills */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          '1sfb1p1o' /* Hard to understand */,
                        )),
                        ChipData(FFLocalizations.of(context).getText(
                          'nxqj2hcm' /* Connection issues */,
                        ))
                      ],
                      onChanged: (val) =>
                          setState(() => choiceChipsValues = val),
                      selectedChipStyle: ChipStyle(
                        backgroundColor:
                            FlutterFlowTheme.of(context).primaryColor,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyText1
                            .override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                        iconColor: FlutterFlowTheme.of(context).secondaryText,
                        iconSize: 18,
                        elevation: 2,
                      ),
                      unselectedChipStyle: ChipStyle(
                        backgroundColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyText2
                            .override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                        iconColor: Color(0xFF323B45),
                        iconSize: 18,
                        elevation: 4,
                      ),
                      chipSpacing: 10,
                      multiselect: true,
                      initialized: choiceChipsValues != null,
                      alignment: WrapAlignment.spaceEvenly,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 48, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      '9srp6rvz' /* Do you want to add something e... */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).primaryColor,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
