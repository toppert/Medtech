import 'controller/appointment_created_later_controller.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class AppointmentCreatedLaterScreen
    extends GetWidget<AppointmentCreatedLaterController> {
  const AppointmentCreatedLaterScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 58.h,
            vertical: 19.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgArrowdown,
                height: 100.adaptSize,
                width: 100.adaptSize,
              ),
              SizedBox(height: 18.v),
              Text(
                "lbl_thank_you".tr,
                style: CustomTextStyles.titleLargeBlueA400,
              ),
              SizedBox(height: 20.v),
              Text(
                "msg_appointment_created".tr,
                style: CustomTextStyles.titleLargeMedium,
              ),
              SizedBox(height: 20.v),
              SizedBox(
                width: 310.h,
                child: Text(
                  "msg_you_booked_an_appointment".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.57,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          height: 43.v,
          text: "lbl_done".tr,
          margin: EdgeInsets.only(
            left: 19.h,
            right: 19.h,
            bottom: 20.v,
          ),
        ),
      ),
    );
  }
}
