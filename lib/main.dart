import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';
import 'auth/firebase_user_provider.dart';
import 'auth/auth_util.dart';

import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'index.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await dotenv.load();

  await Firebase.initializeApp();
  if (dotenv.env["DEVELOPEMENT"] == "1") {
    _connectToFirebaseEmulator();
  }

  runApp(MyApp());
}

Future _connectToFirebaseEmulator() async {
  final localHostString = Platform.isAndroid ? '10.0.2.2' : 'localhost';

  FirebaseFirestore.instance.useFirestoreEmulator(localHostString, 8080);
  await FirebaseAuth.instance.useAuthEmulator(localHostString, 9099);
  await FirebaseStorage.instance.useStorageEmulator(localHostString, 9199);
  FirebaseFunctions.instance.useFunctionsEmulator(localHostString, 5001);
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;
  ThemeMode _themeMode = ThemeMode.system;

  Stream<CommunicoFirebaseUser> userStream;
  CommunicoFirebaseUser initialUser;
  bool displaySplashImage = false;

  final authUserSub = authenticatedUserStream.listen((_) {});

  @override
  void initState() {
    super.initState();
    userStream = communicoFirebaseUserStream()
      ..listen((user) => initialUser ?? setState(() => initialUser = user));
  }

  @override
  void dispose() {
    authUserSub.cancel();

    super.dispose();
  }

  void setLocale(Locale value) => setState(() => _locale = value);
  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Communico',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('en', ''),
        Locale('de', ''),
        Locale('ru', ''),
        Locale('uk', ''),
      ],
      theme: ThemeData(brightness: Brightness.light),
      themeMode: _themeMode,
      home: initialUser != null && currentUser.loggedIn
              ? NavBarPage()
              : OnboardingWidget(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'homePage';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'homePage': HomePageWidget(),
      'summaryScreen': SummaryScreenWidget(),
      'HelpScreen': HelpScreenWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPage);
    return Scaffold(
        body: tabs[_currentPage],
        extendBody: true,
        bottomNavigationBar: FloatingNavbar(
          currentIndex: currentIndex,
          onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          selectedItemColor: FlutterFlowTheme.of(context).primaryText,
          unselectedItemColor: FlutterFlowTheme.of(context).grayLight,
          selectedBackgroundColor: Color(0xFFDAE1FF),
          borderRadius: 8,
          itemBorderRadius: 8,
          margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
          width: double.infinity,
          elevation: 0,
          items: [
            FloatingNavbarItem(
              customWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    currentIndex == 0 ? Icons.home_rounded : Icons.home_outlined,
                    color: currentIndex == 0
                        ? FlutterFlowTheme.of(context).primaryText
                        : FlutterFlowTheme.of(context).grayLight,
                    size: 24,
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'lxnt55z2' /*  Home */,
                    ),
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: currentIndex == 0
                          ? FlutterFlowTheme.of(context).primaryText
                          : FlutterFlowTheme.of(context).grayLight,
                      fontSize: 11.0,
                    ),
                  ),
                ],
              ),
            ),
            FloatingNavbarItem(
              customWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    currentIndex == 1
                        ? Icons.date_range_rounded
                        : Icons.date_range_outlined,
                    color: currentIndex == 1
                        ? FlutterFlowTheme.of(context).primaryText
                        : FlutterFlowTheme.of(context).grayLight,
                    size: 24,
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'tw3rzdls' /* Summary */,
                    ),
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: currentIndex == 1
                          ? FlutterFlowTheme.of(context).primaryText
                          : FlutterFlowTheme.of(context).grayLight,
                      fontSize: 11.0,
                    ),
                  ),
                ],
              ),
            ),
            FloatingNavbarItem(
              customWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.help_outline,
                    color: currentIndex == 2
                        ? FlutterFlowTheme.of(context).primaryText
                        : FlutterFlowTheme.of(context).grayLight,
                    size: 24,
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      '5r5nulln' /* Help */,
                    ),
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: currentIndex == 2
                          ? FlutterFlowTheme.of(context).primaryText
                          : FlutterFlowTheme.of(context).grayLight,
                      fontSize: 11.0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
    );
  }
}
