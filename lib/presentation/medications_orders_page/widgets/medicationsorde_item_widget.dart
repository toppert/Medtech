import '../controller/medications_orders_controller.dart';
import '../models/medicationsorde_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';
import 'package:medtech/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class MedicationsordeItemWidget extends StatelessWidget {
  MedicationsordeItemWidget(
    this.medicationsordeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MedicationsordeItemModel medicationsordeItemModelObj;

  var controller = Get.find<MedicationsOrdersController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineGray10002.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 3.v),
                child: Obx(
                  () => Text(
                    medicationsordeItemModelObj.orderid166523!.value,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 5.v,
                  bottom: 3.v,
                ),
                child: Obx(
                  () => Text(
                    medicationsordeItemModelObj.price!.value,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallGray400,
                  ),
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgIcbaselinemorehorizGray900,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 23.h),
              ),
            ],
          ),
          SizedBox(height: 10.v),
          Row(
            children: [
              CustomIconButton(
                height: 35.adaptSize,
                width: 35.adaptSize,
                margin: EdgeInsets.only(bottom: 3.v),
                padding: EdgeInsets.all(7.h),
                decoration: IconButtonStyleHelper.fillBlueATL15,
                child: CustomImageView(
                  svgPath: ImageConstant.imgPillspillsvgrepocom,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        medicationsordeItemModelObj.panadolextra500!.value,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Obx(
                      () => Text(
                        medicationsordeItemModelObj.prostaneyedrop!.value,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          Row(
            children: [
              SizedBox(
                width: 55.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_amount".tr,
                        style: CustomTextStyles.bodyMediumGray600,
                      ),
                      TextSpan(
                        text: "lbl_n3_000".tr,
                        style: CustomTextStyles.titleMediumSemiBold_2,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              CustomElevatedButton(
                height: 34.v,
                width: 111.h,
                text: "lbl_in_progress".tr,
                margin: EdgeInsets.only(bottom: 2.v),
                buttonStyle: CustomButtonStyles.fillBlueA,
                buttonTextStyle: CustomTextStyles.titleSmallBlueA400,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
