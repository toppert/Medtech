import 'controller/medications_empty_state_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/medications_orders_page/medications_orders_page.dart';
import 'package:medtech/presentation/medications_page/medications_page.dart';
import 'package:medtech/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:medtech/widgets/app_bar/appbar_image.dart';
import 'package:medtech/widgets/app_bar/appbar_image_1.dart';
import 'package:medtech/widgets/app_bar/appbar_title.dart';
import 'package:medtech/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class MedicationsEmptyStateTabContainerScreen
    extends GetWidget<MedicationsEmptyStateTabContainerController> {
  const MedicationsEmptyStateTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 81.v,
          leadingWidth: 43.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgMenu,
            margin: EdgeInsets.only(
              left: 19.h,
              top: 14.v,
              bottom: 17.v,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_medications".tr,
            margin: EdgeInsets.only(left: 35.h),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgVolume,
              margin: EdgeInsets.only(
                left: 19.h,
                top: 14.v,
                right: 11.h,
              ),
            ),
            AppbarIconbutton1(
              svgPath: ImageConstant.imgClarityshoppingcartline,
              margin: EdgeInsets.only(
                left: 10.h,
                top: 14.v,
                right: 30.h,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 28.v,
                width: 206.h,
                margin: EdgeInsets.only(
                  left: 19.h,
                  top: 12.v,
                ),
                child: TabBar(
                  controller: controller.tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: appTheme.gray900,
                  labelStyle: TextStyle(
                    fontSize: 16.fSize,
                    fontFamily: 'Work Sans',
                    fontWeight: FontWeight.w500,
                  ),
                  unselectedLabelColor: appTheme.blueGray500,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 16.fSize,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                  indicatorColor: theme.colorScheme.primary,
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_my_medications".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_orders".tr,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 769.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    MedicationsPage(),
                    MedicationsOrdersPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
