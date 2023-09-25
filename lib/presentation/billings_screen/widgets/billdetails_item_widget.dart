import '../controller/billings_controller.dart';
import '../models/billdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';
import 'package:medtech/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class BilldetailsItemWidget extends StatelessWidget {
  BilldetailsItemWidget(
    this.billdetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BilldetailsItemModel billdetailsItemModelObj;

  var controller = Get.find<BillingsController>();

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
                  "lbl_bill_id_166523".tr,
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
                margin: EdgeInsets.only(left: 25.h),
              ),
            ],
          ),
          SizedBox(height: 11.v),
          Row(
            children: [
              CustomIconButton(
                height: 35.adaptSize,
                width: 35.adaptSize,
                margin: EdgeInsets.only(
                  top: 1.v,
                  bottom: 2.v,
                ),
                padding: EdgeInsets.all(9.h),
                decoration: IconButtonStyleHelper.fillBlueATL15,
                child: CustomImageView(
                  svgPath: ImageConstant.imgPairofbillssvgrepocom,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        billdetailsItemModelObj.userName!.value,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Obx(
                      () => Text(
                        billdetailsItemModelObj.userGender!.value,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumGray600_1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Row(
            children: [
              SizedBox(
                width: 63.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_amount".tr,
                        style: CustomTextStyles.bodyMediumGray600,
                      ),
                      TextSpan(
                        text: "lbl_10_0002".tr,
                        style: CustomTextStyles.titleMediumSemiBold_2,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              CustomElevatedButton(
                height: 34.v,
                width: 82.h,
                text: "lbl_settled".tr,
                margin: EdgeInsets.only(bottom: 3.v),
                buttonStyle: CustomButtonStyles.fillGreen,
                buttonTextStyle: CustomTextStyles.titleSmallGreen500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
