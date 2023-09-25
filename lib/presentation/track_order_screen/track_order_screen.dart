import 'controller/track_order_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_title.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';import 'package:medtech/widgets/custom_elevated_button.dart';class TrackOrderScreen extends GetWidget<TrackOrderController> {const TrackOrderScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [Container(padding: EdgeInsets.symmetric(vertical: 17.v), decoration: AppDecoration.fillPrimaryContainer, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 19.v), CustomAppBar(leadingWidth: 43.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleftOnprimarycontainer, margin: EdgeInsets.only(left: 19.h, top: 3.v, bottom: 1.v), onTap: () {onTapArrowleftone();}), title: AppbarTitle(text: "lbl_track_order".tr, margin: EdgeInsets.only(left: 35.h)))])), Container(padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 20.v), child: Column(children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_7788166523".tr, style: CustomTextStyles.titleMediumSemiBold_3), SizedBox(height: 6.v), Text("msg_23_10_2022_9_00".tr, style: theme.textTheme.bodyMedium)]), CustomElevatedButton(height: 34.v, width: 111.h, text: "lbl_in_progress".tr, margin: EdgeInsets.only(top: 3.v, bottom: 4.v), buttonStyle: CustomButtonStyles.fillBlueA, buttonTextStyle: CustomTextStyles.titleSmallBlueA400)]), Padding(padding: EdgeInsets.only(top: 38.v, right: 9.h, bottom: 5.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(svgPath: ImageConstant.imgFrame1000000855, height: 260.v, width: 24.h), Expanded(child: Padding(padding: EdgeInsets.only(left: 20.h, top: 3.v, bottom: 3.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [RichText(text: TextSpan(children: [TextSpan(text: "lbl_order_placed".tr, style: CustomTextStyles.titleSmallOnError), TextSpan(text: "msg_your_order_has_been2".tr, style: CustomTextStyles.titleSmallBluegray900_1)]), textAlign: TextAlign.left), SizedBox(height: 34.v), SizedBox(width: 336.h, child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_in_progress2".tr, style: CustomTextStyles.titleSmallOnError), TextSpan(text: "msg_your_order_has_been3".tr, style: CustomTextStyles.titleSmallBluegray900_1)]), textAlign: TextAlign.left)), Container(width: 306.h, margin: EdgeInsets.only(top: 26.v, right: 30.h), child: Text("msg_shipped_your_order".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleSmallOnError_1)), SizedBox(height: 29.v), Text("msg_out_for_delivery".tr, style: CustomTextStyles.bodyMediumGray400), SizedBox(height: 40.v), Text("msg_delivered_your".tr, style: CustomTextStyles.bodyMediumGray400)])))]))]))])))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
 }