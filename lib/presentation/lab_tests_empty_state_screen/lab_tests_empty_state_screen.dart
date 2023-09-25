import 'controller/lab_tests_empty_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:medtech/widgets/app_bar/appbar_image.dart';
import 'package:medtech/widgets/app_bar/appbar_image_1.dart';
import 'package:medtech/widgets/app_bar/appbar_title.dart';
import 'package:medtech/widgets/app_bar/custom_app_bar.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class LabTestsEmptyStateScreen extends GetWidget<LabTestsEmptyStateController> {
  const LabTestsEmptyStateScreen({Key? key})
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
            text: "lbl_lab_tests".tr,
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
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 56.h,
            top: 215.v,
            right: 56.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgBloodtestpana,
                height: 89.v,
                width: 131.h,
                margin: EdgeInsets.only(left: 76.h),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 76.h,
                  top: 23.v,
                ),
                child: Text(
                  "lbl_no_lab_tests".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 15.v,
                ),
                child: Text(
                  "msg_you_do_not_have2".tr,
                  style: CustomTextStyles.bodyMediumGray600_1,
                ),
              ),
              CustomElevatedButton(
                text: "lbl_book_lab_test".tr,
                margin: EdgeInsets.only(
                  top: 23.v,
                  right: 33.h,
                  bottom: 5.v,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
