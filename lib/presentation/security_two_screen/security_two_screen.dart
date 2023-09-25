import 'controller/security_two_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_title.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';import 'package:medtech/widgets/custom_icon_button.dart';import 'package:medtech/widgets/custom_outlined_button.dart';import 'package:medtech/widgets/custom_switch.dart';import 'package:medtech/widgets/custom_text_form_field.dart';class SecurityTwoScreen extends GetWidget<SecurityTwoController> {const SecurityTwoScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [Container(padding: EdgeInsets.symmetric(vertical: 14.v), decoration: AppDecoration.fillPrimaryContainer, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 24.v), CustomAppBar(leadingWidth: 43.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleftOnprimarycontainer, margin: EdgeInsets.only(left: 19.h, bottom: 4.v), onTap: () {onTapArrowleftone();}), title: AppbarTitle(text: "lbl_security".tr, margin: EdgeInsets.only(left: 35.h)))])), Container(padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 21.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("lbl_password".tr, style: CustomTextStyles.titleMedium18)), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(7.h), child: CustomImageView(svgPath: ImageConstant.imgIconGray900))]), SizedBox(height: 25.v), Divider(color: appTheme.indigo100), SizedBox(height: 24.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("msg_two_factor_authentication".tr, style: CustomTextStyles.titleMedium18)), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(7.h), child: CustomImageView(svgPath: ImageConstant.imgIconGray900))]), Container(width: 336.h, margin: EdgeInsets.only(top: 28.v, right: 53.h), child: Text("msg_enable_two_factor".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyMedium!.copyWith(height: 1.71))), SizedBox(height: 19.v), Row(children: [Text("lbl_disable".tr, style: CustomTextStyles.titleSmallGray600), Obx(() => CustomSwitch(margin: EdgeInsets.only(left: 10.h), value: controller.isSelectedSwitch.value, onChange: (value) {controller.isSelectedSwitch.value = value;})), Padding(padding: EdgeInsets.only(left: 10.h), child: Text("lbl_enable".tr, style: CustomTextStyles.titleSmallGray90002))]), SizedBox(height: 17.v), Text("msg_enter_otp_sent_to".tr, style: theme.textTheme.titleMedium), SizedBox(height: 8.v), CustomTextFormField(controller: controller.emailController, hintText: "lbl_enter_otp".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1, textInputAction: TextInputAction.done), SizedBox(height: 14.v), RichText(text: TextSpan(children: [TextSpan(text: "msg_didn_t_receive_the2".tr, style: theme.textTheme.bodyMedium), TextSpan(text: "lbl_send_code".tr, style: CustomTextStyles.titleSmallBlueA400_1)]), textAlign: TextAlign.left), SizedBox(height: 23.v), CustomOutlinedButton(width: 115.h, text: "lbl_save".tr), SizedBox(height: 24.v), Divider(color: appTheme.indigo100), SizedBox(height: 24.v), GestureDetector(onTap: () {onTapDiv();}, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("msg_deactivate_account".tr, style: CustomTextStyles.titleMedium18)), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(7.h), child: CustomImageView(svgPath: ImageConstant.imgIconGray900))])), SizedBox(height: 5.v)]))])))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
/// Navigates to the securityOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the securityOneScreen.
onTapDiv() { Get.toNamed(AppRoutes.securityOneScreen, ); } 
 }
