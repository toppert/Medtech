import 'controller/cancel_appointment1_controller.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/app_bar/appbar_image_1.dart';
import 'package:medtech/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:medtech/widgets/app_bar/custom_app_bar.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';
import 'package:medtech/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class CancelAppointment1Screen extends GetWidget<CancelAppointment1Controller> {
  const CancelAppointment1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1),
        appBar: CustomAppBar(
          height: 65.v,
          title: AppbarSubtitle2(
            text: "msg_cancel_appointment".tr,
            margin: EdgeInsets.only(left: 20.h),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgEvacloseoutlineBlack900,
              margin: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 16.v,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 11.v,
          ),
          child: Column(
            children: [
              Container(
                width: 381.h,
                margin: EdgeInsets.only(right: 8.h),
                child: Text(
                  "msg_are_you_sure_you5".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.57,
                  ),
                ),
              ),
              SizedBox(height: 22.v),
              CustomElevatedButton(
                height: 43.v,
                text: "lbl_yes".tr,
              ),
              SizedBox(height: 20.v),
              CustomOutlinedButton(
                text: "lbl_no".tr,
              ),
              SizedBox(height: 8.v),
            ],
          ),
        ),
      ),
    );
  }
}
