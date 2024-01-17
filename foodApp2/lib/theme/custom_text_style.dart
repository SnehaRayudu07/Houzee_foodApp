import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge17 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 17.fSize,
      );
  static get bodyLargeAclonica => theme.textTheme.bodyLarge!.aclonica;
  static get bodyLargeAcme => theme.textTheme.bodyLarge!.acme.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeAcmeGray70001 => theme.textTheme.bodyLarge!.acme.copyWith(
        color: appTheme.gray70001,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeAladin => theme.textTheme.bodyLarge!.aladin.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeBlack90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: 17.fSize,
      );
  static get bodyLargeBlack9000117 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: 17.fSize,
      );
  static get bodyLargeBlack9000118 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: 18.fSize,
      );
  static get bodyLargeBlack90001Light => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeBlack90001_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get bodyLargeGray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray400,
      );
  static get bodyLargeGray50 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeGray70001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray70001,
        fontSize: 17.fSize,
      );
  static get bodyLargeLight => theme.textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 17.fSize,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get bodyLargePrimary17 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 17.fSize,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 17.fSize,
      );
  static get bodyLargePrimary_1 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodyLargeRed400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red400,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeRobotoGray600 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w100,
      );
  static get bodyLargeRobotoRed400 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.red400,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeRobotoff736969 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: Color(0XFF736969),
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeRobotoffef5b5b =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: Color(0XFFEF5B5B),
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeff736969 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF736969),
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeffef5b5b => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFFEF5B5B),
        fontWeight: FontWeight.w300,
      );
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumAcmeBlack90001 =>
      theme.textTheme.bodyMedium!.acme.copyWith(
        color: appTheme.black90001,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumAcmeBlack90001Regular =>
      theme.textTheme.bodyMedium!.acme.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumAcmeBlack90001Regular14 =>
      theme.textTheme.bodyMedium!.acme.copyWith(
        color: appTheme.black90001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumAcmeBluegray400e5 =>
      theme.textTheme.bodyMedium!.acme.copyWith(
        color: appTheme.blueGray400E5,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumAcmeBluegray400e501 =>
      theme.textTheme.bodyMedium!.acme.copyWith(
        color: appTheme.blueGray400E501,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumAcmeGray500 => theme.textTheme.bodyMedium!.acme.copyWith(
        color: appTheme.gray500,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumAcmeGray500e5 =>
      theme.textTheme.bodyMedium!.acme.copyWith(
        color: appTheme.gray500E5,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumAcmeOnSecondaryContainer =>
      theme.textTheme.bodyMedium!.acme.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumAcmeOnSecondaryContainerRegular =>
      theme.textTheme.bodyMedium!.acme.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumAcmePrimary => theme.textTheme.bodyMedium!.acme.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumAcmePrimaryContainer =>
      theme.textTheme.bodyMedium!.acme.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumAcmePrimaryContainerRegular =>
      theme.textTheme.bodyMedium!.acme.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumAcmePrimaryRegular =>
      theme.textTheme.bodyMedium!.acme.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumAcmePrimaryRegular14 =>
      theme.textTheme.bodyMedium!.acme.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumAcmeff000000 =>
      theme.textTheme.bodyMedium!.acme.copyWith(
        color: Color(0XFF000000),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumAcmefff69235 =>
      theme.textTheme.bodyMedium!.acme.copyWith(
        color: Color(0XFFF69235),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumAcmeffffffff =>
      theme.textTheme.bodyMedium!.acme.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumBlack90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get bodyMediumBlack9000113 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack9000114 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 14.fSize,
      );
  static get bodyMediumBlack9000115 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 15.fSize,
      );
  static get bodyMediumBluegray400e5 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400E5,
      );
  static get bodyMediumBluegray400e501 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400E501,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray400,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray40001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40001,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray40002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40001,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumGray500e5 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500E5,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumLight => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 15.fSize,
      );
  static get bodyMediumPrimary14 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 14.fSize,
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 13.fSize,
      );
  static get bodyMediumPrimaryContainer14 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 14.fSize,
      );
  static get bodyMediumPrimaryContainer_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumRed400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.red400,
      );
  static get bodyMediumRobotoBlack90001 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w100,
      );
  static get bodyMediumRobotoBlack90001Thin =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.black90001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w100,
      );
  static get bodyMediumRobotoGray400 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray400,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w100,
      );
  static get bodyMediumRobotoGray40001 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray40001,
        fontSize: 13.fSize,
      );
  static get bodyMediumRobotoGray600 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray600,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w100,
      );
  static get bodyMediumRobotoRed400 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.red400,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w100,
      );
  static get bodyMediumRobotoff000000 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: Color(0XFF000000),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w100,
      );
  static get bodyMediumRobotoff736969 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: Color(0XFF736969),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w100,
      );
  static get bodyMediumRobotoffc3c2b8 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: Color(0XFFC3C2B8),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumRobotoffc4c4c4 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: Color(0XFFC4C4C4),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumRobotoffef5b5b =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: Color(0XFFEF5B5B),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w100,
      );
  static get bodyMediumff000000 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF000000),
      );
  static get bodyMediumff736969 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF736969),
        fontSize: 13.fSize,
      );
  static get bodyMediumffc3c2b8 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFC3C2B8),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumffc4c4c4 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFC4C4C4),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumffef5b5b => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFEF5B5B),
      );
  static get bodyMediumfff69235 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFF69235),
      );
  static get bodyMediumffffffff => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallAcmeOnPrimary => theme.textTheme.bodySmall!.acme.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallAladin => theme.textTheme.bodySmall!.aladin.copyWith(
        fontSize: 8.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallAladinGreen100 =>
      theme.textTheme.bodySmall!.aladin.copyWith(
        color: appTheme.green100,
        fontSize: 8.fSize,
      );
  static get bodySmallBluegray400e501 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400E501,
      );
  static get bodySmallCalibriOnSecondaryContainer =>
      theme.textTheme.bodySmall!.calibri.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallCalibriPrimaryContainer =>
      theme.textTheme.bodySmall!.calibri.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallDeeporange300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.deepOrange300,
        fontSize: 11.fSize,
      );
  static get bodySmallGreen100 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green100,
      );
  static get bodySmallGreen1008 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green100,
        fontSize: 8.fSize,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodySmallRoboto => theme.textTheme.bodySmall!.roboto;
  static get bodySmallRobotoBlack90001 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.black90001,
      );
  static get bodySmallRobotoBlack9000110 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.black90001,
        fontSize: 10.fSize,
      );
  static get bodySmallRobotoBlack90001Regular =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRobotoBlack90001Thin =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w100,
      );
  static get bodySmallRobotoBluegray400e501 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.blueGray400E501,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRobotoDeeporange300 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.deepOrange300,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w100,
      );
  static get bodySmallRobotoErrorContainer =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallRobotoGray400 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.gray400,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallRobotoff000000 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w100,
      );
  static get bodySmallRobotoff000000Thin =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: Color(0XFF000000),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w100,
      );
  static get bodySmallff000000 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF000000),
        fontSize: 10.fSize,
      );
  // Headline text style
  static get headlineLargeAcmePrimaryContainer =>
      theme.textTheme.headlineLarge!.acme.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 32.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargeLight => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get headlineLargeOnSecondaryContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 32.fSize,
      );
  static get headlineLargePrimaryContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 32.fSize,
      );
  static get headlineSmall25 => theme.textTheme.headlineSmall!.copyWith(
        fontSize: 25.fSize,
      );
  static get headlineSmallBluegray100 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray100,
        fontSize: 24.fSize,
      );
  static get headlineSmallBluegray10001 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray10001,
      );
  // Label text style
  static get labelLarge13 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
      );
  static get labelLargeOnSecondaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get labelLargeffffffff => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  // Robotoff text style
  static get robotoff000000 => TextStyle(
        color: Color(0XFF000000),
        fontSize: 6.fSize,
        fontWeight: FontWeight.w300,
      ).roboto;
  // Robotoffffffff text style
  static get robotoffffffff => TextStyle(
        color: Color(0XFFFFFFFF),
        fontSize: 6.fSize,
        fontWeight: FontWeight.w300,
      ).roboto;
  // Title text style
  static get titleLargeAcme => theme.textTheme.titleLarge!.acme.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeExtraLight => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w200,
      );
  static get titleLargeGray700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get titleLargeGray70001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray70001,
      );
  static get titleLargeGreen100 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.green100,
      );
  static get titleLargeOnSecondaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
}

extension on TextStyle {
  TextStyle get aclonica {
    return copyWith(
      fontFamily: 'Aclonica',
    );
  }

  TextStyle get acme {
    return copyWith(
      fontFamily: 'Acme',
    );
  }

  TextStyle get calibri {
    return copyWith(
      fontFamily: 'Calibri',
    );
  }

  TextStyle get aladin {
    return copyWith(
      fontFamily: 'Aladin',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
