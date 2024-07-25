// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color bgTertiary;
  late Color btnSecondaryBg;
  late Color btnSecondaryBorder;
  late Color btnSecondaryTextColor;
  late Color btnPrimaryBg;
  late Color btnPrimaryText;
  late Color utilitySuccess50;
  late Color utilitySuccess200;
  late Color utilitySuccess700;
  late Color utilityBlue50;
  late Color utilityBlue200;
  late Color utilityBlue700;
  late Color utilityPink50;
  late Color utilityPink200;
  late Color utilityPink700;
  late Color utilitySuccess600;
  late Color utilityError500;
  late Color borderPrimary;
  late Color textTertiary600;
  late Color utilityError700;
  late Color successSecondaryBg;
  late Color textHover;
  late Color utilityError200;
  late Color utilityError50;
  late Color utilityWarning50;
  late Color utilityWarning200;
  late Color utilityWarning500;
  late Color customColor1;
  late Color hoverBg;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF5976DE);
  late Color secondary = const Color(0xFF39D2C0);
  late Color tertiary = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFF262D34);
  late Color primaryText = const Color(0xFF101828);
  late Color secondaryText = const Color(0xFF344054);
  late Color primaryBackground = const Color(0xFFFFFFFF);
  late Color secondaryBackground = const Color(0xFFF9FAFB);
  late Color accent1 = const Color(0xFFF04438);
  late Color accent2 = const Color(0xFFEF6820);
  late Color accent3 = const Color(0xFFFAC515);
  late Color accent4 = const Color(0xFF5976DE);
  late Color success = const Color(0xFF249689);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFF97066);
  late Color info = const Color(0xFFFFFFFF);

  late Color bgTertiary = const Color(0xFFF2F4F7);
  late Color btnSecondaryBg = const Color(0xFFFFFFFF);
  late Color btnSecondaryBorder = const Color(0xFFD0D5DD);
  late Color btnSecondaryTextColor = const Color(0xFF344054);
  late Color btnPrimaryBg = const Color(0xFF2E53D8);
  late Color btnPrimaryText = const Color(0xFFFFFFFF);
  late Color utilitySuccess50 = const Color(0xFFECFDF3);
  late Color utilitySuccess200 = const Color(0xFFABEFC6);
  late Color utilitySuccess700 = const Color(0xFF067647);
  late Color utilityBlue50 = const Color(0xFFEFF8FF);
  late Color utilityBlue200 = const Color(0xFFB2DDFF);
  late Color utilityBlue700 = const Color(0xFF175CD3);
  late Color utilityPink50 = const Color(0xFFFDF2FA);
  late Color utilityPink200 = const Color(0xFFFCCEEE);
  late Color utilityPink700 = const Color(0xFFB42318);
  late Color utilitySuccess600 = const Color(0xFF47CD89);
  late Color utilityError500 = const Color(0xFFF04438);
  late Color borderPrimary = const Color(0xFFEAECF0);
  late Color textTertiary600 = const Color(0xFF475467);
  late Color utilityError700 = const Color(0xFFFDA29B);
  late Color successSecondaryBg = const Color(0xFF079455);
  late Color textHover = const Color(0xFF182230);
  late Color utilityError200 = const Color(0xFFFECDCA);
  late Color utilityError50 = const Color(0xFFFEF3F2);
  late Color utilityWarning50 = const Color(0xFFFFFAEB);
  late Color utilityWarning200 = const Color(0xFFFEDF89);
  late Color utilityWarning500 = const Color(0xFFF79009);
  late Color customColor1 = const Color(0xFFEEE3D5);
  late Color hoverBg = const Color(0xFFE8E8E8);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Outfit';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Outfit',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 64.0,
      );
  String get displayMediumFamily => 'Outfit';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Outfit',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 44.0,
      );
  String get displaySmallFamily => 'Outfit';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Outfit',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'Outfit';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Outfit',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Outfit';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Outfit',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 24.0,
      );
  String get headlineSmallFamily => 'Outfit';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Outfit',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Outfit';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Outfit',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Readex Pro';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Readex Pro',
        color: theme.info,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Readex Pro';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Readex Pro',
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Readex Pro';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Readex Pro',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Readex Pro';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Readex Pro',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Readex Pro';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Readex Pro',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Readex Pro';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Readex Pro',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Readex Pro';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Readex Pro',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Readex Pro';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Readex Pro',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF5976DE);
  late Color secondary = const Color(0xFF39D2C0);
  late Color tertiary = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFF262D34);
  late Color primaryText = const Color(0xFFF7F7F7);
  late Color secondaryText = const Color(0xFFCECECE);
  late Color primaryBackground = const Color(0xFF000000);
  late Color secondaryBackground = const Color(0xFF0A0A0A);
  late Color accent1 = const Color(0xFFF04438);
  late Color accent2 = const Color(0xFFEF6820);
  late Color accent3 = const Color(0xFFFAC515);
  late Color accent4 = const Color(0xFF5976DE);
  late Color success = const Color(0xFF249689);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFF97066);
  late Color info = const Color(0xFFFFFFFF);

  late Color bgTertiary = const Color(0xFF191919);
  late Color btnSecondaryBg = const Color(0xFF272727);
  late Color btnSecondaryBorder = const Color(0xFF454545);
  late Color btnSecondaryTextColor = const Color(0xFFCECECE);
  late Color btnPrimaryBg = const Color(0xFF2E53D8);
  late Color btnPrimaryText = const Color(0xFFFFFFFF);
  late Color utilitySuccess50 = const Color(0xFF053321);
  late Color utilitySuccess200 = const Color(0xFF085D3A);
  late Color utilitySuccess700 = const Color(0xFF75E0A7);
  late Color utilityBlue50 = const Color(0xFF102A56);
  late Color utilityBlue200 = const Color(0xFF1849A9);
  late Color utilityBlue700 = const Color(0xFF84CAFF);
  late Color utilityPink50 = const Color(0xFF4E0D30);
  late Color utilityPink200 = const Color(0xFF9E165F);
  late Color utilityPink700 = const Color(0xFFFAA7E0);
  late Color utilitySuccess600 = const Color(0xFF47CD89);
  late Color utilityError500 = const Color(0xFFF04438);
  late Color borderPrimary = const Color(0xFF202020);
  late Color textTertiary600 = const Color(0xFF868686);
  late Color utilityError700 = const Color(0xFFFDA29B);
  late Color successSecondaryBg = const Color(0xFF079455);
  late Color textHover = const Color(0xFFE9E9E9);
  late Color utilityError200 = const Color(0xFF912018);
  late Color utilityError50 = const Color(0xFF55160C);
  late Color utilityWarning50 = const Color(0xFF4E1D09);
  late Color utilityWarning200 = const Color(0xFF93370D);
  late Color utilityWarning500 = const Color(0xFFF79009);
  late Color customColor1 = const Color(0xFFEEE3D5);
  late Color hoverBg = const Color(0xFF191919);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
    List<Shadow>? shadows,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
              shadows: shadows,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
              shadows: shadows,
            );
}
