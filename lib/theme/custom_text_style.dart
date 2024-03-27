import 'package:flutter/material.dart';
import 'package:jayesh_s_application2/core/utils/size_utils.dart';
import 'package:jayesh_s_application2/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body style
  static get bodyMediumRhodiumLibre => theme.textTheme.bodyMedium!.rhodiumLibre;
  static get bodyMediumRhodiumLibreGray70001 =>
      theme.textTheme.bodyMedium!.rhodiumLibre.copyWith(
        color: appTheme.gray70001,
      );
  static get bodySmallInterOnError => theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get bodySmallLexendOnError =>
      theme.textTheme.bodySmall!.lexend.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 12.fSize,
      );
  static get bodySmallLexendff000000 =>
      theme.textTheme.bodySmall!.lexend.copyWith(
        color: Color(0XFF000000),
        fontSize: 12.fSize,
      );
  static get bodySmallOnError => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get bodySmallRhodiumLibreOnError =>
      theme.textTheme.bodySmall!.rhodiumLibre.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 8.fSize,
      );
  static get bodySmallRhodiumLibreOnError9 =>
      theme.textTheme.bodySmall!.rhodiumLibre.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 9.fSize,
      );
  static get bodySmallRhodiumLibreOnError_1 =>
      theme.textTheme.bodySmall!.rhodiumLibre.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get bodySmallRhodiumLibreOnPrimary =>
      theme.textTheme.bodySmall!.rhodiumLibre.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 12.fSize,
      );
  static get bodySmallRhodiumLibreOnPrimaryContainer =>
      theme.textTheme.bodySmall!.rhodiumLibre.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 12.fSize,
      );
  static get bodySmallRhodiumLibreRed900 =>
      theme.textTheme.bodySmall!.rhodiumLibre.copyWith(
        color: appTheme.red900,
        fontSize: 12.fSize,
      );
  static get bodySmallRhodiumLibreRed90001 =>
      theme.textTheme.bodySmall!.rhodiumLibre.copyWith(
        color: appTheme.red90001,
        fontSize: 12.fSize,
      );
  // Inter text style
  static get interOnError => TextStyle(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  static get interOnErrorRegular => TextStyle(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 5.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  // Lexend text style
  static get lexendOnError => TextStyle(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).lexend;
  // Lexendff text style
  static get lexendff000000 => TextStyle(
        color: Color(0XFF000000),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).lexend;
  // Reggae text style
  static get reggaeOneOnError => TextStyle(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).reggaeOne;
  static get reggaeOneOnErrorRegular => TextStyle(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 5.fSize,
        fontWeight: FontWeight.w400,
      ).reggaeOne;
  static get reggaeOnePrimary => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w400,
      ).reggaeOne;
  // Title text style
  static get titleLargeErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w800,
      );
}

extension on TextStyle {
  TextStyle get rhodiumLibre {
    return copyWith(
      fontFamily: 'Rhodium Libre',
    );
  }

  TextStyle get lexend {
    return copyWith(
      fontFamily: 'Lexend',
    );
  }

  TextStyle get reggaeOne {
    return copyWith(
      fontFamily: 'Reggae One',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
