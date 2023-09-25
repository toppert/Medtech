import 'controller/check_in_one_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/custom_elevated_button.dart';import 'package:medtech/widgets/custom_outlined_button.dart';class CheckInOneScreen extends GetWidget<CheckInOneController> {const CheckInOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA700, body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 20.v), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [Container(width: 363.h, margin: EdgeInsets.only(left: 8.h, top: 19.v, right: 18.h), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_this_appointment4".tr, style: theme.textTheme.bodyLarge), TextSpan(text: "msg_september_12_20222".tr, style: CustomTextStyles.titleMediumBlueA400_1)]), textAlign: TextAlign.left)), SizedBox(height: 29.v), CustomElevatedButton(height: 43.v, text: "lbl_yes".tr, onTap: () {onTapYes();}), SizedBox(height: 20.v), CustomOutlinedButton(text: "lbl_no".tr)])))); } 
/// Navigates to the checkInContainer1Screen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the checkInContainer1Screen.
onTapYes() { Get.toNamed(AppRoutes.checkInContainer1Screen, ); } 
 }
