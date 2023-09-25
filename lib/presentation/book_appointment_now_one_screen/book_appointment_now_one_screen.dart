import 'controller/book_appointment_now_one_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_title.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';import 'package:medtech/widgets/custom_drop_down.dart';import 'package:medtech/widgets/custom_elevated_button.dart';import 'package:medtech/widgets/custom_outlined_button.dart';import 'package:medtech/widgets/custom_radio_button.dart';class BookAppointmentNowOneScreen extends GetWidget<BookAppointmentNowOneController> {const BookAppointmentNowOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [Container(padding: EdgeInsets.symmetric(vertical: 14.v), decoration: AppDecoration.fillPrimaryContainer, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 24.v), CustomAppBar(leadingWidth: 43.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleftOnprimarycontainer, margin: EdgeInsets.only(left: 19.h, bottom: 4.v), onTap: () {onTapArrowleftone();}), title: AppbarTitle(text: "msg_book_appointment".tr, margin: EdgeInsets.only(left: 35.h)))])), Expanded(child: Container(padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 20.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 10.v, 19.h, 10.v), decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.h)), child: CustomImageView(svgPath: ImageConstant.imgIcon20x20)), hintText: "lbl_haematologist".tr, items: controller.bookAppointmentNowOneModelObj.value.dropdownItemList!.value, contentPadding: EdgeInsets.only(left: 20.h, top: 11.v, bottom: 11.v), onChanged: (value) {controller.onSelected(value);}), Padding(padding: EdgeInsets.only(top: 24.v, right: 72.h), child: Row(children: [Obx(() => CustomRadioButton(text: "lbl_schedule_now".tr, value: "lbl_schedule_now".tr, groupValue: controller.radioGroup.value, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {controller.radioGroup.value = value;})), CustomElevatedButton(height: 18.v, width: 152.h, text: "msg_schedule_for_later".tr, margin: EdgeInsets.only(left: 41.h), leftIcon: Container(margin: EdgeInsets.only(right: 10.h), child: CustomImageView(svgPath: ImageConstant.imgRadiooff)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: theme.textTheme.bodyMedium!, onTap: () {onTapSchedulefor();})])), SizedBox(height: 29.v), Row(children: [CustomImageView(svgPath: ImageConstant.imgIconPrimary, height: 24.adaptSize, width: 24.adaptSize, radius: BorderRadius.circular(4.h)), Padding(padding: EdgeInsets.only(left: 8.h, top: 3.v), child: Text("msg_december_12th_2022".tr, style: theme.textTheme.titleMedium))]), Spacer(), CustomElevatedButton(height: 43.v, text: "msg_book_appointment".tr, onTap: () {onTapBook();}), SizedBox(height: 20.v), CustomOutlinedButton(text: "lbl_cancel".tr)])))])))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
/// Navigates to the bookAppointmentLaterScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the bookAppointmentLaterScreen.
onTapSchedulefor() { Get.toNamed(AppRoutes.bookAppointmentLaterScreen, ); } 
/// Navigates to the reviewBookingScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the reviewBookingScreen.
onTapBook() { Get.toNamed(AppRoutes.reviewBookingScreen, ); } 
 }
