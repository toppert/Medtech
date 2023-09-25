import 'controller/successful_controller.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SuccessfulScreen extends GetWidget<SuccessfulController> {
  const SuccessfulScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 17.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgCelebrationrafiki,
                height: 388.v,
                width: 386.h,
              ),
              SizedBox(height: 40.v),
              Text(
                "lbl_successful".tr,
                style: CustomTextStyles.headlineSmallSemiBold,
              ),
              SizedBox(height: 17.v),
              SizedBox(
                width: 224.h,
                child: Text(
                  "msg_you_have_successfully".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.64,
                  ),
                ),
              ),
              SizedBox(height: 42.v),
              CustomElevatedButton(
                text: "lbl_sign_in".tr,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
