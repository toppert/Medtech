import 'controller/ratings_empty_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/app_bar/appbar_image.dart';
import 'package:medtech/widgets/app_bar/appbar_image_1.dart';
import 'package:medtech/widgets/app_bar/appbar_title.dart';
import 'package:medtech/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class RatingsEmptyStateScreen extends GetWidget<RatingsEmptyStateController> {
  const RatingsEmptyStateScreen({Key? key})
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
            text: "lbl_ratings".tr,
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
          padding: EdgeInsets.all(19.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_overall_ratings".tr,
                style: CustomTextStyles.titleMediumSemiBold_3,
              ),
              SizedBox(height: 7.v),
              Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgStarblack24dp,
                    height: 24.v,
                    width: 23.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_0_002".tr,
                            style:
                                CustomTextStyles.titleMediumBluegray500SemiBold,
                          ),
                          TextSpan(
                            text: "lbl_5_02".tr,
                            style: CustomTextStyles.bodyLargeBluegray500_1,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 37.v),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 200.adaptSize,
                  width: 200.adaptSize,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 200.adaptSize,
                          width: 200.adaptSize,
                          child: CircularProgressIndicator(
                            value: 0.5,
                            backgroundColor: appTheme.gray30001,
                            color: appTheme.gray30001,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 200.adaptSize,
                          width: 200.adaptSize,
                          child: CircularProgressIndicator(
                            value: 0.5,
                            backgroundColor: appTheme.gray30001,
                            color: appTheme.gray30001,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 200.adaptSize,
                          width: 200.adaptSize,
                          child: CircularProgressIndicator(
                            value: 0.5,
                            backgroundColor: appTheme.gray30001,
                            color: appTheme.gray30001,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 200.adaptSize,
                          width: 200.adaptSize,
                          child: CircularProgressIndicator(
                            value: 0.5,
                            backgroundColor: appTheme.gray30001,
                            color: appTheme.gray30001,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_0_002".tr,
                                style: CustomTextStyles
                                    .titleMediumInterBluegray500,
                              ),
                              TextSpan(
                                text: "lbl_5_02".tr,
                                style: CustomTextStyles
                                    .bodyLargeInterBluegray500_1,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 41.v),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgLeftGray300011,
                    height: 16.v,
                    width: 112.h,
                  ),
                  Container(
                    height: 12.v,
                    width: 197.h,
                    margin: EdgeInsets.only(
                      left: 16.h,
                      top: 2.v,
                      bottom: 3.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.gray100,
                      borderRadius: BorderRadius.circular(
                        6.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_02".tr,
                      style: CustomTextStyles.titleSmallSemiBold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "lbl_03".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 26.v),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgLeft,
                    height: 16.v,
                    width: 112.h,
                  ),
                  Container(
                    height: 12.v,
                    width: 197.h,
                    margin: EdgeInsets.only(
                      left: 16.h,
                      top: 2.v,
                      bottom: 3.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.gray100,
                      borderRadius: BorderRadius.circular(
                        6.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_02".tr,
                      style: CustomTextStyles.titleSmallSemiBold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "lbl_03".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 26.v),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgLeftGray30001,
                    height: 16.v,
                    width: 112.h,
                  ),
                  Container(
                    height: 12.v,
                    width: 197.h,
                    margin: EdgeInsets.only(
                      left: 16.h,
                      top: 2.v,
                      bottom: 3.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.gray100,
                      borderRadius: BorderRadius.circular(
                        6.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_02".tr,
                      style: CustomTextStyles.titleSmallSemiBold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "lbl_03".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 26.v),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgLeftGray3000116x112,
                    height: 16.v,
                    width: 112.h,
                  ),
                  Container(
                    height: 12.v,
                    width: 197.h,
                    margin: EdgeInsets.only(
                      left: 16.h,
                      top: 2.v,
                      bottom: 3.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.gray100,
                      borderRadius: BorderRadius.circular(
                        6.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_02".tr,
                      style: CustomTextStyles.titleSmallSemiBold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "lbl_03".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 26.v),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgLeft16x112,
                    height: 16.v,
                    width: 112.h,
                  ),
                  Container(
                    height: 12.v,
                    width: 197.h,
                    margin: EdgeInsets.only(
                      left: 16.h,
                      top: 2.v,
                      bottom: 3.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.gray100,
                      borderRadius: BorderRadius.circular(
                        6.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_02".tr,
                      style: CustomTextStyles.titleSmallSemiBold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "lbl_03".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 38.v),
              Text(
                "lbl_no_rating_yet".tr,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
