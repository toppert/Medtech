import 'controller/create_account_doctor_controller.dart';import 'models/create_account_doctor_model.dart';import 'package:country_pickers/country.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/core/utils/validation_functions.dart';import 'package:medtech/widgets/custom_elevated_button.dart';import 'package:medtech/widgets/custom_phone_number.dart';import 'package:medtech/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class CreateAccountDoctorPage extends StatelessWidget {CreateAccountDoctorPage({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

CreateAccountDoctorController controller = Get.put(CreateAccountDoctorController(CreateAccountDoctorModel().obs));

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SingleChildScrollView(child: Column(children: [Padding(padding: EdgeInsets.only(left: 19.h, top: 31.v, right: 15.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_create_an_account".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 27.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Padding(padding: EdgeInsets.only(right: 7.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_first_name".tr, style: theme.textTheme.titleMedium), SizedBox(height: 10.v), CustomTextFormField(width: 190.h, controller: controller.firstNameController, hintText: "lbl_enter".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1, contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 11.v))]))), Expanded(child: Padding(padding: EdgeInsets.only(left: 7.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_last_name".tr, style: theme.textTheme.titleMedium), SizedBox(height: 9.v), CustomTextFormField(width: 190.h, controller: controller.lastNameController, hintText: "lbl_enter".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1, contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 11.v))])))]), SizedBox(height: 19.v), Text("lbl_phone_number".tr, style: theme.textTheme.titleMedium), SizedBox(height: 10.v), Obx(() => CustomPhoneNumber(country: controller.selectedCountry.value, controller: controller.phoneNumberController, onTap: (Country country) {controller.selectedCountry.value = country;})), SizedBox(height: 19.v), Text("lbl_email".tr, style: theme.textTheme.titleMedium), SizedBox(height: 10.v), CustomTextFormField(controller: controller.emailController, hintText: "lbl_enter".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1, contentPadding: EdgeInsets.all(12.h)), SizedBox(height: 19.v), Text("lbl_password".tr, style: theme.textTheme.titleMedium), SizedBox(height: 10.v), Obx(() => CustomTextFormField(controller: controller.passwordController, hintText: "lbl_enter".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1, textInputType: TextInputType.visiblePassword, suffix: InkWell(onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;}, child: Container(margin: EdgeInsets.fromLTRB(12.h, 9.v, 13.h, 9.v), decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.h)), child: CustomImageView(svgPath: controller.isShowPassword.value ? ImageConstant.imgIconBlueGray400 : ImageConstant.imgIconBlueGray400))), suffixConstraints: BoxConstraints(maxHeight: 42.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "Please enter valid password";} return null;}, obscureText: controller.isShowPassword.value, contentPadding: EdgeInsets.only(left: 20.h, top: 12.v, bottom: 12.v))), SizedBox(height: 19.v), Text("msg_confirm_password".tr, style: theme.textTheme.titleMedium), SizedBox(height: 10.v), CustomTextFormField(controller: controller.confirmpasswordController, hintText: "lbl_enter".tr, hintStyle: CustomTextStyles.bodyMediumBluegray500_1, textInputAction: TextInputAction.done, suffix: Container(margin: EdgeInsets.fromLTRB(12.h, 9.v, 13.h, 9.v), decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.h)), child: CustomImageView(svgPath: ImageConstant.imgIconBlueGray400)), suffixConstraints: BoxConstraints(maxHeight: 42.v), contentPadding: EdgeInsets.only(left: 20.h, top: 12.v, bottom: 12.v)), Container(width: 384.h, margin: EdgeInsets.only(top: 22.v, right: 10.h), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_by_creating_an_account2".tr, style: CustomTextStyles.bodySmallGray900), TextSpan(text: "msg_terms_of_service".tr, style: CustomTextStyles.bodySmallPrimary_1), TextSpan(text: "lbl_and".tr, style: CustomTextStyles.bodySmallGray900), TextSpan(text: "lbl_privacy_policy".tr, style: CustomTextStyles.bodySmallPrimary_1), TextSpan(text: " ")]), textAlign: TextAlign.left)), SizedBox(height: 88.v), CustomElevatedButton(text: "lbl_create_account".tr), SizedBox(height: 20.v), Align(alignment: Alignment.center, child: GestureDetector(onTap: () {onTapTxtHaveanaccount();}, child: RichText(text: TextSpan(children: [TextSpan(text: "msg_have_an_account2".tr, style: theme.textTheme.bodyMedium), TextSpan(text: "lbl_sign_in".tr, style: CustomTextStyles.bodyMediumPrimary)]), textAlign: TextAlign.left)))]))]))))); } 
/// Navigates to the signInScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the signInScreen.
onTapTxtHaveanaccount() { Get.offNamed(AppRoutes.signInScreen,); } 
 }
