import 'controller/doctor_s_profile_one_controller.dart';
import 'models/doctor_s_profile_one_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';

class DoctorSProfileOnePage extends StatelessWidget {
  DoctorSProfileOnePage({Key? key})
      : super(
          key: key,
        );

  DoctorSProfileOneController controller =
      Get.put(DoctorSProfileOneController(DoctorSProfileOneModel().obs));

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
                    top: 27.v,
                    right: 23.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_biography".tr,
                        style: CustomTextStyles.titleMediumInterSemiBold,
                      ),
                      SizedBox(height: 17.v),
                      SizedBox(
                        width: 386.h,
                        child: Text(
                          "msg_lorem_ipsum_dolor6".tr,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumInter.copyWith(
                            height: 1.57,
                          ),
                        ),
                      ),
                      SizedBox(height: 30.v),
                      Text(
                        "lbl_services".tr,
                        style: CustomTextStyles.titleMediumInterSemiBold,
                      ),
                      SizedBox(height: 17.v),
                      Row(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgLocationPrimary,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(bottom: 3.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "msg_routine_checkups".tr,
                              style: CustomTextStyles.bodyMediumInter,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 13.v),
                      Row(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgLocationPrimary,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(bottom: 3.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "msg_health_risk_management".tr,
                              style: CustomTextStyles.bodyMediumInter,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 13.v),
                      Row(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgLocationPrimary,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(bottom: 3.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "lbl_screening_tests".tr,
                              style: CustomTextStyles.bodyMediumInter,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 13.v,
                          right: 91.h,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgLocationPrimary,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(bottom: 2.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "msg_treatment_of_common".tr,
                                style: CustomTextStyles.bodyMediumInter,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 33.v),
                      Text(
                        "lbl_qualifications".tr,
                        style: CustomTextStyles.titleMediumInterSemiBold,
                      ),
                      SizedBox(height: 16.v),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgLocationPrimary,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(bottom: 22.v),
                          ),
                          Expanded(
                            child: Container(
                              width: 362.h,
                              margin: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "msg_residency_university".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    CustomTextStyles.bodyMediumInter.copyWith(
                                  height: 1.40,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 14.v),
                      Row(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgLocationPrimary,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(bottom: 3.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "msg_mbbs_university".tr,
                              style: CustomTextStyles.bodyMediumInter,
                            ),
                          ),
                        ],
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
