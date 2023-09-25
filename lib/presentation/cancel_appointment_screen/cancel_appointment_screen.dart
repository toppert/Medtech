import 'controller/cancel_appointment_controller.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/app_bar/appbar_image_1.dart';
import 'package:medtech/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:medtech/widgets/app_bar/custom_app_bar.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';
import 'package:medtech/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class CancelAppointmentScreen extends GetWidget<CancelAppointmentController> {
  const CancelAppointmentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
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
            horizontal: 19.h,
            vertical: 20.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 286.h,
                margin: EdgeInsets.only(
                  left: 8.h,
                  right: 94.h,
                ),
                child: Text(
                  "msg_are_you_sure_you7".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 29.v),
              CustomElevatedButton(
                height: 43.v,
                text: "lbl_yes".tr,
              ),
              SizedBox(height: 20.v),
              CustomOutlinedButton(
                text: "lbl_no".tr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
