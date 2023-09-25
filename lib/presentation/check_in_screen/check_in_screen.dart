import 'controller/check_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class CheckInScreen extends GetWidget<CheckInController> {
  const CheckInScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          padding: EdgeInsets.only(bottom: 70.v),
          decoration: BoxDecoration(
            color: appTheme.whiteA70001,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup10613,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle143,
                  height: 130.adaptSize,
                  width: 130.adaptSize,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                  margin: EdgeInsets.only(
                    top: 45.v,
                    right: 19.h,
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 77.h,
                    vertical: 129.v,
                  ),
                  decoration: AppDecoration.gradientGrayToGray,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 5.v),
                      Text(
                        "msg_dr_rashida_mohammed3".tr,
                        style:
                            CustomTextStyles.headlineSmallPrimaryContainerBold,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}
