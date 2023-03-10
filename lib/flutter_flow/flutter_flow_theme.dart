// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) => LightModeTheme();

  Color primaryColor;
  Color secondaryColor;
  Color tertiaryColor;
  Color alternate;
  Color primaryBackground;
  Color secondaryBackground;
  Color primaryText;
  Color secondaryText;

  Color background;
  Color darkBackground;
  Color textColor;
  Color grayDark;
  Color grayLight;
  Color primaryBtnText;
  Color lineColor;
  Color grayIcon;
  Color gray200;
  Color gray600;
  Color black600;
  Color tertiary400;

  TextStyle get title1 => GoogleFonts.getFont(
        'Inter',
        color: primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 24,
      );
  TextStyle get title2 => GoogleFonts.getFont(
        'Inter',
        color: primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      );
  TextStyle get title3 => GoogleFonts.getFont(
        'Inter',
        color: primaryText,
        fontWeight: FontWeight.w800,
        fontSize: 14,
      );
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Inter',
        color: primaryText,
        fontWeight: FontWeight.w300,
        fontSize: 14,
      );
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Inter',
        color: primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Inter',
        color: primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Inter',
        color: primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
}

class LightModeTheme extends FlutterFlowTheme {
  Color primaryColor = const Color(0xFF3158BC);
  Color secondaryColor = const Color(0xFF4259A9);
  Color tertiaryColor = const Color(0xFFC8F16D);
  Color alternate = const Color(0xFFFF5963);
  Color primaryBackground = const Color(0xFFFFFFFF);
  Color secondaryBackground = const Color(0xFF192E64);
  Color primaryText = const Color(0xFF000000);
  Color secondaryText = const Color(0xFFFFFFFF);

  Color background = Color(0xFFFFFFFF);
  Color darkBackground = Color(0xFF111417);
  Color textColor = Color(0xFF000000);
  Color grayDark = Color(0xFF57636C);
  Color grayLight = Color(0xFF8B97A2);
  Color primaryBtnText = Color(0xFFFFFFFF);
  Color lineColor = Color(0xFFE0E3E7);
  Color grayIcon = Color(0xFF95A1AC);
  Color gray200 = Color(0xFFDBE2E7);
  Color gray600 = Color(0xFF262D34);
  Color black600 = Color(0xFF090F13);
  Color tertiary400 = Color(0xFF39D2C0);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String fontFamily,
    Color color,
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool useGoogleFonts = true,
    TextDecoration decoration,
    double lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
