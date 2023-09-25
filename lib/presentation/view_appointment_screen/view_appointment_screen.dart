import 'controller/view_appointment_controller.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/app_bar/appbar_image_1.dart';
import 'package:medtech/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:medtech/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ViewAppointmentScreen extends GetWidget<ViewAppointmentController> {
  const ViewAppointmentScreen({Key? key})
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
            text: "msg_view_appointment".tr,
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
            horizontal: 20.h,
            vertical: 19.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse565x651,
                    height: 65.adaptSize,
                    width: 65.adaptSize,
                    radius: BorderRadius.circular(
                      32.h,
                    ),
                    margin: EdgeInsets.only(bottom: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_floyd_miles".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          "lbl_30_years_old".tr,
                          style: CustomTextStyles.bodyMediumBluegray500_1,
                        ),
                        SizedBox(height: 7.v),
                        Text(
                          "lbl_male".tr,
                          style: CustomTextStyles.bodyMediumBluegray500_1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.v),
              Text(
                "msg_appointment_date".tr,
                style: CustomTextStyles.titleMediumSemiBold_3,
              ),
              SizedBox(height: 11.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_06_september_20222".tr,
                      style: CustomTextStyles.titleSmallBlueA400SemiBold,
                    ),
                    TextSpan(
                      text: "lbl3".tr,
                      style: CustomTextStyles.titleSmallIndigo100,
                    ),
                    TextSpan(
                      text: "lbl_03_00_pm".tr,
                      style: CustomTextStyles.titleSmallBlueA400SemiBold,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 32.v),
              Text(
                "lbl_blood_group".tr,
                style: CustomTextStyles.titleMediumSemiBold_3,
              ),
              SizedBox(height: 10.v),
              Text(
                "lbl_o".tr,
                style: theme.textTheme.bodyMedium,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 31.v,
                  right: 18.h,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_steady_pcv".tr,
                          style: CustomTextStyles.titleMediumSemiBold_3,
                        ),
                        SizedBox(height: 11.v),
                        Text(
                          "lbl4".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    Spacer(),
                    SizedBox(
                      height: 47.v,
                      child: VerticalDivider(
                        width: 1.h,
                        thickness: 1.v,
                        color: appTheme.gray30001,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 39.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "msg_last_confirmed_pcv".tr,
                            style: CustomTextStyles.titleMediumSemiBold_3,
                          ),
                          SizedBox(height: 13.v),
                          Text(
                            "lbl4".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.v),
              Text(
                "msg_current_condition_s".tr,
                style: CustomTextStyles.titleMediumSemiBold_3,
              ),
              SizedBox(height: 10.v),
              SizedBox(
                width: 63.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_diabetics".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: "lbl_type_2_mild".tr,
                        style:
                            CustomTextStyles.bodyMediumBluegray500_2.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 33.v),
              Text(
                "lbl_allergies".tr,
                style: CustomTextStyles.titleMediumSemiBold_3,
              ),
              SizedBox(height: 9.v),
              SizedBox(
                width: 52.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_asthma".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: "lbl_high".tr,
                        style: CustomTextStyles.bodyMediumBluegray500_2,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 29.v),
              Text(
                "lbl_note".tr,
                style: CustomTextStyles.titleMediumSemiBold_3,
              ),
              SizedBox(height: 11.v),
              SizedBox(
                width: 386.h,
                child: Text(
                  "msg_lorem_ipsum_dolor13".tr,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
