import 'controller/payment_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/core/utils/validation_functions.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_title.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';import 'package:medtech/widgets/custom_elevated_button.dart';import 'package:medtech/widgets/custom_radio_button.dart';import 'package:medtech/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class PaymentScreen extends GetWidget<PaymentController> {PaymentScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(children: [Container(padding: EdgeInsets.symmetric(vertical: 17.v), decoration: AppDecoration.fillPrimaryContainer, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 19.v), CustomAppBar(leadingWidth: 43.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleftOnprimarycontainer, margin: EdgeInsets.only(left: 19.h, top: 3.v, bottom: 1.v), onTap: () {onTapArrowleftone();}), title: AppbarTitle(text: "lbl_checkout".tr, margin: EdgeInsets.only(left: 35.h)))])), Container(padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 20.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 17.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(svgPath: ImageConstant.imgTeenyiconstickcirclesolid, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(left: 5.h, top: 4.v, bottom: 2.v), child: Text("lbl_shipping".tr, style: theme.textTheme.titleSmall)), Padding(padding: EdgeInsets.only(top: 12.v, bottom: 11.v), child: SizedBox(width: 35.h, child: Divider(color: appTheme.gray400, indent: 15.h))), Container(margin: EdgeInsets.only(left: 15.h), padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 3.v), decoration: AppDecoration.fillGreen.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Text("lbl_2".tr, style: CustomTextStyles.titleSmallPrimaryContainerSemiBold)), Padding(padding: EdgeInsets.only(left: 5.h, top: 5.v), child: Text("lbl_payment".tr, style: theme.textTheme.titleSmall)), Padding(padding: EdgeInsets.only(top: 12.v, bottom: 11.v), child: SizedBox(width: 35.h, child: Divider(color: appTheme.gray400, indent: 15.h))), CustomImageView(svgPath: ImageConstant.imgFrame1000000857, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 15.h)), Padding(padding: EdgeInsets.only(left: 5.h, top: 3.v, bottom: 3.v), child: Text("lbl_review".tr, style: CustomTextStyles.bodyMediumGray400))]))), SizedBox(height: 31.v), Text("msg_choose_a_payment".tr, style: CustomTextStyles.titleMedium18), Container(width: 351.h, margin: EdgeInsets.only(top: 18.v, right: 38.h), child: Text("msg_you_will_not_be".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyLarge!.copyWith(height: 1.38))), SizedBox(height: 28.v), Obx(() => Column(children: [CustomRadioButton(text: "lbl_wallet".tr, value: controller.paymentModelObj.value.radioList.value[0], groupValue: controller.messageEnglish.value, margin: EdgeInsets.only(right: 40.h), textStyle: theme.textTheme.bodyLarge, onChange: (value) {controller.messageEnglish.value = value;}), CustomRadioButton(text: "lbl_credit_card".tr, value: controller.paymentModelObj.value.radioList.value[1], groupValue: controller.messageEnglish.value, margin: EdgeInsets.only(top: 31.v), textStyle: theme.textTheme.titleMedium, onChange: (value) {controller.messageEnglish.value = value;})])), SizedBox(height: 21.v), Text("lbl_name".tr, style: theme.textTheme.titleMedium), SizedBox(height: 14.v), CustomTextFormField(controller: controller.nameController, hintText: "lbl_enter_full_name".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1, validator: (value) {if (!isText(value)) {return "Please enter valid text";} return null;}), SizedBox(height: 19.v), Text("lbl_card_number".tr, style: theme.textTheme.titleMedium), SizedBox(height: 15.v), CustomTextFormField(controller: controller.cardNumberController, hintText: "lbl_enter".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1), SizedBox(height: 21.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Padding(padding: EdgeInsets.only(right: 5.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_expiry_date".tr, style: theme.textTheme.titleMedium), SizedBox(height: 8.v), CustomTextFormField(width: 190.h, controller: controller.expirydateController, hintText: "lbl_mm_yy".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1)]))), Expanded(child: Padding(padding: EdgeInsets.only(left: 5.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_security_code".tr, style: theme.textTheme.titleMedium), SizedBox(height: 8.v), CustomTextFormField(width: 190.h, controller: controller.securityCodeController, hintText: "lbl_enter_cvv".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1, textInputAction: TextInputAction.done)])))]), SizedBox(height: 5.v)]))]))), bottomNavigationBar: CustomElevatedButton(height: 52.v, text: "lbl_continue".tr, margin: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 30.v), onTap: () {onTapContinue();}))); } 
/// Navigates to the reviewScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the reviewScreen.
onTapContinue() { Get.toNamed(AppRoutes.reviewScreen, ); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
 }
