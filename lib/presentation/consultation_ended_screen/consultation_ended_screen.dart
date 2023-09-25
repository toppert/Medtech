import 'controller/consultation_ended_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/custom_elevated_button.dart';class ConsultationEndedScreen extends GetWidget<ConsultationEndedController> {const ConsultationEndedScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA700, body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 23.v), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(svgPath: ImageConstant.imgEvacloseoutlineBlack900, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.centerRight), SizedBox(height: 25.v), CustomImageView(svgPath: ImageConstant.imgCalendar, height: 100.adaptSize, width: 100.adaptSize), SizedBox(height: 21.v), Text("msg_consultation_ended".tr, style: CustomTextStyles.titleMediumSemiBold_3), SizedBox(height: 24.v), SizedBox(width: 265.h, child: Text("msg_your_consultation".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodyMedium!.copyWith(height: 1.64)))])), bottomNavigationBar: CustomElevatedButton(height: 43.v, text: "lbl_add_soap_note".tr, margin: EdgeInsets.only(left: 19.h, right: 19.h, bottom: 20.v), onTap: () {onTapAddsoapnote();}))); } 
/// Navigates to the addSoapNoteScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the addSoapNoteScreen.
onTapAddsoapnote() { Get.toNamed(AppRoutes.addSoapNoteScreen, ); } 
 }
