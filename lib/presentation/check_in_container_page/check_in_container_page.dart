import 'controller/check_in_container_controller.dart';
import 'models/check_in_container_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';

class CheckInContainerPage extends StatelessWidget {
  CheckInContainerPage({Key? key})
      : super(
          key: key,
        );

  CheckInContainerController controller =
      Get.put(CheckInContainerController(CheckInContainerModel().obs));

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
          decoration: BoxDecoration(
            color: appTheme.whiteA70001,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup10243,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillWhiteA.copyWith(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgGroup10243,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse15,
                  height: 250.adaptSize,
                  width: 250.adaptSize,
                  radius: BorderRadius.circular(
                    125.h,
                  ),
                ),
                SizedBox(height: 39.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 146.h,
                    vertical: 109.v,
                  ),
                  decoration: AppDecoration.gradientGrayToGray,
                  child: Column(
                    children: [
                      Text(
                        "lbl_floyd_miles".tr,
                        style: CustomTextStyles.headlineSmallGray100,
                      ),
                      SizedBox(height: 8.v),
                      Text(
                        "lbl_ringing".tr,
                        style: CustomTextStyles.titleLargePrimaryContainer,
                      ),
                      SizedBox(height: 70.v),
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
