import 'controller/patients_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_image_1.dart';import 'package:medtech/widgets/app_bar/appbar_title.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';import 'package:medtech/widgets/custom_search_view.dart';class PatientsScreen extends GetWidget<PatientsController> {const PatientsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(padding: EdgeInsets.symmetric(vertical: 16.v), decoration: AppDecoration.fillPrimaryContainer, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 21.v), CustomAppBar(height: 30.v, leadingWidth: 43.h, leading: AppbarImage(svgPath: ImageConstant.imgMenu, margin: EdgeInsets.only(left: 19.h, top: 3.v, bottom: 3.v)), title: AppbarTitle(text: "lbl_patients".tr, margin: EdgeInsets.only(left: 35.h)), actions: [AppbarImage1(svgPath: ImageConstant.imgVolume, margin: EdgeInsets.symmetric(horizontal: 19.h))])])), Container(padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 30.v), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [CustomSearchView(controller: controller.searchController, hintText: "lbl_search".tr, prefix: Container(margin: EdgeInsets.all(15.h), child: CustomImageView(svgPath: ImageConstant.imgSearch)), prefixConstraints: BoxConstraints(maxHeight: 50.v), suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 6.v, 20.h, 11.v), child: CustomImageView(svgPath: ImageConstant.imgFilteroptionspreferencessettingssvgrepocom11)), suffixConstraints: BoxConstraints(maxHeight: 50.v)), SizedBox(height: 30.v), GestureDetector(onTap: () {onTapRowejiroosarobo();}, child: Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 19.v), decoration: AppDecoration.outlineGray10002.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgEllipse87, height: 60.adaptSize, width: 60.adaptSize, radius: BorderRadius.circular(30.h)), Padding(padding: EdgeInsets.only(left: 21.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_ejiro_osarobo".tr, style: CustomTextStyles.titleMediumSemiBold_3), SizedBox(height: 2.v), Text("lbl_female2".tr, style: CustomTextStyles.bodyMediumGray600_1), SizedBox(height: 4.v), Text("lbl_12_12_1993".tr, style: CustomTextStyles.bodyMediumGray600_1)]))]))), SizedBox(height: 15.v), Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 18.v), decoration: AppDecoration.outlineGray10002.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgEllipse88, height: 60.adaptSize, width: 60.adaptSize, radius: BorderRadius.circular(30.h), margin: EdgeInsets.symmetric(vertical: 1.v)), Padding(padding: EdgeInsets.only(left: 21.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_ada_jolomi".tr, style: CustomTextStyles.titleMediumSemiBold_3), SizedBox(height: 4.v), Text("lbl_female2".tr, style: CustomTextStyles.bodyMediumGray600_1), SizedBox(height: 4.v), Text("lbl_12_12_1993".tr, style: CustomTextStyles.bodyMediumGray600_1)]))])), SizedBox(height: 15.v), Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 19.v), decoration: AppDecoration.outlineGray10002.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgEllipse89, height: 60.adaptSize, width: 60.adaptSize, radius: BorderRadius.circular(30.h)), Padding(padding: EdgeInsets.only(left: 21.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_benjamin_awenene".tr, style: CustomTextStyles.titleMediumSemiBold_3), SizedBox(height: 2.v), Text("lbl_male".tr, style: CustomTextStyles.bodyMediumGray600_1), SizedBox(height: 4.v), Text("lbl_12_12_1993".tr, style: CustomTextStyles.bodyMediumGray600_1)]))])), SizedBox(height: 15.v), Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 18.v), decoration: AppDecoration.outlineGray10002.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgEllipse90, height: 60.adaptSize, width: 60.adaptSize, radius: BorderRadius.circular(30.h), margin: EdgeInsets.symmetric(vertical: 1.v)), Padding(padding: EdgeInsets.only(left: 21.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_pauline_alfred".tr, style: CustomTextStyles.titleMediumSemiBold_3), SizedBox(height: 4.v), Text("lbl_female2".tr, style: CustomTextStyles.bodyMediumGray600_1), SizedBox(height: 4.v), Text("lbl_12_12_1993".tr, style: CustomTextStyles.bodyMediumGray600_1)]))])), SizedBox(height: 15.v), Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 18.v), decoration: AppDecoration.outlineGray10002.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Row(children: [Container(margin: EdgeInsets.symmetric(vertical: 1.v), padding: EdgeInsets.all(15.h), decoration: AppDecoration.fillBlueA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder32), child: Text("lbl_ja".tr, style: CustomTextStyles.headlineSmallSemiBold)), Padding(padding: EdgeInsets.only(left: 21.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_jacob_attah".tr, style: CustomTextStyles.titleMediumSemiBold_3), SizedBox(height: 4.v), Text("lbl_male".tr, style: CustomTextStyles.bodyMediumGray600_1), SizedBox(height: 4.v), Text("lbl_12_12_1993".tr, style: CustomTextStyles.bodyMediumGray600_1)]))])), SizedBox(height: 5.v)]))])), bottomNavigationBar: Container(margin: EdgeInsets.only(left: 34.h, right: 34.h, bottom: 43.v), decoration: AppDecoration.outlineGray100021.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Row(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgEllipse92, height: 60.adaptSize, width: 60.adaptSize, radius: BorderRadius.circular(30.h)), Padding(padding: EdgeInsets.only(left: 21.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_adaugo_okonkwo".tr, style: CustomTextStyles.titleMediumSemiBold_3), SizedBox(height: 2.v), Text("lbl_female2".tr, style: CustomTextStyles.bodyMediumGray600_1), SizedBox(height: 4.v), Text("lbl_12_12_1993".tr, style: CustomTextStyles.bodyMediumGray600_1)]))])))); } 



onTapRowejiroosarobo() { // TODO: implement Actions
 } 
 }
