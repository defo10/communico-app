import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/schema/call_request.dart';
import '../components/option_card_widget.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_language_selector.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../loading_mediator/loading_mediator_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MediatorCallConfigWidget extends StatefulWidget {
  const MediatorCallConfigWidget({Key key}) : super(key: key);

  @override
  _MediatorCallConfigWidgetState createState() =>
      _MediatorCallConfigWidgetState();
}

class _MediatorCallConfigWidgetState extends State<MediatorCallConfigWidget> {
  List<String> choiceChipsValues;
  String firstLanguage;
  String secondLanguage;
  TextEditingController textController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  void initState() {
    this.textController = TextEditingController();
    firstLanguage = 'uk';
    secondLanguage = 'de';
  }

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
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'sayhbn65' /* Call a mediator */,
          ),
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Inter',
                fontSize: 24,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            child: Stack(
              children: [
                ListView(
                  children: [Form(
                    key: formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'pwytycpf' /* Connect me with someone who sp... */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FlutterFlowLanguageSelector(
                                      width:
                                          MediaQuery.of(context).size.width * 0.4,
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      dropdownColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      dropdownIconColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                      borderRadius: 8,
                                      textStyle: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13,
                                      ),
                                      hideFlags: false,
                                      flagSize: 24,
                                      flagTextGap: 8,
                                      currentLanguage: this.firstLanguage,
                                      languages: FFLocalizations.languages(),
                                      onChanged: (lang) =>
                                          this.firstLanguage = lang,
                                    ),
                                  ],
                                ),
                                Padding(padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 8)),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FlutterFlowLanguageSelector(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      backgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      dropdownColor:
                                      FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      dropdownIconColor:
                                      FlutterFlowTheme.of(context)
                                          .primaryText,
                                      borderRadius: 8,
                                      textStyle: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13,
                                      ),
                                      hideFlags: false,
                                      flagSize: 24,
                                      flagTextGap: 8,
                                      currentLanguage: this.secondLanguage,
                                      languages: FFLocalizations.languages(),
                                      onChanged: (lang) =>
                                          this.secondLanguage = lang,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 32, 0, 16),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'kt76iabn' /* Option */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                OptionCardWidget(),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 32, 0, 16),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'esp6pa56' /* Topics */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(18, 0, 18, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: FlutterFlowChoiceChips(
                                      initiallySelected: choiceChipsValues != null
                                          ? choiceChipsValues
                                          : [],
                                      options: [
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          '27g6k418' /* Medical */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                           '76th2518' /* Shopping */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          '2asqhech' /* Government */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          '0re5vmq7' /* Rent */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'nj1eb7cq' /* Shopping */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'eowmel3i' /* General */,
                                        ))
                                      ],
                                      onChanged: (val) =>
                                          setState(() => choiceChipsValues = val),
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Inter',
                                              color: FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                            ),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        iconSize: 18,
                                        elevation: 2,
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily: 'Inter',
                                              color: FlutterFlowTheme.of(context)
                                                  .primaryText,
                                            ),
                                        iconColor: Color(0xFF323B45),
                                        iconSize: 18,
                                        elevation: 4,
                                      ),
                                      chipSpacing: 10,
                                      multiselect: true,
                                      initialized: choiceChipsValues != null,
                                      alignment: WrapAlignment.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 32, 0, 16),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'ljjfcdr9' /* Add comment for mediator */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                              child: TextFormField(
                                controller: textController,
                                onChanged: (newText) {
                                  textController.text = newText;
                                  textController.selection = TextSelection
                                      .fromPosition(
                                      TextPosition(
                                          offset: textController.text.length)
                                  );
                                },
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: FFLocalizations.of(context).getText(
                                    '9k4lagxa' /* Comment */,
                                  ),
                                  hintText: FFLocalizations.of(context).getText(
                                  '6jp6rbwr' /* Need to buy aspirin... */,),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      width: 2,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      width: 2,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  suffixIcon: textController.text.isNotEmpty
                                      ? InkWell(
                                          onTap: () => setState(
                                            () => textController?.clear(),
                                          ),
                                          child: Icon(
                                            Icons.clear,
                                            color: Color(0xFF757575),
                                            size: 22,
                                          ),
                                        )
                                      : null,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                                maxLines: 2,
                              ),
                            ),
                            Container(height: 100,)
                          ],
                        ),
                      ),
                    ),
                  )],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 24),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (formKey.currentState == null ||
                              !formKey.currentState.validate()) {
                            return;
                          }

                          CallRequest cr = CallRequest((u) => u
                            ..displayCallerName = currentUserDisplayName
                            ..caller = currentUserReference.path
                            ..comment = textController.text
                            ..topics = ListBuilder(choiceChipsValues ?? [])
                            ..languages = ListBuilder([firstLanguage, secondLanguage]));

                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoadingMediatorWidget(callRequest: cr),
                            ),
                          );
                        },
                        text: FFLocalizations.of(context).getText(
                          'gc4ayssk' /* Call */,
                        ),
                        icon: Icon(
                          Icons.phone,
                          size: 16,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 50,
                          color: FlutterFlowTheme.of(context).primaryText,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
