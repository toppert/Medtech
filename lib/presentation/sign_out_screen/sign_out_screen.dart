import 'controller/sign_out_controller.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SignOutScreen extends GetWidget<SignOutController> {
  const SignOutScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 20.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgFilloutrafiki,
                      height: 110.v,
                      width: 137.h,
                      margin: EdgeInsets.only(top: 23.v),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgEvacloseoutlineBlack900,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 91.h,
                        bottom: 109.v,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17.v),
              Text(
                "lbl_sign_out2".tr,
                style: CustomTextStyles.titleMediumSemiBold_3,
              ),
              Container(
                width: 285.h,
                margin: EdgeInsets.fromLTRB(42.h, 20.v, 41.h, 5.v),
                child: Text(
                  "msg_are_you_sure_you8".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.64,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          height: 43.v,
          text: "lbl_confirm".tr,
          margin: EdgeInsets.only(
            left: 19.h,
            right: 19.h,
            bottom: 20.v,
          ),
        ),
      ),
    );
  }
}
