import 'controller/datepicker_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_image_1.dart';import 'package:medtech/widgets/app_bar/appbar_subtitle_1.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';import 'package:medtech/widgets/custom_elevated_button.dart';import 'package:medtech/widgets/custom_outlined_button.dart';class DatepickerScreen extends GetWidget<DatepickerController> {const DatepickerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1), appBar: CustomAppBar(height: 56.v, leadingWidth: 30.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleftPrimary, margin: EdgeInsets.only(left: 25.h, top: 23.v, bottom: 22.v), onTap: () {onTapArrowleftone();}), title: AppbarSubtitle1(text: "lbl_september".tr, margin: EdgeInsets.only(left: 117.h)), actions: [AppbarImage1(svgPath: ImageConstant.imgArrowleftPrimary, margin: EdgeInsets.fromLTRB(25.h, 23.v, 25.h, 22.v))]), body: Container(height: 256.v, width: double.maxFinite, padding: EdgeInsets.all(17.h), child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.topLeft, child: Container(height: 27.v, width: 33.h, margin: EdgeInsets.only(top: 63.v), decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(10.h)))), Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(left: 6.h, right: 12.h), child: Column(mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.only(right: 6.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_s".tr, style: CustomTextStyles.titleSmallPrimary15), Padding(padding: EdgeInsets.only(left: 47.h), child: Text("lbl_m".tr, style: CustomTextStyles.titleSmallPrimary15)), Padding(padding: EdgeInsets.only(left: 48.h), child: Text("lbl_t".tr, style: CustomTextStyles.titleSmallPrimary15)), Padding(padding: EdgeInsets.only(left: 47.h), child: Text("lbl_w".tr, style: CustomTextStyles.titleSmallPrimary15)), Padding(padding: EdgeInsets.only(left: 46.h), child: Text("lbl_t".tr, style: CustomTextStyles.titleSmallPrimary15)), Padding(padding: EdgeInsets.only(left: 50.h), child: Text("lbl_f".tr, style: CustomTextStyles.titleSmallPrimary15)), Padding(padding: EdgeInsets.only(left: 49.h), child: Text("lbl_s".tr, style: CustomTextStyles.titleSmallPrimary15))])), SizedBox(height: 14.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_27".tr, style: CustomTextStyles.titleSmallGray400), Padding(padding: EdgeInsets.only(left: 41.h), child: Text("lbl_28".tr, style: CustomTextStyles.titleSmallGray400)), Padding(padding: EdgeInsets.only(left: 41.h), child: Text("lbl_29".tr, style: CustomTextStyles.titleSmallGray400)), Padding(padding: EdgeInsets.only(left: 41.h), child: Text("lbl_302".tr, style: CustomTextStyles.titleSmallGray400)), Padding(padding: EdgeInsets.only(left: 41.h), child: Text("lbl_31".tr, style: CustomTextStyles.titleSmallGray400)), Padding(padding: EdgeInsets.only(left: 49.h), child: Text("lbl_1".tr, style: CustomTextStyles.titleSmallBluegray90015)), Padding(padding: EdgeInsets.only(left: 53.h), child: Text("lbl_2".tr, style: CustomTextStyles.titleSmallBluegray90015))]), Padding(padding: EdgeInsets.only(left: 4.h, top: 17.v, right: 4.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_32".tr, style: CustomTextStyles.titleSmallGray10002), Padding(padding: EdgeInsets.only(left: 50.h), child: Text("lbl_4".tr, style: CustomTextStyles.titleSmall15)), Padding(padding: EdgeInsets.only(left: 49.h), child: Text("lbl_5".tr, style: CustomTextStyles.titleSmall15)), Padding(padding: EdgeInsets.only(left: 50.h), child: Text("lbl_62".tr, style: CustomTextStyles.titleSmall15)), Padding(padding: EdgeInsets.only(left: 50.h), child: Text("lbl_7".tr, style: CustomTextStyles.titleSmall15)), Padding(padding: EdgeInsets.only(left: 50.h), child: Text("lbl_8".tr, style: CustomTextStyles.titleSmall15)), Padding(padding: EdgeInsets.only(left: 50.h), child: Text("lbl_9".tr, style: CustomTextStyles.titleSmall15))])), SizedBox(height: 17.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_10".tr, style: CustomTextStyles.titleSmallBluegray90015), Padding(padding: EdgeInsets.only(left: 43.h), child: Text("lbl_11".tr, style: CustomTextStyles.titleSmallBluegray90015)), Padding(padding: EdgeInsets.only(left: 47.h), child: Text("lbl_12".tr, style: CustomTextStyles.titleSmallBluegray90015)), Padding(padding: EdgeInsets.only(left: 44.h), child: Text("lbl_13".tr, style: CustomTextStyles.titleSmallBluegray90015)), Padding(padding: EdgeInsets.only(left: 44.h), child: Text("lbl_14".tr, style: CustomTextStyles.titleSmallBluegray90015)), Padding(padding: EdgeInsets.only(left: 43.h), child: Text("lbl_152".tr, style: CustomTextStyles.titleSmallBluegray90015)), Padding(padding: EdgeInsets.only(left: 44.h), child: Text("lbl_16".tr, style: CustomTextStyles.titleSmallBluegray90015))]), SizedBox(height: 17.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_17".tr, style: CustomTextStyles.titleSmallBluegray90015), Padding(padding: EdgeInsets.only(left: 44.h), child: Text("lbl_18".tr, style: CustomTextStyles.titleSmallBluegray90015)), Padding(padding: EdgeInsets.only(left: 44.h), child: Text("lbl_19".tr, style: CustomTextStyles.titleSmallBluegray90015)), Padding(padding: EdgeInsets.only(left: 44.h), child: Text("lbl_20".tr, style: CustomTextStyles.titleSmallBluegray90015)), Padding(padding: EdgeInsets.only(left: 41.h), child: Text("lbl_21".tr, style: CustomTextStyles.titleSmallBluegray90015)), Padding(padding: EdgeInsets.only(left: 45.h), child: Text("lbl_22".tr, style: CustomTextStyles.titleSmallBluegray90015)), Padding(padding: EdgeInsets.only(left: 41.h), child: Text("lbl_23".tr, style: CustomTextStyles.titleSmallBluegray90015))]), SizedBox(height: 17.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_24".tr, style: CustomTextStyles.titleSmallBluegray90015), Padding(padding: EdgeInsets.only(left: 41.h), child: Text("lbl_25".tr, style: CustomTextStyles.titleSmallBluegray90015)), Padding(padding: EdgeInsets.only(left: 41.h), child: Text("lbl_26".tr, style: CustomTextStyles.titleSmallBluegray90015)), Padding(padding: EdgeInsets.only(left: 41.h), child: Text("lbl_27".tr, style: CustomTextStyles.titleSmallBluegray90015)), Padding(padding: EdgeInsets.only(left: 41.h), child: Text("lbl_28".tr, style: CustomTextStyles.titleSmallBluegray90015)), Padding(padding: EdgeInsets.only(left: 41.h), child: Text("lbl_29".tr, style: CustomTextStyles.titleSmallBluegray90015)), Padding(padding: EdgeInsets.only(left: 41.h), child: Text("lbl_302".tr, style: CustomTextStyles.titleSmallBluegray90015))])])))])), bottomNavigationBar: Padding(padding: EdgeInsets.only(left: 23.h, right: 23.h, bottom: 23.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomOutlinedButton(width: 180.h, text: "lbl_cancel".tr, buttonStyle: CustomButtonStyles.outlinePrimaryTL101), CustomElevatedButton(height: 43.v, width: 180.h, text: "lbl_done".tr, margin: EdgeInsets.only(left: 22.h))])))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
 }