import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodyLargeBluegray500_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeInterBluegray500 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodyLargeInterBluegray500_1 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodyLargeInterOnError => theme.textTheme.bodyLarge!.inter.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyLargeRobotoBluegray500 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBlueA400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueA400,
      );
  static get bodyMediumBlueA400_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueA400,
      );
  static get bodyMediumBluegray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodyMediumBluegray500_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodyMediumBluegray500_2 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumBluegray90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumGray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray400,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumGray600_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumGray90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90001,
      );
  static get bodyMediumGray90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyMediumGray900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumIndigo100 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigo100,
      );
  static get bodyMediumIndigo100_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigo100,
      );
  static get bodyMediumInter => theme.textTheme.bodyMedium!.inter;
  static get bodyMediumInterBlack900 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumNunitoSansIndigo100 =>
      theme.textTheme.bodyMedium!.nunitoSans.copyWith(
        color: appTheme.indigo100,
      );
  static get bodyMediumOnError => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyMediumOnErrorLight => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumOnError_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumOnPrimaryContainer_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallBlueA400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueA400,
      );
  static get bodySmallBlueA400_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueA400,
      );
  static get bodySmallBluegray300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallBluegray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray500,
        fontSize: 10.fSize,
      );
  static get bodySmallBluegray500_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodySmallBluegray500_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodySmallBluegray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodySmallGray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray400,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallGray600Light => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallGray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900,
      );
  static get bodySmallGray900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900,
      );
  static get bodySmallInter => theme.textTheme.bodySmall!.inter.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallInterBluegray500 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray500,
        fontSize: 10.fSize,
      );
  static get bodySmallInterBluegray900 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodySmallInterErrorContainer =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodySmallInterGray400 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray400,
      );
  static get bodySmallLight => theme.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallPoppinsBluegray900 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodySmallPoppinsErrorContainer =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodySmallPoppinsOnPrimaryContainer =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Headline text style
  static get headlineLargeBold => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineLargePrimary => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineLargePrimaryContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get headlineLargePrimaryContainerBold =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallGray100 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallPrimaryContainerBold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallPrimaryContainerSemiBold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallSemiBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeBlueA400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueA400,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBlueA400_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueA400,
      );
  static get labelLargeBluegray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBluegray40001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray40001,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get labelLargeGray900SemiBold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray900_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get labelLargeIndigo100 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigo100,
      );
  static get labelLargeInterGray900 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray900,
      );
  static get labelLargeInterPrimaryContainer =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimarySemiBold => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeBlueA400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueA400,
      );
  static get titleLargeInterBluegray500 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.blueGray500,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInterRed800 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.red800,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimaryContainer22 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 22.fSize,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumBlueA400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueA400,
      );
  static get titleMediumBlueA400SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueA400,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlueA400_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueA400,
      );
  static get titleMediumBluegray500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray500,
      );
  static get titleMediumBluegray500SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray500,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBluegray500_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray500,
      );
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBluegray900SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBluegray900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumErrorContainer => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleMediumErrorContainerSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumErrorContainerSemiBold18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumErrorContainerSemiBold_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGreen500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green500,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInter => theme.textTheme.titleMedium!.inter;
  static get titleMediumInterBluegray500 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.blueGray500,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterSemiBold =>
      theme.textTheme.titleMedium!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimaryContainerSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimaryContainerSemiBold18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnSecondary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondary,
      );
  static get titleMediumPoppinsBluegray900 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsErrorContainer =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsPrimaryContainer =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumPrimaryBold => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get titleMediumPrimaryContainer18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get titleMediumPrimaryContainerBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimaryContainerBold18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimaryContainerSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimaryContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get titleMediumPrimaryContainer_2 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get titleMediumPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRobotoBlack900 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 18.fSize,
      );
  static get titleMediumSecondaryContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_2 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_3 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmall15 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
      );
  static get titleSmallAmberA400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.amberA400,
      );
  static get titleSmallBlueA400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueA400,
      );
  static get titleSmallBlueA400SemiBold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueA400,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlueA400_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueA400,
      );
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray90015 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 15.fSize,
      );
  static get titleSmallBluegray900_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleSmallBluegray900_2 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleSmallErrorContainer15 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 15.fSize,
      );
  static get titleSmallErrorContainerSemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallErrorContainer_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleSmallGray10002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray10002,
        fontSize: 15.fSize,
      );
  static get titleSmallGray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray400,
        fontSize: 15.fSize,
      );
  static get titleSmallGray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmallGray600_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmallGray90002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90002,
      );
  static get titleSmallGreen500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.green500,
      );
  static get titleSmallIndigo100 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigo100,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterGray90001 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMedium_1 => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnError => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get titleSmallOnError_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimary15 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get titleSmallPrimaryContainerSemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimaryMedium => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimarySemiBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSemiBold_1 => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmall_1 => theme.textTheme.titleSmall!;
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get workSans {
    return copyWith(
      fontFamily: 'Work Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get nunitoSans {
    return copyWith(
      fontFamily: 'Nunito Sans',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
