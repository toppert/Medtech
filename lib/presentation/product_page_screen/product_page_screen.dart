import 'controller/product_page_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_title.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';import 'package:medtech/widgets/custom_elevated_button.dart';import 'package:medtech/widgets/custom_icon_button.dart';import 'package:medtech/widgets/custom_rating_bar.dart';class ProductPageScreen extends GetWidget<ProductPageController> {const ProductPageScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [Container(padding: EdgeInsets.symmetric(vertical: 14.v), decoration: AppDecoration.fillPrimaryContainer, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 24.v), CustomAppBar(leadingWidth: 43.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleftOnprimarycontainer, margin: EdgeInsets.only(left: 19.h, bottom: 4.v), onTap: () {onTapArrowleftone();}), title: AppbarTitle(text: "lbl_product_page".tr, margin: EdgeInsets.only(left: 35.h)))])), SizedBox(height: 12.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(bottom: 5.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgRectangle9315x428, height: 315.v, width: 428.h, radius: BorderRadius.circular(5.h)), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 19.h, top: 31.v), child: Text("msg_prostan_eye_drops".tr, style: CustomTextStyles.titleMediumSemiBold_3))), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 19.h, top: 8.v), child: Row(children: [CustomRatingBar(margin: EdgeInsets.only(bottom: 2.v), initialRating: 0, itemSize: 13, itemCount: 5), Padding(padding: EdgeInsets.only(left: 10.h), child: Text("lbl_15_reviews".tr, style: CustomTextStyles.bodySmallBlueA400_1))]))), Padding(padding: EdgeInsets.only(left: 19.h, top: 8.v, right: 19.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 7.v, bottom: 5.v), child: Text("lbl_2_600".tr, style: CustomTextStyles.titleMediumPrimary)), Container(padding: EdgeInsets.symmetric(horizontal: 13.h), decoration: AppDecoration.outlineGray300012.copyWith(borderRadius: BorderRadiusStyle.roundedBorder4), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(svgPath: ImageConstant.imgAkariconsplusGray900, height: 13.adaptSize, width: 13.adaptSize, margin: EdgeInsets.symmetric(vertical: 9.v)), Padding(padding: EdgeInsets.only(left: 10.h), child: SizedBox(height: 31.v, child: VerticalDivider(width: 1.h, thickness: 1.v, color: appTheme.gray30001))), Padding(padding: EdgeInsets.only(left: 9.h, top: 7.v, bottom: 7.v), child: Text("lbl_1".tr, style: CustomTextStyles.titleSmallSemiBold)), Padding(padding: EdgeInsets.only(left: 10.h), child: SizedBox(height: 32.v, child: VerticalDivider(width: 1.h, thickness: 1.v, color: appTheme.gray30001))), CustomImageView(svgPath: ImageConstant.imgAkariconsminus, height: 13.adaptSize, width: 13.adaptSize, margin: EdgeInsets.only(left: 9.h, top: 9.v, bottom: 9.v))]))])), Padding(padding: EdgeInsets.only(left: 19.h, top: 34.v, right: 19.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_description".tr, style: CustomTextStyles.titleMediumInterSemiBold), CustomIconButton(height: 20.adaptSize, width: 20.adaptSize, padding: EdgeInsets.all(5.h), child: CustomImageView(svgPath: ImageConstant.imgIcon))])), Align(alignment: Alignment.centerLeft, child: Container(width: 335.h, margin: EdgeInsets.only(left: 19.h, top: 11.v, right: 73.h), child: Text("msg_prostan_ophthalmic".tr, maxLines: 3, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumInter.copyWith(height: 1.57)))), Padding(padding: EdgeInsets.only(top: 26.v), child: Divider(color: appTheme.gray30001, indent: 19.h, endIndent: 19.h)), Padding(padding: EdgeInsets.only(left: 19.h, top: 23.v, right: 19.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_composition".tr, style: CustomTextStyles.titleMediumInterSemiBold), CustomIconButton(height: 20.adaptSize, width: 20.adaptSize, padding: EdgeInsets.all(5.h), child: CustomImageView(svgPath: ImageConstant.imgIcon))])), Padding(padding: EdgeInsets.only(top: 23.v), child: Divider(color: appTheme.gray30001, indent: 19.h, endIndent: 19.h)), Padding(padding: EdgeInsets.only(left: 19.h, top: 22.v, right: 19.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("lbl_reviews".tr, style: CustomTextStyles.titleMediumInterSemiBold)), CustomIconButton(height: 20.adaptSize, width: 20.adaptSize, padding: EdgeInsets.all(5.h), child: CustomImageView(svgPath: ImageConstant.imgIcon))])), SingleChildScrollView(scrollDirection: Axis.horizontal, padding: EdgeInsets.only(left: 19.h, top: 29.v), child: IntrinsicWidth(child: SizedBox(height: 253.v, width: 409.h, child: Stack(alignment: Alignment.bottomRight, children: [Align(alignment: Alignment.topLeft, child: Row(children: [Text("msg_related_products".tr, style: theme.textTheme.titleMedium), Padding(padding: EdgeInsets.only(top: 11.v, bottom: 6.v), child: SizedBox(width: 254.h, child: Divider(color: appTheme.indigo100, indent: 10.h)))])), Align(alignment: Alignment.bottomRight, child: Row(mainAxisAlignment: MainAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Container(margin: EdgeInsets.only(bottom: 1.v), padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 8.v), decoration: AppDecoration.outlineIndigo100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 1.v), SizedBox(height: 110.v, width: 133.h, child: Stack(alignment: Alignment.topLeft, children: [CustomImageView(imagePath: ImageConstant.imgRectangle9, height: 110.v, width: 133.h, alignment: Alignment.center), Align(alignment: Alignment.topLeft, child: Container(padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 1.v), decoration: AppDecoration.fillBlueA, child: Text("lbl_15".tr, style: theme.textTheme.labelSmall)))])), SizedBox(height: 10.v), SizedBox(width: 95.h, child: RichText(text: TextSpan(children: [TextSpan(text: "msg_amatem_softgel_2_5ml2".tr, style: CustomTextStyles.labelLargeGray900_1), TextSpan(text: " "), TextSpan(text: "lbl_4_5_23".tr, style: CustomTextStyles.bodySmallBlueA400)]), textAlign: TextAlign.left)), SizedBox(height: 12.v), Row(children: [Text("lbl_3_000".tr, style: theme.textTheme.labelLarge!.copyWith(decoration: TextDecoration.lineThrough)), Padding(padding: EdgeInsets.only(left: 10.h), child: Text("lbl_2_600".tr, style: theme.textTheme.labelLarge))])])), Container(margin: EdgeInsets.only(left: 10.h), padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 8.v), decoration: AppDecoration.outlineIndigo100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 1.v), CustomImageView(imagePath: ImageConstant.imgRectangle9155x155, height: 110.v, width: 133.h), SizedBox(height: 12.v), SizedBox(width: 93.h, child: RichText(text: TextSpan(children: [TextSpan(text: "msg_emzoron_tonic_100mg3".tr, style: CustomTextStyles.labelLargeGray900_1), TextSpan(text: "lbl_4_5_23".tr, style: CustomTextStyles.bodySmallBlueA400)]), textAlign: TextAlign.left)), SizedBox(height: 14.v), Text("lbl_2_160_00".tr, style: theme.textTheme.labelLarge)]))])), Container(margin: EdgeInsets.only(left: 10.h), padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 8.v), decoration: AppDecoration.outlineIndigo100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 1.v), CustomImageView(imagePath: ImageConstant.imgRectangle9155x155, height: 110.v, width: 133.h), SizedBox(height: 12.v), SizedBox(width: 114.h, child: RichText(text: TextSpan(children: [TextSpan(text: "msg_emzoron_tonic_100mg3".tr, style: CustomTextStyles.labelLargeGray900_1), TextSpan(text: "lbl_4_5_23".tr, style: CustomTextStyles.bodySmallBlueA400)]), textAlign: TextAlign.left)), SizedBox(height: 14.v), Text("lbl_2_160_00".tr, style: theme.textTheme.labelLarge)]))])), CustomElevatedButton(height: 52.v, width: 390.h, text: "lbl_add_to_cart".tr, onTap: () {onTapAddtocart();}, alignment: Alignment.topLeft)]))))]))))])))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
/// Navigates to the cartScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the cartScreen.
onTapAddtocart() { Get.toNamed(AppRoutes.cartScreen, ); } 
 }