import 'controller/sign_in_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/core/utils/validation_functions.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_subtitle.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';import 'package:medtech/widgets/custom_elevated_button.dart';import 'package:medtech/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {SignInScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: CustomAppBar(height: 74.v, leadingWidth: 43.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleft, margin: EdgeInsets.only(left: 19.h, top: 14.v, bottom: 17.v), onTap: () {onTapArrowleftone();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_sign_in".tr)), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 3.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_welcome_back".tr, style: theme.textTheme.bodyLarge)), Padding(padding: EdgeInsets.only(left: 4.h, top: 35.v), child: Text("lbl_email".tr, style: theme.textTheme.titleMedium)), CustomTextFormField(controller: controller.emailController, margin: EdgeInsets.only(left: 4.h, top: 10.v), hintText: "lbl_enter".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1, contentPadding: EdgeInsets.all(12.h)), Padding(padding: EdgeInsets.only(left: 4.h, top: 19.v), child: Text("lbl_password".tr, style: theme.textTheme.titleMedium)), Obx(() => CustomTextFormField(controller: controller.passwordController, margin: EdgeInsets.only(left: 4.h, top: 10.v), hintText: "lbl_enter".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, suffix: InkWell(onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;}, child: Container(margin: EdgeInsets.fromLTRB(12.h, 9.v, 13.h, 9.v), decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.h)), child: CustomImageView(svgPath: controller.isShowPassword.value ? ImageConstant.imgIconBlueGray400 : ImageConstant.imgIconBlueGray400))), suffixConstraints: BoxConstraints(maxHeight: 42.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "Please enter valid password";} return null;}, obscureText: controller.isShowPassword.value, contentPadding: EdgeInsets.only(left: 20.h, top: 12.v, bottom: 12.v))), SizedBox(height: 10.v), Align(alignment: Alignment.centerRight, child: GestureDetector(onTap: () {onTapTxtForgotpassword();}, child: Text("msg_forgot_password".tr, style: CustomTextStyles.bodySmallBluegray300))), CustomElevatedButton(text: "lbl_sign_in".tr, margin: EdgeInsets.only(left: 4.h, top: 65.v)), SizedBox(height: 20.v), Align(alignment: Alignment.center, child: GestureDetector(onTap: () {onTapTxtDonthaveanaccount();}, child: RichText(text: TextSpan(children: [TextSpan(text: "msg_don_t_have_an_account2".tr, style: theme.textTheme.bodyMedium), TextSpan(text: "lbl_sign_up".tr, style: CustomTextStyles.bodyMediumPrimary)]), textAlign: TextAlign.left))), SizedBox(height: 5.v)]))))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
/// Navigates to the forgotPasswordScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the forgotPasswordScreen.
onTapTxtForgotpassword() { Get.offNamed(AppRoutes.forgotPasswordScreen,); } 



onTapTxtDonthaveanaccount() { // TODO: implement Actions
 } 
 }
