import 'controller/fund_wallet_one_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/custom_elevated_button.dart';import 'package:medtech/widgets/custom_text_form_field.dart';class FundWalletOneScreen extends GetWidget<FundWalletOneController> {const FundWalletOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 25.v), child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 6.v), CustomImageView(svgPath: ImageConstant.imgWalletpana2, height: 109.v, width: 134.h), SizedBox(height: 28.v), Text("msg_add_money_to_your".tr, style: theme.textTheme.titleMedium), SizedBox(height: 26.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_amount2".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 9.v), CustomTextFormField(controller: controller.amountController, hintText: "lbl_0_00".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1, textInputAction: TextInputAction.done)])), bottomNavigationBar: CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 20.v), onTap: () {onTapContinue();}))); } 
/// Navigates to the fundWalletScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the fundWalletScreen.
onTapContinue() { Get.toNamed(AppRoutes.fundWalletScreen, ); } 
 }
