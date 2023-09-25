import '../view_patient_three_page/widgets/usermedicalinfo_item_widget.dart';
import 'controller/view_patient_three_controller.dart';
import 'models/usermedicalinfo_item_model.dart';
import 'models/view_patient_three_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';
import 'package:medtech/widgets/custom_icon_button.dart';

class ViewPatientThreePage extends StatelessWidget {
  ViewPatientThreePage({Key? key})
      : super(
          key: key,
        );

  ViewPatientThreeController controller =
      Get.put(ViewPatientThreeController(ViewPatientThreeModel().obs));

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
                    top: 32.v,
                    right: 19.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_conditions".tr,
                              style: CustomTextStyles.titleSmallSemiBold_1,
                            ),
                            TextSpan(
                              text: "lbl_210".tr,
                              style:
                                  CustomTextStyles.titleSmallBlueA400SemiBold,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 14.v),
                      Row(
                        children: [
                          CustomIconButton(
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            margin: EdgeInsets.only(
                              top: 3.v,
                              bottom: 4.v,
                            ),
                            padding: EdgeInsets.all(13.h),
                            decoration: IconButtonStyleHelper.fillPrimaryTL25,
                            child: CustomImageView(
                              svgPath: ImageConstant
                                  .imgMedicalhistoryPrimarycontainer,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_24_09_2023".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                                SizedBox(height: 4.v),
                                Text(
                                  "lbl_diabetics2".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                                SizedBox(height: 5.v),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_current_status".tr,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                      TextSpan(
                                        text: "lbl_type_2_mild2".tr,
                                        style:
                                            CustomTextStyles.bodySmallGray900,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 19.v),
                      Row(
                        children: [
                          CustomIconButton(
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            margin: EdgeInsets.only(
                              top: 3.v,
                              bottom: 4.v,
                            ),
                            padding: EdgeInsets.all(13.h),
                            decoration: IconButtonStyleHelper.fillPrimaryTL25,
                            child: CustomImageView(
                              svgPath: ImageConstant
                                  .imgMedicalhistoryPrimarycontainer,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_24_09_2023".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                                SizedBox(height: 4.v),
                                Text(
                                  "lbl_cold".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                                SizedBox(height: 5.v),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_current_status".tr,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                      TextSpan(
                                        text: "lbl_sinusis_high".tr,
                                        style:
                                            CustomTextStyles.bodySmallGray900,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 37.v),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_allergies2".tr,
                              style: CustomTextStyles.titleSmallSemiBold_1,
                            ),
                            TextSpan(
                              text: "lbl_33".tr,
                              style:
                                  CustomTextStyles.titleSmallBlueA400SemiBold,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 14.v),
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
                          itemCount: controller.viewPatientThreeModelObj.value
                              .usermedicalinfoItemList.value.length,
                          itemBuilder: (context, index) {
                            UsermedicalinfoItemModel model = controller
                                .viewPatientThreeModelObj
                                .value
                                .usermedicalinfoItemList
                                .value[index];
                            return UsermedicalinfoItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 3.h,
                          top: 175.v,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 15.h,
                          vertical: 10.v,
                        ),
                        decoration: AppDecoration.outlineGray10002.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle1333,
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
                                    top: 20.v,
                                    bottom: 10.v,
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
                                      SizedBox(height: 5.v),
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10.h,
                                    vertical: 9.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlineIndigo1001.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8,
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
                                    vertical: 9.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlineIndigo1001.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8,
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
                                  buttonStyle:
                                      CustomButtonStyles.fillPrimaryTL10,
                                  buttonTextStyle:
                                      CustomTextStyles.titleSmallPrimary,
                                ),
                              ],
                            ),
                            SizedBox(height: 4.v),
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
