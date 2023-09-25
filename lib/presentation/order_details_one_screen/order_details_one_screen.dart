import 'controller/order_details_one_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_title.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';import 'package:medtech/widgets/custom_elevated_button.dart';import 'package:medtech/widgets/custom_outlined_button.dart';class OrderDetailsOneScreen extends GetWidget<OrderDetailsOneController> {const OrderDetailsOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: CustomAppBar(height: 83.v, leadingWidth: 43.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleftOnprimarycontainer, margin: EdgeInsets.only(left: 19.h, top: 40.v, bottom: 19.v), onTap: () {onTapArrowleftone();}), title: AppbarTitle(text: "lbl_order_details".tr, margin: EdgeInsets.only(left: 35.h)), styleType: Style.bgFill), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 20.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.symmetric(horizontal: 4.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_7788166523".tr, style: CustomTextStyles.titleMediumSemiBold), SizedBox(height: 5.v), Text("msg_23_10_2022_9_00".tr, style: theme.textTheme.bodyMedium)]), CustomElevatedButton(height: 34.v, width: 111.h, text: "lbl_in_progress".tr, margin: EdgeInsets.only(top: 5.v, bottom: 4.v), buttonStyle: CustomButtonStyles.fillBlueA, buttonTextStyle: CustomTextStyles.titleSmallBlueA400)])), Padding(padding: EdgeInsets.only(left: 4.h, top: 24.v), child: Text("msg_shipping_information".tr, style: theme.textTheme.bodyMedium)), Padding(padding: EdgeInsets.only(left: 4.h, top: 5.v), child: Text("lbl_stella_adebayo".tr, style: theme.textTheme.titleMedium)), Padding(padding: EdgeInsets.only(left: 4.h, top: 6.v), child: Text("msg_stella_adebayo_gmail_com2".tr, style: theme.textTheme.titleMedium)), Padding(padding: EdgeInsets.only(left: 4.h, top: 4.v), child: Text("lbl_09038873221".tr, style: theme.textTheme.titleMedium)), Padding(padding: EdgeInsets.only(left: 4.h, top: 7.v), child: Text("msg_11_adesanya_cresent".tr, style: theme.textTheme.titleMedium)), Padding(padding: EdgeInsets.only(left: 4.h, top: 24.v), child: Text("lbl_payment_method".tr, style: theme.textTheme.bodyMedium)), Padding(padding: EdgeInsets.only(left: 4.h, top: 3.v), child: Text("lbl_wallet".tr, style: theme.textTheme.titleMedium)), Padding(padding: EdgeInsets.only(top: 25.v), child: Divider(color: appTheme.gray30001, indent: 4.h, endIndent: 4.h)), Padding(padding: EdgeInsets.only(left: 4.h, top: 25.v, right: 6.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("msg_panadol_extra_500mg2".tr, style: theme.textTheme.bodyLarge), Text("lbl_5_0002".tr, style: theme.textTheme.titleMedium)])), Padding(padding: EdgeInsets.only(left: 4.h, top: 19.v), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("msg_prostan_eyedrop2".tr, style: theme.textTheme.bodyLarge), Text("lbl_5_0002".tr, style: theme.textTheme.titleMedium)])), Padding(padding: EdgeInsets.only(top: 23.v), child: Divider(color: appTheme.gray30001, indent: 4.h, endIndent: 4.h)), Padding(padding: EdgeInsets.only(left: 4.h, top: 23.v, right: 6.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("lbl_item_total".tr, style: theme.textTheme.bodyLarge)), Text("lbl_10_0002".tr, style: theme.textTheme.titleMedium)])), Padding(padding: EdgeInsets.only(left: 4.h, top: 15.v, right: 6.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_shipping_fee".tr, style: theme.textTheme.bodyLarge), Text("lbl_1_5002".tr, style: theme.textTheme.titleMedium)])), Padding(padding: EdgeInsets.only(left: 4.h, top: 13.v, right: 6.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_vat".tr, style: theme.textTheme.bodyLarge), Text("lbl_250".tr, style: theme.textTheme.titleMedium)])), Padding(padding: EdgeInsets.only(left: 4.h, top: 14.v, right: 6.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("lbl_total2".tr, style: theme.textTheme.bodyLarge)), Text("lbl_11_750".tr, style: theme.textTheme.titleMedium)])), Padding(padding: EdgeInsets.only(top: 23.v), child: Divider(color: appTheme.gray30001, indent: 4.h, endIndent: 4.h)), CustomOutlinedButton(height: 40.v, width: 135.h, text: "lbl_track_order".tr, margin: EdgeInsets.only(left: 4.h, top: 18.v, bottom: 5.v), rightIcon: Container(margin: EdgeInsets.only(left: 3.h), child: CustomImageView(svgPath: ImageConstant.imgStatusskippedborderlesssvgrepocom1)), buttonStyle: CustomButtonStyles.outlinePrimaryTL101, buttonTextStyle: CustomTextStyles.titleMediumPrimary, onTap: () {onTapTrackorder();})])))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
/// Navigates to the trackOrderScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the trackOrderScreen.
onTapTrackorder() { Get.toNamed(AppRoutes.trackOrderScreen, ); } 
 }