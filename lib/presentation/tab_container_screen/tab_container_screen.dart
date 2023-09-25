import 'controller/tab_container_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/create_account_doctor_page/create_account_doctor_page.dart';import 'package:medtech/presentation/create_account_patient_page/create_account_patient_page.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_subtitle.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';class TabContainerScreen extends GetWidget<TabContainerController> {const TabContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: CustomAppBar(height: 72.v, leadingWidth: 43.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleft, margin: EdgeInsets.only(left: 19.h, top: 16.v, bottom: 15.v), onTap: () {onTapArrowleftone();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_get_started".tr)), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 12.v), Container(height: 29.v, width: 394.h, child: TabBar(controller: controller.tabviewController, labelPadding: EdgeInsets.zero, labelColor: appTheme.gray900, labelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Work Sans', fontWeight: FontWeight.w600), unselectedLabelColor: appTheme.blueGray500, unselectedLabelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Work Sans', fontWeight: FontWeight.w400), indicatorColor: theme.colorScheme.primary, tabs: [Tab(child: Text("lbl_patient".tr)), Tab(child: Text("lbl_doctor".tr))])), SizedBox(height: 777.v, child: TabBarView(controller: controller.tabviewController, children: [CreateAccountPatientPage(), CreateAccountDoctorPage()]))])))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
 }
