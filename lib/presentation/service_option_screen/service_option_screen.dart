import 'controller/service_option_controller.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/app_bar/appbar_image_1.dart';
import 'package:medtech/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:medtech/widgets/app_bar/custom_app_bar.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';
import 'package:medtech/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ServiceOptionScreen extends GetWidget<ServiceOptionController> {
  const ServiceOptionScreen({Key? key})
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
            text: "lbl_service_option".tr,
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
            vertical: 9.v,
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 2.h),
                decoration: AppDecoration.outlineBluegray900144.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 49.v,
                      child: VerticalDivider(
                        width: 3.h,
                        thickness: 3.v,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgBanned1,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(
                        left: 10.h,
                        top: 12.v,
                        bottom: 17.v,
                      ),
                    ),
                    Container(
                      width: 247.h,
                      margin: EdgeInsets.only(
                        left: 9.h,
                        top: 11.v,
                        bottom: 8.v,
                      ),
                      child: Text(
                        "msg_this_test_is_not".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallPrimary,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      svgPath: ImageConstant.imgEvacloseoutlinePrimary,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(
                        top: 12.v,
                        right: 17.h,
                        bottom: 21.v,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 2.h,
                  top: 20.v,
                  right: 2.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 72.h,
                  vertical: 24.v,
                ),
                decoration: AppDecoration.outlinePrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCar,
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                    ),
                    SizedBox(height: 12.v),
                    Text(
                      "msg_visit_diagnostic".tr,
                      style: CustomTextStyles.titleMediumSemiBold_3,
                    ),
                    SizedBox(height: 12.v),
                    SizedBox(
                      width: 241.h,
                      child: Text(
                        "msg_funbell_diagnostics_121".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          height: 1.37,
                        ),
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Text(
                      "msg_view_direction_in".tr,
                      style: CustomTextStyles.labelLargeBlueA400,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.v),
              CustomElevatedButton(
                height: 43.v,
                text: "lbl_pay_31_000".tr,
              ),
              SizedBox(height: 20.v),
              CustomOutlinedButton(
                text: "lbl_cancel".tr,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
