import 'controller/fund_wallet_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_title.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';import 'package:medtech/widgets/custom_elevated_button.dart';import 'package:medtech/widgets/custom_radio_button.dart';class FundWalletScreen extends GetWidget<FundWalletController> {const FundWalletScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [Container(padding: EdgeInsets.symmetric(vertical: 17.v), decoration: AppDecoration.fillPrimaryContainer, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 19.v), CustomAppBar(leadingWidth: 43.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleftOnprimarycontainer, margin: EdgeInsets.only(left: 19.h, top: 3.v, bottom: 1.v), onTap: () {onTapArrowleftone();}), title: AppbarTitle(text: "lbl_fund_wallet".tr, margin: EdgeInsets.only(left: 35.h)))])), Container(padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 17.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_select_card_to_fund".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 32.v), Obx(() => Column(children: [CustomRadioButton(width: 390.h, value: controller.fundWalletModelObj.value.radioList.value[0], groupValue: controller.radioGroup.value, isRightCheck: true, onChange: (value) {controller.radioGroup.value = value;}), CustomRadioButton(width: 390.h, value: controller.fundWalletModelObj.value.radioList.value[1], groupValue: controller.radioGroup.value, margin: EdgeInsets.only(top: 27.v), isRightCheck: true, onChange: (value) {controller.radioGroup.value = value;})])), SizedBox(height: 31.v), Divider(color: appTheme.indigo100), SizedBox(height: 29.v), CustomElevatedButton(height: 24.v, width: 101.h, text: "lbl_add_card".tr, leftIcon: Container(margin: EdgeInsets.only(right: 4.h), child: CustomImageView(svgPath: ImageConstant.imgPlus)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: CustomTextStyles.titleMediumPrimarySemiBold, onTap: () {onTapAddcard();}), SizedBox(height: 5.v)]))])), bottomNavigationBar: CustomElevatedButton(text: "lbl_fund".tr, margin: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 30.v), onTap: () {onTapFund();}))); } 
/// Navigates to the walletScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the walletScreen.
onTapFund() { Get.toNamed(AppRoutes.walletScreen, ); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
/// Navigates to the addCardScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the addCardScreen.
onTapAddcard() { Get.toNamed(AppRoutes.addCardScreen, ); } 
 }
