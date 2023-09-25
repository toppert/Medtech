import '../controller/wallet_controller.dart';
import '../models/wallet_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';
import 'package:medtech/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class WalletItemWidget extends StatelessWidget {
  WalletItemWidget(
    this.walletItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WalletItemModel walletItemModelObj;

  var controller = Get.find<WalletController>();

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
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              right: 5.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "msg_transaction_id".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  "msg_23_10_2022_9_00".tr,
                  style: CustomTextStyles.bodySmallGray400,
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Row(
            children: [
              CustomIconButton(
                height: 35.adaptSize,
                width: 35.adaptSize,
                margin: EdgeInsets.only(bottom: 2.v),
                padding: EdgeInsets.all(7.h),
                decoration: IconButtonStyleHelper.outlinePrimary,
                child: CustomImageView(
                  svgPath: ImageConstant.imgFluentwalletcPrimary,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        walletItemModelObj.topup!.value,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Obx(
                      () => Text(
                        walletItemModelObj.credit!.value,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumBluegray500_1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 17.v),
          Row(
            children: [
              SizedBox(
                width: 72.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_amount".tr,
                        style: CustomTextStyles.bodyMediumGray600,
                      ),
                      TextSpan(
                        text: "lbl_20_000".tr,
                        style: CustomTextStyles.titleMediumSemiBold_2,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              CustomElevatedButton(
                height: 34.v,
                width: 107.h,
                text: "lbl_successful2".tr,
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
