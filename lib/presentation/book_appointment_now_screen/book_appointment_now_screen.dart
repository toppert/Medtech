import 'controller/book_appointment_now_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_title.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';import 'package:medtech/widgets/custom_drop_down.dart';import 'package:medtech/widgets/custom_elevated_button.dart';import 'package:medtech/widgets/custom_outlined_button.dart';class BookAppointmentNowScreen extends GetWidget<BookAppointmentNowController> {const BookAppointmentNowScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [Container(padding: EdgeInsets.symmetric(vertical: 14.v), decoration: AppDecoration.fillPrimaryContainer, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 24.v), CustomAppBar(leadingWidth: 43.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleftOnprimarycontainer, margin: EdgeInsets.only(left: 19.h, bottom: 4.v), onTap: () {onTapArrowleftone();}), title: AppbarTitle(text: "msg_book_appointment".tr, margin: EdgeInsets.only(left: 35.h)))])), Expanded(child: Container(padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 20.v), child: Column(children: [CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 10.v, 19.h, 10.v), decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.h)), child: CustomImageView(svgPath: ImageConstant.imgIcon20x20)), hintText: "msg_select_specialty".tr, items: controller.bookAppointmentNowModelObj.value.dropdownItemList!.value, contentPadding: EdgeInsets.only(left: 20.h, top: 11.v, bottom: 11.v), onChanged: (value) {controller.onSelected(value);}), SizedBox(height: 191.v), CustomImageView(svgPath: ImageConstant.imgDoctorspana1, height: 160.v, width: 236.h), SizedBox(height: 12.v), Text("msg_select_a_specialty".tr, style: CustomTextStyles.bodyLargeGray600), Spacer(), CustomElevatedButton(height: 43.v, text: "msg_book_appointment".tr), SizedBox(height: 20.v), CustomOutlinedButton(text: "lbl_cancel".tr)])))])))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
 }