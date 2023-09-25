import '../controller/lab_tests_controller.dart';
import '../models/orderdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';
import 'package:medtech/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class OrderdetailsItemWidget extends StatelessWidget {
  OrderdetailsItemWidget(
    this.orderdetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderdetailsItemModel orderdetailsItemModelObj;

  var controller = Get.find<LabTestsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineGray10002.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 3.v),
                child: Text(
                  "msg_order_id_166523".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 5.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "msg_23_10_2022_9_00".tr,
                  style: CustomTextStyles.bodySmallGray400,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgIcbaselinemorehorizGray900,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 22.h),
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
                  svgPath: ImageConstant.imgLabflasksvgrepocom,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: Column(
                  children: [
                    Obx(
                      () => Text(
                        orderdetailsItemModelObj.orderHaematolog!.value,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Obx(
                      () => Text(
                        orderdetailsItemModelObj.orderDiagnostic!.value,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumBluegray500_1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15.v),
          Row(
            children: [
              SizedBox(
                width: 60.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_amount".tr,
                        style: CustomTextStyles.bodyMediumGray600,
                      ),
                      TextSpan(
                        text: "lbl_7_000".tr,
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
                margin: EdgeInsets.only(bottom: 3.v),
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
