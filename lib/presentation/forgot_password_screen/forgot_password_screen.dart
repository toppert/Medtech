import 'controller/forgot_password_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_subtitle.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';import 'package:medtech/widgets/custom_elevated_button.dart';import 'package:medtech/widgets/custom_text_form_field.dart';class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {const ForgotPasswordScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: CustomAppBar(height: 74.v, leadingWidth: 43.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleft, margin: EdgeInsets.only(left: 19.h, top: 14.v, bottom: 17.v), onTap: () {onTapArrowleftone();}), centerTitle: true, title: AppbarSubtitle(text: "msg_forgot_password".tr)), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 20.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 370.h, margin: EdgeInsets.only(left: 4.h, right: 23.h), child: Text("msg_don_t_worry_it".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyLarge!.copyWith(height: 1.44))), Padding(padding: EdgeInsets.only(left: 4.h, top: 33.v), child: Text("lbl_email".tr, style: theme.textTheme.titleMedium)), CustomTextFormField(controller: controller.emailController, margin: EdgeInsets.only(left: 4.h, top: 10.v), hintText: "lbl_enter".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1, textInputAction: TextInputAction.done, contentPadding: EdgeInsets.all(12.h)), CustomElevatedButton(text: "lbl_submit".tr, margin: EdgeInsets.only(left: 4.h, top: 75.v)), SizedBox(height: 25.v), Align(alignment: Alignment.center, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(svgPath: ImageConstant.imgArrowleftOnprimarycontainer, height: 20.adaptSize, width: 20.adaptSize), GestureDetector(onTap: () {onTapTxtBacktosignin();}, child: Padding(padding: EdgeInsets.only(left: 10.h, top: 3.v), child: Text("lbl_back_to_sign_in".tr, style: CustomTextStyles.bodySmallGray900_1)))])), SizedBox(height: 5.v)])))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
/// Navigates to the signInScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the signInScreen.
onTapTxtBacktosignin() { Get.offNamed(AppRoutes.signInScreen,); } 
 }
