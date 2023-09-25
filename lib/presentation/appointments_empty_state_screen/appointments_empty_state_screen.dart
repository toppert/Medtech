import 'controller/appointments_empty_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/app_bar/appbar_image.dart';
import 'package:medtech/widgets/app_bar/appbar_image_1.dart';
import 'package:medtech/widgets/app_bar/appbar_title.dart';
import 'package:medtech/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class AppointmentsEmptyStateScreen
    extends GetWidget<AppointmentsEmptyStateController> {
  const AppointmentsEmptyStateScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 82.v,
          leadingWidth: 43.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgMenu,
            margin: EdgeInsets.only(
              left: 19.h,
              top: 13.v,
              bottom: 18.v,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_appointments".tr,
            margin: EdgeInsets.only(left: 35.h),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgVolume,
              margin: EdgeInsets.fromLTRB(19.h, 13.v, 19.h, 12.v),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 242.v),
          child: Column(
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgCalendarpana1,
                height: 130.v,
                width: 181.h,
              ),
              SizedBox(height: 25.v),
              Text(
                "lbl_no_appointments".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 13.v),
              Text(
                "msg_you_do_not_have5".tr,
                style: CustomTextStyles.bodyMediumGray600_1,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
