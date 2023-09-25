import 'controller/scw_community_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/app_bar/appbar_iconbutton_1.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_image_1.dart';import 'package:medtech/widgets/app_bar/appbar_title.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';import 'package:medtech/widgets/custom_elevated_button.dart';import 'package:medtech/widgets/custom_search_view.dart';class ScwCommunityScreen extends GetWidget<ScwCommunityController> {const ScwCommunityScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [Container(padding: EdgeInsets.symmetric(vertical: 13.v), decoration: AppDecoration.fillPrimaryContainer, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 26.v), CustomAppBar(height: 30.v, leadingWidth: 43.h, leading: AppbarImage(svgPath: ImageConstant.imgMenu, margin: EdgeInsets.only(left: 19.h, bottom: 5.v)), title: AppbarTitle(text: "lbl_scw_community".tr, margin: EdgeInsets.only(left: 35.h)), actions: [AppbarImage1(svgPath: ImageConstant.imgVolume, margin: EdgeInsets.only(left: 19.h)), AppbarIconbutton1(svgPath: ImageConstant.imgClarityshoppingcartline, margin: EdgeInsets.only(left: 10.h, right: 19.h))])])), SizedBox(height: 11.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 19.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomSearchView(margin: EdgeInsets.only(right: 19.h), controller: controller.searchController, hintText: "lbl_search_stories".tr, prefix: Container(margin: EdgeInsets.all(15.h), child: CustomImageView(svgPath: ImageConstant.imgSearch)), prefixConstraints: BoxConstraints(maxHeight: 50.v), suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 6.v, 20.h, 11.v), child: CustomImageView(svgPath: ImageConstant.imgFilteroptionspreferencessettingssvgrepocom11)), suffixConstraints: BoxConstraints(maxHeight: 50.v), borderDecoration: SearchViewStyleHelper.fillGrayTL20, filled: true, fillColor: appTheme.gray10001), SizedBox(height: 30.v), SizedBox(height: 184.v, width: 390.h, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgImage50, height: 184.v, width: 390.h, radius: BorderRadius.circular(20.h), alignment: Alignment.center), Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 23.h), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(width: 342.h, child: Text("msg_do_you_have_a_story".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleMediumPrimaryContainerSemiBold.copyWith(height: 1.38))), SizedBox(height: 20.v), CustomElevatedButton(height: 44.v, width: 182.h, text: "lbl_create_story".tr, onTap: () {onTapCreatestory();})])))])), Padding(padding: EdgeInsets.only(top: 30.v, right: 19.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_trending_stories".tr, style: CustomTextStyles.titleMedium18), Spacer(), Padding(padding: EdgeInsets.only(top: 2.v, bottom: 5.v), child: Text("lbl_see_all".tr, style: CustomTextStyles.labelLargeBlueA400_1)), CustomImageView(svgPath: ImageConstant.imgStatusskipped, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 5.h, bottom: 2.v))])), SizedBox(height: 17.v), SingleChildScrollView(scrollDirection: Axis.horizontal, child: IntrinsicWidth(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: GestureDetector(onTap: () {onTapCard();}, child: Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v), decoration: AppDecoration.outlineGray5003.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_non_eu_sit_amet".tr, style: CustomTextStyles.titleMediumBluegray900), SizedBox(height: 10.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgEllipse1320x20, height: 20.adaptSize, width: 20.adaptSize, radius: BorderRadius.circular(10.h)), Padding(padding: EdgeInsets.only(left: 10.h, top: 3.v, bottom: 2.v), child: Text("lbl_by_sussexmama".tr, style: CustomTextStyles.bodySmallGray600))]), Container(width: 290.h, margin: EdgeInsets.only(top: 11.v, right: 5.h), child: Text("msg_lorem_ipsum_dolor2".tr, maxLines: 3, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumBluegray900.copyWith(height: 1.43))), SizedBox(height: 10.v), Text("lbl_28_minutes_ago".tr, style: CustomTextStyles.bodySmallGray600), SizedBox(height: 9.v), Row(children: [CustomImageView(svgPath: ImageConstant.imgFasolidcomment, height: 16.adaptSize, width: 16.adaptSize), Padding(padding: EdgeInsets.only(left: 6.h), child: Text("lbl_2".tr, style: CustomTextStyles.bodySmallBluegray900)), CustomImageView(svgPath: ImageConstant.imgLovelikesvgrepocom, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 10.h)), Padding(padding: EdgeInsets.only(left: 6.h), child: Text("lbl_5".tr, style: CustomTextStyles.bodySmallBluegray900))])])))), Expanded(child: Container(margin: EdgeInsets.only(left: 10.h), padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v), decoration: AppDecoration.outlineGray5003.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_non_eu_sit_amet".tr, style: CustomTextStyles.titleMediumBluegray900), SizedBox(height: 10.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgEllipse1320x20, height: 20.adaptSize, width: 20.adaptSize, radius: BorderRadius.circular(10.h)), Padding(padding: EdgeInsets.only(left: 10.h, top: 3.v, bottom: 2.v), child: Text("lbl_by_sussexmama".tr, style: CustomTextStyles.bodySmallGray600))]), SizedBox(height: 11.v), SizedBox(width: 296.h, child: Text("msg_lorem_ipsum_dolor2".tr, maxLines: 3, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumBluegray900.copyWith(height: 1.43))), SizedBox(height: 10.v), Text("lbl_28_minutes_ago".tr, style: CustomTextStyles.bodySmallGray600), SizedBox(height: 9.v), Row(children: [CustomImageView(svgPath: ImageConstant.imgFasolidcomment, height: 16.adaptSize, width: 16.adaptSize), Padding(padding: EdgeInsets.only(left: 6.h), child: Text("lbl_2".tr, style: CustomTextStyles.bodySmallBluegray900)), CustomImageView(svgPath: ImageConstant.imgLovelikesvgrepocomPrimary, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 10.h)), Padding(padding: EdgeInsets.only(left: 6.h), child: Text("lbl_5".tr, style: CustomTextStyles.bodySmallBluegray900))])])))]))), Padding(padding: EdgeInsets.only(top: 29.v, right: 19.h), child: Row(children: [Text("lbl_recent_stories".tr, style: CustomTextStyles.titleMedium18), Spacer(), Padding(padding: EdgeInsets.symmetric(vertical: 3.v), child: Text("lbl_see_all".tr, style: CustomTextStyles.labelLargeBlueA400_1)), CustomImageView(svgPath: ImageConstant.imgStatusskipped, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 5.h))])), SizedBox(height: 19.v), SingleChildScrollView(scrollDirection: Axis.horizontal, child: IntrinsicWidth(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v), decoration: AppDecoration.outlineGray5003.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_non_eu_sit_amet".tr, style: CustomTextStyles.titleMediumBluegray900), SizedBox(height: 10.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgEllipse1320x20, height: 20.adaptSize, width: 20.adaptSize, radius: BorderRadius.circular(10.h)), Padding(padding: EdgeInsets.only(left: 10.h, top: 3.v, bottom: 2.v), child: Text("lbl_by_sussexmama".tr, style: CustomTextStyles.bodySmallGray600))]), Container(width: 282.h, margin: EdgeInsets.only(top: 11.v, right: 13.h), child: Text("msg_lorem_ipsum_dolor3".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumBluegray900.copyWith(height: 1.43))), Padding(padding: EdgeInsets.only(top: 8.v, right: 16.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgRectangle5629, height: 65.v, width: 90.h, radius: BorderRadius.circular(5.h)), CustomImageView(imagePath: ImageConstant.imgRectangle5630, height: 65.v, width: 90.h, radius: BorderRadius.circular(5.h), margin: EdgeInsets.only(left: 5.h)), Container(height: 65.v, width: 90.h, margin: EdgeInsets.only(left: 5.h), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgRectangle5631, height: 65.v, width: 90.h, radius: BorderRadius.circular(5.h), alignment: Alignment.center), Align(alignment: Alignment.center, child: Text("lbl_3".tr, style: CustomTextStyles.titleMediumPrimaryContainerSemiBold))]))])), SizedBox(height: 10.v), Text("lbl_28_minutes_ago".tr, style: CustomTextStyles.bodySmallGray600), SizedBox(height: 10.v), Row(children: [CustomImageView(svgPath: ImageConstant.imgFasolidcomment, height: 16.adaptSize, width: 16.adaptSize), Padding(padding: EdgeInsets.only(left: 6.h), child: Text("lbl_2".tr, style: CustomTextStyles.bodySmallBluegray900)), CustomImageView(svgPath: ImageConstant.imgLovelikesvgrepocom, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 10.h)), Padding(padding: EdgeInsets.only(left: 6.h), child: Text("lbl_5".tr, style: CustomTextStyles.bodySmallBluegray900))])]))), Expanded(child: Container(margin: EdgeInsets.only(left: 10.h), padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v), decoration: AppDecoration.outlineGray5003.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_non_eu_sit_amet".tr, style: CustomTextStyles.titleMediumBluegray900), SizedBox(height: 10.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgEllipse1320x20, height: 20.adaptSize, width: 20.adaptSize, radius: BorderRadius.circular(10.h)), Padding(padding: EdgeInsets.only(left: 10.h, top: 3.v, bottom: 2.v), child: Text("lbl_by_sussexmama".tr, style: CustomTextStyles.bodySmallGray600))]), SizedBox(height: 11.v), SizedBox(width: 296.h, child: Text("msg_lorem_ipsum_dolor3".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumBluegray900.copyWith(height: 1.43))), Padding(padding: EdgeInsets.only(top: 8.v, right: 16.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgRectangle5629, height: 65.v, width: 90.h, radius: BorderRadius.circular(5.h)), CustomImageView(imagePath: ImageConstant.imgRectangle5630, height: 65.v, width: 90.h, radius: BorderRadius.circular(5.h), margin: EdgeInsets.only(left: 5.h)), Container(height: 65.v, width: 90.h, margin: EdgeInsets.only(left: 5.h), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgRectangle5631, height: 65.v, width: 90.h, radius: BorderRadius.circular(5.h), alignment: Alignment.center), Align(alignment: Alignment.center, child: Text("lbl_3".tr, style: CustomTextStyles.titleMediumPrimaryContainerSemiBold))]))])), SizedBox(height: 10.v), Text("lbl_28_minutes_ago".tr, style: CustomTextStyles.bodySmallGray600), SizedBox(height: 10.v), Row(children: [CustomImageView(svgPath: ImageConstant.imgFasolidcomment, height: 16.adaptSize, width: 16.adaptSize), Padding(padding: EdgeInsets.only(left: 6.h), child: Text("lbl_2".tr, style: CustomTextStyles.bodySmallBluegray900)), CustomImageView(svgPath: ImageConstant.imgLovelikesvgrepocom, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 10.h)), Padding(padding: EdgeInsets.only(left: 6.h), child: Text("lbl_5".tr, style: CustomTextStyles.bodySmallBluegray900))])])))])))]))))])))); } 
/// Navigates to the createStoryScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the createStoryScreen.
onTapCreatestory() { Get.toNamed(AppRoutes.createStoryScreen, ); } 
/// Navigates to the storyScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the storyScreen.
onTapCard() { Get.toNamed(AppRoutes.storyScreen, ); } 
 }