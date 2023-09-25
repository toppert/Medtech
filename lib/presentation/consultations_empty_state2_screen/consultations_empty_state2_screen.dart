import 'controller/consultations_empty_state2_controller.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/app_bar/appbar_image.dart';
import 'package:medtech/widgets/app_bar/appbar_image_1.dart';
import 'package:medtech/widgets/app_bar/appbar_title.dart';
import 'package:medtech/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ConsultationsEmptyState2Screen
    extends GetWidget<ConsultationsEmptyState2Controller> {
  const ConsultationsEmptyState2Screen({Key? key})
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
              margin: EdgeInsets.fromLTRB(19.h, 14.v, 19.h, 11.v),
            ),
          ],
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgGynecologyconsultationpana,
                height: 153.v,
                width: 181.h,
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
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
