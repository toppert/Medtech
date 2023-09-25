import 'controller/consultations_empty_state1_controller.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:medtech/widgets/app_bar/appbar_image.dart';
import 'package:medtech/widgets/app_bar/appbar_image_1.dart';
import 'package:medtech/widgets/app_bar/appbar_title.dart';
import 'package:medtech/widgets/app_bar/custom_app_bar.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ConsultationsEmptyState1Screen
    extends GetWidget<ConsultationsEmptyState1Controller> {
  const ConsultationsEmptyState1Screen({Key? key})
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
            text: "lbl_consultations".tr,
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
          padding: EdgeInsets.only(top: 215.v),
          child: Column(
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgGynecologyconsultationpana,
                height: 119.v,
                width: 149.h,
              ),
              SizedBox(height: 25.v),
              Text(
                "msg_no_consultation".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 13.v),
              Text(
                "msg_you_have_not_had".tr,
                style: CustomTextStyles.bodyMediumGray600_1,
              ),
              SizedBox(height: 23.v),
              CustomElevatedButton(
                width: 283.h,
                text: "msg_book_appointment".tr,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
