import 'controller/appointments_empty_state1_controller.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:medtech/widgets/app_bar/appbar_image.dart';
import 'package:medtech/widgets/app_bar/appbar_image_1.dart';
import 'package:medtech/widgets/app_bar/appbar_title.dart';
import 'package:medtech/widgets/app_bar/custom_app_bar.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class AppointmentsEmptyState1Screen
    extends GetWidget<AppointmentsEmptyState1Controller> {
  const AppointmentsEmptyState1Screen({Key? key})
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
              margin: EdgeInsets.only(
                left: 19.h,
                top: 13.v,
                right: 12.h,
              ),
            ),
            AppbarIconbutton1(
              svgPath: ImageConstant.imgClarityshoppingcartline,
              margin: EdgeInsets.only(
                left: 10.h,
                top: 13.v,
                right: 31.h,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 55.h,
            top: 214.v,
            right: 55.h,
          ),
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
                "msg_you_have_not_scheduled".tr,
                style: CustomTextStyles.bodyMediumGray600_1,
              ),
              CustomElevatedButton(
                text: "msg_book_appointment".tr,
                margin: EdgeInsets.fromLTRB(18.h, 23.v, 17.h, 5.v),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
