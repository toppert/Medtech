import '../controller/medications_controller.dart';
import '../models/medications_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';
import 'package:medtech/widgets/custom_floating_text_field.dart';

// ignore: must_be_immutable
class MedicationsItemWidget extends StatelessWidget {
  MedicationsItemWidget(
    this.medicationsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MedicationsItemModel medicationsItemModelObj;

  var controller = Get.find<MedicationsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineGray10002.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgMedicinessvgrepocom,
                height: 45.adaptSize,
                width: 45.adaptSize,
                margin: EdgeInsets.only(top: 10.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  top: 12.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        medicationsItemModelObj.panadoltwo!.value,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleMediumSemiBold_3,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Obx(
                      () => Text(
                        medicationsItemModelObj.tablet10mg!.value,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumGray600_1,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomImageView(
                svgPath: ImageConstant.imgIcbaselinemorehorizGray900,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 31.v),
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
                decoration: AppDecoration.outlineIndigo1001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: CustomFloatingTextField(
                  width: 62.h,
                  controller: medicationsItemModelObj.tabletsCounterController,
                  labelText: "lbl_dosage".tr,
                  labelStyle: theme.textTheme.bodyMedium!,
                  hintText: "lbl_dosage".tr,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 8.v,
                ),
                decoration: AppDecoration.outlineIndigo1001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 1.v),
                    CustomFloatingTextField(
                      width: 61.h,
                      controller:
                          medicationsItemModelObj.twohundredtwentController,
                      labelText: "lbl_frequency".tr,
                      labelStyle: theme.textTheme.bodyMedium!,
                      hintText: "lbl_frequency".tr,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.outlineIndigo1001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 1.v),
                    CustomFloatingTextField(
                      width: 51.h,
                      controller: medicationsItemModelObj.durationController,
                      labelText: "lbl_duration".tr,
                      labelStyle: theme.textTheme.bodyMedium!,
                      hintText: "lbl_duration".tr,
                      contentPadding: EdgeInsets.only(top: 21.v),
                    ),
                  ],
                ),
              ),
              CustomElevatedButton(
                height: 34.v,
                width: 75.h,
                text: "lbl_active".tr,
                margin: EdgeInsets.only(
                  left: 28.h,
                  top: 19.v,
                ),
                buttonStyle: CustomButtonStyles.fillGreen,
                buttonTextStyle: CustomTextStyles.titleSmallGreen500,
              ),
            ],
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
