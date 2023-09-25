import '../ratings_screen/widgets/ratings_item_widget.dart';
import 'controller/ratings_controller.dart';
import 'models/ratings_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/app_bar/appbar_image.dart';
import 'package:medtech/widgets/app_bar/appbar_image_1.dart';
import 'package:medtech/widgets/app_bar/appbar_title.dart';
import 'package:medtech/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class RatingsScreen extends GetWidget<RatingsController> {
  const RatingsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                decoration: AppDecoration.fillPrimaryContainer,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 39.v),
                    CustomAppBar(
                      height: 30.v,
                      leadingWidth: 43.h,
                      leading: AppbarImage(
                        svgPath: ImageConstant.imgMenu,
                        margin: EdgeInsets.only(
                          left: 19.h,
                          bottom: 5.v,
                        ),
                      ),
                      title: AppbarTitle(
                        text: "lbl_ratings".tr,
                        margin: EdgeInsets.only(left: 35.h),
                      ),
                      actions: [
                        AppbarImage1(
                          svgPath: ImageConstant.imgVolume,
                          margin: EdgeInsets.symmetric(horizontal: 19.h),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 19.h,
                      right: 19.h,
                      bottom: 5.v,
                    ),
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
                              svgPath: ImageConstant.imgStarblack24dpAmberA400,
                              height: 24.v,
                              width: 23.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_4_56".tr,
                                      style: CustomTextStyles
                                          .titleMediumBluegray500SemiBold,
                                    ),
                                    TextSpan(
                                      text: "lbl_5_02".tr,
                                      style: CustomTextStyles
                                          .bodyLargeBluegray500_1,
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
                                      backgroundColor: appTheme.amberA400,
                                      color: appTheme.blueA400,
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
                                      backgroundColor: appTheme.amberA400,
                                      color: appTheme.purple400,
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
                                      backgroundColor: appTheme.amberA400,
                                      color: theme.colorScheme.primary,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    height: 200.v,
                                    width: 40.h,
                                    child: CircularProgressIndicator(
                                      value: 0.5,
                                      backgroundColor: appTheme.amberA400,
                                      color: appTheme.green500,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "lbl_4_56".tr,
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
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgLeftAmberA4001,
                              height: 16.v,
                              width: 116.h,
                              margin: EdgeInsets.only(bottom: 1.v),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgLinevalue,
                              height: 16.v,
                              width: 156.h,
                              margin: EdgeInsets.only(
                                left: 16.h,
                                bottom: 1.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 19.h),
                              child: Text(
                                "lbl_52".tr,
                                style: CustomTextStyles.titleSmallSemiBold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "lbl_1_820".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 26.v),
                        Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgLeftAmberA400,
                              height: 16.v,
                              width: 116.h,
                              margin: EdgeInsets.only(bottom: 1.v),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgLinevalueGray100,
                              height: 16.v,
                              width: 156.h,
                              margin: EdgeInsets.only(
                                left: 16.h,
                                bottom: 1.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 36.h),
                              child: Text(
                                "lbl_82".tr,
                                style: CustomTextStyles.titleSmallSemiBold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "lbl_280".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 26.v),
                        Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgLeftAmberA40016x116,
                              height: 16.v,
                              width: 116.h,
                              margin: EdgeInsets.only(bottom: 1.v),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgLinevalueGray100,
                              height: 16.v,
                              width: 156.h,
                              margin: EdgeInsets.only(
                                left: 16.h,
                                bottom: 1.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.h),
                              child: Text(
                                "lbl_142".tr,
                                style: CustomTextStyles.titleSmallSemiBold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "lbl_490".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 26.v),
                        Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgLeft16x116,
                              height: 16.v,
                              width: 116.h,
                              margin: EdgeInsets.only(bottom: 1.v),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgLinevalueGray100,
                              height: 16.v,
                              width: 156.h,
                              margin: EdgeInsets.only(
                                left: 16.h,
                                bottom: 1.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 32.h),
                              child: Text(
                                "lbl_222".tr,
                                style: CustomTextStyles.titleSmallSemiBold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "lbl_170".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 26.v),
                        Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgLeft1,
                              height: 16.v,
                              width: 116.h,
                              margin: EdgeInsets.only(bottom: 1.v),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgLinevalueGray100,
                              height: 16.v,
                              width: 156.h,
                              margin: EdgeInsets.only(
                                left: 16.h,
                                bottom: 1.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 31.h),
                              child: Text(
                                "lbl_123".tr,
                                style: CustomTextStyles.titleSmallSemiBold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "lbl_420".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 37.v),
                        Obx(
                          () => ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (
                              context,
                              index,
                            ) {
                              return SizedBox(
                                height: 18.v,
                              );
                            },
                            itemCount: controller.ratingsModelObj.value
                                .ratingsItemList.value.length,
                            itemBuilder: (context, index) {
                              RatingsItemModel model = controller
                                  .ratingsModelObj
                                  .value
                                  .ratingsItemList
                                  .value[index];
                              return RatingsItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
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
