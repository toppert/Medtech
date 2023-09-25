import '../doctor_s_profile_tab_container_screen/widgets/patientsprofile_item_widget.dart';import 'controller/doctor_s_profile_tab_container_controller.dart';import 'models/patientsprofile_item_model.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/doctor_s_profile_one_page/doctor_s_profile_one_page.dart';import 'package:medtech/presentation/doctor_s_profile_page/doctor_s_profile_page.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_title.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';class DoctorSProfileTabContainerScreen extends GetWidget<DoctorSProfileTabContainerController> {const DoctorSProfileTabContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: CustomAppBar(height: 83.v, leadingWidth: 43.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleftOnprimarycontainer, margin: EdgeInsets.only(left: 19.h, top: 40.v, bottom: 19.v), onTap: () {onTapArrowleftone();}), title: AppbarTitle(text: "msg_meet_your_doctor".tr, margin: EdgeInsets.only(left: 35.h, top: 37.v, bottom: 16.v)), styleType: Style.bgFill), body: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Align(alignment: Alignment.center, child: Container(margin: EdgeInsets.only(left: 19.h, top: 15.v, right: 19.h), padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.v), decoration: AppDecoration.outlineGray10002.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 4.v, right: 47.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgRectangle133, height: 80.adaptSize, width: 80.adaptSize, radius: BorderRadius.circular(10.h)), Padding(padding: EdgeInsets.only(left: 20.h, top: 10.v, bottom: 10.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_dr_rashida_mohammed2".tr, style: CustomTextStyles.titleMediumSemiBold_3), SizedBox(height: 4.v), Text("lbl_haematologist".tr, style: CustomTextStyles.bodyMediumGray600_1), SizedBox(height: 3.v), Row(children: [CustomImageView(svgPath: ImageConstant.imgMinimizeGray300, height: 13.v, width: 73.h, margin: EdgeInsets.only(bottom: 1.v)), Padding(padding: EdgeInsets.only(left: 4.h), child: Text("lbl_45".tr, style: theme.textTheme.bodySmall))])]))])), SizedBox(height: 86.v, child: Obx(() => ListView.separated(padding: EdgeInsets.only(top: 15.v, right: 1.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 10.h);}, itemCount: controller.doctorSProfileTabContainerModelObj.value.patientsprofileItemList.value.length, itemBuilder: (context, index) {PatientsprofileItemModel model = controller.doctorSProfileTabContainerModelObj.value.patientsprofileItemList.value[index]; return PatientsprofileItemWidget(model);})))]))), Container(height: 28.v, width: 137.h, margin: EdgeInsets.only(left: 19.h, top: 30.v), child: TabBar(controller: controller.tabviewController, labelPadding: EdgeInsets.zero, labelColor: appTheme.gray900, labelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Work Sans', fontWeight: FontWeight.w500), unselectedLabelColor: appTheme.blueGray500, unselectedLabelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Inter', fontWeight: FontWeight.w400), indicatorColor: theme.colorScheme.primary, tabs: [Tab(child: Text("lbl_basic".tr)), Tab(child: Text("lbl_reviews".tr))])), Expanded(child: SizedBox(height: 533.v, child: TabBarView(controller: controller.tabviewController, children: [DoctorSProfileOnePage(), DoctorSProfilePage()])))])))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
 }