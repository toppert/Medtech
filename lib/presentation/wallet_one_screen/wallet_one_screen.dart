import 'controller/wallet_one_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_title.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';import 'package:medtech/widgets/custom_elevated_button.dart';class WalletOneScreen extends GetWidget<WalletOneController> {const WalletOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [Container(padding: EdgeInsets.symmetric(vertical: 17.v), decoration: AppDecoration.fillPrimaryContainer, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 19.v), CustomAppBar(leadingWidth: 43.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleftOnprimarycontainer, margin: EdgeInsets.only(left: 19.h, top: 3.v, bottom: 1.v), onTap: () {onTapArrowleftone();}), title: AppbarTitle(text: "lbl_wallet".tr, margin: EdgeInsets.only(left: 35.h)))])), Container(padding: EdgeInsets.only(top: 209.v), child: Column(children: [CustomImageView(svgPath: ImageConstant.imgWalletpana1, height: 117.v, width: 153.h), SizedBox(height: 23.v), Text("msg_no_wallet_account".tr, style: theme.textTheme.titleLarge), SizedBox(height: 15.v), Text("msg_you_do_not_have".tr, style: CustomTextStyles.bodyMediumGray600_1), SizedBox(height: 23.v), CustomElevatedButton(width: 283.h, text: "lbl_create_wallet".tr, onTap: () {onTapCreatewallet();}), SizedBox(height: 5.v)]))])))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
/// Navigates to the createWalletScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the createWalletScreen.
onTapCreatewallet() { Get.toNamed(AppRoutes.createWalletScreen, ); } 
 }
