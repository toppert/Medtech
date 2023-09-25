import '../appointments_screen/widgets/userprofile_item_widget.dart';
import 'controller/appointments_controller.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/app_bar/appbar_image.dart';
import 'package:medtech/widgets/app_bar/appbar_image_1.dart';
import 'package:medtech/widgets/app_bar/appbar_title.dart';
import 'package:medtech/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class AppointmentsScreen extends GetWidget<AppointmentsController> {
  const AppointmentsScreen({Key? key})
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
                padding: EdgeInsets.symmetric(vertical: 13.v),
                decoration: AppDecoration.fillPrimaryContainer,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 26.v),
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
                        text: "lbl_appointments".tr,
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
              Container(
                padding: EdgeInsets.symmetric(vertical: 26.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child: Text(
                        "msg_appointment_requests".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(
                        left: 19.h,
                        top: 23.v,
                      ),
                      child: IntrinsicWidth(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 226.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 11.h,
                                vertical: 17.v,
                              ),
                              decoration: AppDecoration.outlineGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse540x40,
                                    height: 40.adaptSize,
                                    width: 40.adaptSize,
                                    radius: BorderRadius.circular(
                                      20.h,
                                    ),
                                    margin: EdgeInsets.only(top: 1.v),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 10.h,
                                      top: 4.v,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_floyd_miles".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                        SizedBox(height: 3.v),
                                        Text(
                                          "lbl_11th_nov_10am".tr,
                                          style: CustomTextStyles
                                              .labelLargeGray900,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 226.h,
                              margin: EdgeInsets.only(left: 10.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 11.h,
                                vertical: 17.v,
                              ),
                              decoration: AppDecoration.outlineGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse51,
                                    height: 40.adaptSize,
                                    width: 40.adaptSize,
                                    radius: BorderRadius.circular(
                                      20.h,
                                    ),
                                    margin: EdgeInsets.only(top: 1.v),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 10.h,
                                      top: 4.v,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_magret_chukes".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                        SizedBox(height: 3.v),
                                        Text(
                                          "lbl_11th_nov_10am".tr,
                                          style: CustomTextStyles
                                              .labelLargeGray900,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 19.h,
                        top: 36.v,
                      ),
                      child: Text(
                        "msg_upcoming_appointments".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 19.h,
                            top: 27.v,
                            right: 19.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 107.v),
                                child: Text(
                                  "lbl_8_00am".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                              Expanded(
                                child: Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 24.h),
                                    child: Obx(
                                      () => ListView.separated(
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (
                                          context,
                                          index,
                                        ) {
                                          return SizedBox(
                                            height: 25.v,
                                          );
                                        },
                                        itemCount: controller
                                            .appointmentsModelObj
                                            .value
                                            .userprofileItemList
                                            .value
                                            .length,
                                        itemBuilder: (context, index) {
                                          UserprofileItemModel model =
                                              controller
                                                  .appointmentsModelObj
                                                  .value
                                                  .userprofileItemList
                                                  .value[index];
                                          return UserprofileItemWidget(
                                            model,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 19.h,
                        top: 24.v,
                      ),
                      child: Text(
                        "lbl_9_00am".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 19.h,
                        top: 132.v,
                      ),
                      child: Text(
                        "lbl_9_30am".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 19.h,
                        top: 132.v,
                        bottom: 91.v,
                      ),
                      child: Text(
                        "lbl_10_00am".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
