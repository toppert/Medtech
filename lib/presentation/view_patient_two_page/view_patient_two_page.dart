import '../view_patient_two_page/widgets/medicationsched_item_widget.dart';
import 'controller/view_patient_two_controller.dart';
import 'models/medicationsched_item_model.dart';
import 'models/view_patient_two_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';

class ViewPatientTwoPage extends StatelessWidget {
  ViewPatientTwoPage({Key? key})
      : super(
          key: key,
        );

  ViewPatientTwoController controller =
      Get.put(ViewPatientTwoController(ViewPatientTwoModel().obs));

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
                Expanded(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Padding(
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
                                  text: "msg_current_medications3".tr,
                                  style: CustomTextStyles.titleSmallSemiBold_1,
                                ),
                                TextSpan(
                                  text: "lbl_33".tr,
                                  style: CustomTextStyles
                                      .titleSmallBlueA400SemiBold,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 15.v,
                                right: 1.h,
                              ),
                              child: Obx(
                                () => ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (
                                    context,
                                    index,
                                  ) {
                                    return SizedBox(
                                      height: 20.v,
                                    );
                                  },
                                  itemCount: controller
                                      .viewPatientTwoModelObj
                                      .value
                                      .medicationschedItemList
                                      .value
                                      .length,
                                  itemBuilder: (context, index) {
                                    MedicationschedItemModel model = controller
                                        .viewPatientTwoModelObj
                                        .value
                                        .medicationschedItemList
                                        .value[index];
                                    return MedicationschedItemWidget(
                                      model,
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 3.h,
                              top: 400.v,
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
                                      decoration: AppDecoration
                                          .outlineIndigo1001
                                          .copyWith(
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
                                      decoration: AppDecoration
                                          .outlineIndigo1001
                                          .copyWith(
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
