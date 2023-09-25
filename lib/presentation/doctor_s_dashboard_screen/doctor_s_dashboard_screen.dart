import '../doctor_s_dashboard_screen/widgets/userprofile3_item_widget.dart';
import 'controller/doctor_s_dashboard_controller.dart';
import 'models/userprofile3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/app_bar/appbar_image.dart';
import 'package:medtech/widgets/app_bar/appbar_image_1.dart';
import 'package:medtech/widgets/app_bar/appbar_subtitle_6.dart';
import 'package:medtech/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class DoctorSDashboardScreen extends GetWidget<DoctorSDashboardController> {
  const DoctorSDashboardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 80.v,
          leadingWidth: 43.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgMenu,
            margin: EdgeInsets.only(
              left: 19.h,
              top: 15.v,
              bottom: 15.v,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle6(
            text: "msg_tuesday_5_december".tr,
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgVolume,
              margin: EdgeInsets.fromLTRB(19.h, 16.v, 19.h, 15.v),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 19.v),
          child: Column(
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgFrame12574Green500,
                height: 70.v,
                width: 390.h,
              ),
              SizedBox(height: 30.v),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                color: appTheme.gray5004,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.circleBorder20,
                ),
                child: Container(
                  height: 170.v,
                  width: 390.h,
                  decoration: AppDecoration.outlineBluegray900145.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder20,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage8,
                        height: 170.v,
                        width: 223.h,
                        alignment: Alignment.centerRight,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.h,
                            vertical: 35.v,
                          ),
                          decoration:
                              AppDecoration.gradientBlueAToBlueA.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder20,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "msg_hello_dr_rashida".tr,
                                style: CustomTextStyles
                                    .headlineSmallPrimaryContainerBold,
                              ),
                              SizedBox(height: 9.v),
                              SizedBox(
                                width: 195.h,
                                child: Text(
                                  "msg_here_are_your_important".tr,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .titleSmallPrimaryContainer
                                      .copyWith(
                                    height: 1.43,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  top: 30.v,
                  right: 19.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 4.v),
                      child: Text(
                        "msg_appointment_requests".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgMaterialsymbol,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ],
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_floyd_miles".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                  SizedBox(height: 3.v),
                                  Text(
                                    "lbl_11th_nov_10am".tr,
                                    style: CustomTextStyles.labelLargeGray900,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_magret_chukes".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                  SizedBox(height: 3.v),
                                  Text(
                                    "lbl_11th_nov_10am".tr,
                                    style: CustomTextStyles.labelLargeGray900,
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
                  top: 30.v,
                  right: 19.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 6.v),
                      child: Text(
                        "msg_upcoming_appointments".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgMaterialsymbol,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ],
                ),
              ),
              Padding(
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
                      padding: EdgeInsets.only(bottom: 105.v),
                      child: Text(
                        "lbl_8_00am".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Obx(
                          () => ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (
                              context,
                              index,
                            ) {
                              return SizedBox(
                                height: 25.v,
                              );
                            },
                            itemCount: controller.doctorSDashboardModelObj.value
                                .userprofile3ItemList.value.length,
                            itemBuilder: (context, index) {
                              Userprofile3ItemModel model = controller
                                  .doctorSDashboardModelObj
                                  .value
                                  .userprofile3ItemList
                                  .value[index];
                              return Userprofile3ItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 19.h,
                    top: 24.v,
                    bottom: 24.v,
                  ),
                  child: Text(
                    "lbl_9_00am".tr,
                    style: theme.textTheme.bodyMedium,
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
