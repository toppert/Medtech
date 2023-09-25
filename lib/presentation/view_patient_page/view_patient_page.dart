import 'controller/view_patient_controller.dart';
import 'models/view_patient_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';

class ViewPatientPage extends StatelessWidget {
  ViewPatientPage({Key? key})
      : super(
          key: key,
        );

  ViewPatientController controller =
      Get.put(ViewPatientController(ViewPatientModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 19.h,
                    top: 20.v,
                    right: 19.h,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 1.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.h,
                          vertical: 17.v,
                        ),
                        decoration: AppDecoration.small.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgEllipse640x405,
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  radius: BorderRadius.circular(
                                    20.h,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 14.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "lbl_consultation".tr,
                                          style: theme.textTheme.titleMedium,
                                        ),
                                      ),
                                      SizedBox(height: 4.v),
                                      Text(
                                        "lbl_dr_john_dada".tr,
                                        style: CustomTextStyles
                                            .bodyMediumGray600_1,
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                CustomImageView(
                                  svgPath: ImageConstant.imgPlusGray900,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.only(bottom: 17.v),
                                ),
                              ],
                            ),
                            SizedBox(height: 15.v),
                            Divider(),
                            SizedBox(height: 13.v),
                            Text(
                              "msg_11_nov_2022_10_00am".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.v),
                      SizedBox(
                        height: 636.v,
                        width: 390.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin: EdgeInsets.only(left: 3.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15.h,
                                  vertical: 10.v,
                                ),
                                decoration:
                                    AppDecoration.outlineGray10002.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder20,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle1333,
                                          height: 60.adaptSize,
                                          width: 60.adaptSize,
                                          radius: BorderRadius.circular(
                                            10.h,
                                          ),
                                          margin: EdgeInsets.only(top: 10.v),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 21.h,
                                            top: 19.v,
                                            bottom: 8.v,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "msg_dr_rashida_mohammed".tr,
                                                style: CustomTextStyles
                                                    .titleMediumSemiBold_3,
                                              ),
                                              SizedBox(height: 6.v),
                                              Text(
                                                "lbl_haematologist".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumGray600_1,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        CustomImageView(
                                          svgPath: ImageConstant
                                              .imgIcbaselinemorehorizGray900,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          margin: EdgeInsets.only(bottom: 46.v),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 15.v),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 10.h,
                                            vertical: 8.v,
                                          ),
                                          decoration: AppDecoration
                                              .outlineIndigo1001
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8,
                                          ),
                                          child: Text(
                                            "lbl_12_12_2022".tr,
                                            style: theme.textTheme.bodyMedium,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 10.h),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 10.h,
                                            vertical: 8.v,
                                          ),
                                          decoration: AppDecoration
                                              .outlineIndigo1001
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8,
                                          ),
                                          child: Text(
                                            "lbl_09_30_am".tr,
                                            style: theme.textTheme.bodyMedium,
                                          ),
                                        ),
                                        Spacer(),
                                        CustomElevatedButton(
                                          height: 34.v,
                                          width: 92.h,
                                          text: "lbl_declined".tr,
                                          buttonStyle: CustomButtonStyles
                                              .fillPrimaryTL10,
                                          buttonTextStyle: CustomTextStyles
                                              .titleSmallPrimary,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4.v),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                margin: EdgeInsets.only(right: 1.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.h,
                                  vertical: 17.v,
                                ),
                                decoration: AppDecoration.outlineBlueA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder20,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse640x406,
                                          height: 40.adaptSize,
                                          width: 40.adaptSize,
                                          radius: BorderRadius.circular(
                                            20.h,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 14.h),
                                          child: Column(
                                            children: [
                                              Text(
                                                "lbl_consultation".tr,
                                                style:
                                                    theme.textTheme.titleMedium,
                                              ),
                                              SizedBox(height: 4.v),
                                              Text(
                                                "lbl_dr_ada_jolomi".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumGray600_1,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgAkariconsminus,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          margin: EdgeInsets.only(bottom: 17.v),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 16.v),
                                    Text(
                                      "msg_9_dec_2022_02_00pm".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                    SizedBox(height: 17.v),
                                    Divider(),
                                    SizedBox(height: 20.v),
                                    Text(
                                      "lbl_compliant".tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                    Container(
                                      width: 343.h,
                                      margin: EdgeInsets.only(
                                        top: 9.v,
                                        right: 6.h,
                                      ),
                                      child: Text(
                                        "msg_patient_complained".tr,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(
                                          height: 1.43,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 18.v),
                                    Text(
                                      "lbl_assessment".tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                    SizedBox(height: 11.v),
                                    SizedBox(
                                      width: 347.h,
                                      child: Text(
                                        "msg_patient_has_abnormal".tr,
                                        maxLines: 5,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(
                                          height: 1.43,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20.v),
                                    Text(
                                      "lbl_diagnosis".tr,
                                      style: CustomTextStyles
                                          .titleMediumSemiBold_3,
                                    ),
                                    SizedBox(height: 9.v),
                                    Text(
                                      "msg_lymphocytic_leukemia".tr,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                    SizedBox(height: 18.v),
                                    Text(
                                      "lbl_treatment".tr,
                                      style: CustomTextStyles
                                          .titleMediumSemiBold_3,
                                    ),
                                    SizedBox(height: 11.v),
                                    SizedBox(
                                      width: 167.h,
                                      child: Text(
                                        "msg_immunotheraphy_bone".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(
                                          height: 1.50,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 22.v),
                                    Text(
                                      "lbl_prescription".tr,
                                      style: CustomTextStyles
                                          .titleMediumSemiBold_3,
                                    ),
                                    SizedBox(height: 9.v),
                                    SizedBox(
                                      width: 99.h,
                                      child: Text(
                                        "msg_blinatumomab_clofarabine".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(
                                          height: 1.50,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 7.v),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 20.v,
                          right: 1.h,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.h,
                          vertical: 17.v,
                        ),
                        decoration: AppDecoration.small.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgEllipse640x407,
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  radius: BorderRadius.circular(
                                    20.h,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 14.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "lbl_consultation".tr,
                                          style: theme.textTheme.titleMedium,
                                        ),
                                      ),
                                      SizedBox(height: 4.v),
                                      Text(
                                        "lbl_dr_john_dada".tr,
                                        style: CustomTextStyles
                                            .bodyMediumGray600_1,
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                CustomImageView(
                                  svgPath: ImageConstant.imgPlusGray900,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.only(bottom: 17.v),
                                ),
                              ],
                            ),
                            SizedBox(height: 15.v),
                            Divider(),
                            SizedBox(height: 13.v),
                            Text(
                              "msg_11_nov_2022_10_00am".tr,
                              style: CustomTextStyles.titleSmallPrimary,
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
      ),
    );
  }
}
