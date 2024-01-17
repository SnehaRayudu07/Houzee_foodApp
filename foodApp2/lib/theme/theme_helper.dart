import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.green50,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.h),
          ),
          shadowColor: appTheme.black90001.withOpacity(0.25),
          elevation: 4,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 4,
        space: 4,
        color: appTheme.blueGray100D8,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 16.fSize,
          fontFamily: 'Acme',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.blueGray400E501,
          fontSize: 15.fSize,
          fontFamily: 'Acme',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.black90001,
          fontSize: 12.fSize,
          fontFamily: 'Acme',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: appTheme.black90001,
          fontSize: 35.fSize,
          fontFamily: 'Acme',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.black90001,
          fontSize: 30.fSize,
          fontFamily: 'Acme',
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: appTheme.green100,
          fontSize: 26.fSize,
          fontFamily: 'Acme',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: appTheme.black90001,
          fontSize: 24.fSize,
          fontFamily: 'Acme',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: appTheme.black90001,
          fontSize: 12.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.black90001,
          fontSize: 20.fSize,
          fontFamily: 'Acme',
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 14.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF2C5B44),
    primaryContainer: Color(0XFFFFFFFF),
    secondaryContainer: Color(0XFF2B5B44),

    // Error colors
    errorContainer: Color(0XFFC4C4C4),
    onError: Color(0XFF028820),

    // On colors(text colors)
    onPrimary: Color(0XFF0E0C0C),
    onPrimaryContainer: Color(0XFFEF0A0A),
    onSecondaryContainer: Color(0XFFFFFFFF),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF040000);
  Color get black90001 => Color(0XFF000000);

  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray10001 => Color(0XFFD6CFCF);
  Color get blueGray50 => Color(0XFFF1F1F1);
  Color get blueGray5001 => Color(0XFFF1F1F2);
  Color get blueGray800 => Color(0XFF2B5B44);
  Color get blueGray80001 => Color(0XFF2C5B44);

  // BlueGrayD
  Color get blueGray100D8 => Color(0XD8D7D7E1);

  // BlueGrayE
  Color get blueGray400E5 => Color(0XE5858C83);
  Color get blueGray400E501 => Color(0XE5858C82);

  // DeepOrange
  Color get deepOrange300 => Color(0XFFFF785B);
  Color get deepOrange50 => Color(0XFFFAECE9);

  // Gray
  Color get gray100 => Color(0XFFF4F4F4);
  Color get gray200 => Color(0XFFEBE6E6);
  Color get gray20001 => Color(0XFFEEEEEB);
  Color get gray300 => Color(0XFFE9E0E0);
  Color get gray30001 => Color(0XFFEBE3E3);
  Color get gray400 => Color(0XFFC4C4C4);
  Color get gray40001 => Color(0XFFC3C2B8);
  Color get gray50 => Color(0XFFFEFBFA);
  Color get gray500 => Color(0XFF8F8F8F);
  Color get gray5001 => Color(0XFFFEFAF9);
  Color get gray600 => Color(0XFF736969);
  Color get gray700 => Color(0XFF5D5858);
  Color get gray70001 => Color(0XFF5D5959);
  Color get gray80033 => Color(0X33494949);

  // GrayE
  Color get gray500E5 => Color(0XE5999A98);

  // Green
  Color get green100 => Color(0XFFC8D6C2);
  Color get green50 => Color(0XFFE2F5DA);
  Color get green5001 => Color(0XFFE2F5D9);
  Color get greenA700 => Color(0XFF06C167);
  Color get greenA70033 => Color(0X3305FA00);

  // GreenA
  Color get greenA700A2 => Color(0XA206C167);

  // Indigo
  Color get indigo200 => Color(0XFF93B2E0);

  // LightGreen
  Color get lightGreenA70033 => Color(0X3348F644);

  // Red
  Color get red400 => Color(0XFFEF5B5B);
  Color get red700 => Color(0XFFE02929);

  // White
  Color get whiteA700 => Color(0XFFFEFFFE);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();