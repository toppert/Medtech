import 'controller/payment_successful_controller.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/app_bar/appbar_image_1.dart';
import 'package:medtech/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:medtech/widgets/app_bar/custom_app_bar.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class PaymentSuccessfulScreen extends GetWidget<PaymentSuccessfulController> {
  const PaymentSuccessfulScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1),
        appBar: CustomAppBar(
          height: 56.v,
          title: AppbarSubtitle2(
            text: "msg_payment_successful".tr,
            margin: EdgeInsets.only(left: 20.h),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgEvacloseoutlineBlack900,
              margin: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 16.v,
              ),
            ),
          ],
        ),
        body: Container(
          width: 388.h,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 9.v,
            right: 20.h,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 15.v,
          ),
          decoration: AppDecoration.outlineGray300.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgTeenyiconstickcirclesolid,
                height: 40.adaptSize,
                width: 40.adaptSize,
              ),
              SizedBox(height: 16.v),
              Text(
                "lbl_successful2".tr,
                style: CustomTextStyles.titleMediumGreen500,
              ),
              Container(
                width: 327.h,
                margin: EdgeInsets.only(
                  left: 11.h,
                  top: 21.v,
                  right: 10.h,
                ),
                child: Text(
                  "msg_your_transaction".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.71,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              Divider(),
              SizedBox(height: 7.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_amount3".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  Text(
                    "lbl_10_500_00".tr,
                    style: CustomTextStyles.titleSmallGreen500,
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_order_id".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  Text(
                    "lbl_166523".tr,
                    style: CustomTextStyles.titleSmallGreen500,
                  ),
                ],
              ),
              SizedBox(height: 11.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_transaction_id".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  Text(
                    "lbl_44317792355490".tr,
                    style: CustomTextStyles.titleSmallGreen500,
                  ),
                ],
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          height: 43.v,
          text: "lbl_done".tr,
          margin: EdgeInsets.only(
            left: 20.h,
            right: 20.h,
            bottom: 20.v,
          ),
        ),
      ),
    );
  }
}
