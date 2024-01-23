import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body style
  static get bodyLargeArimo => theme.textTheme.bodyLarge!.arimo;
  // Label text style
  static get labelLargeMontserratGray900 =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: appTheme.gray900,
      );
  // Title text style
  static get titleMediumMontserratIndigo500 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.indigo500,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumMontserratLime900 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.lime900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumMontserratRed900 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.red900,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get arimo {
    return copyWith(
      fontFamily: 'Arimo',
    );
  }
}
