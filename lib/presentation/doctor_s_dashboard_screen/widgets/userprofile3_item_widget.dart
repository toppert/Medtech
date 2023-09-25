import '../controller/doctor_s_dashboard_controller.dart';
import '../models/userprofile3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  Userprofile3ItemWidget(
    this.userprofile3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile3ItemModel userprofile3ItemModelObj;

  var controller = Get.find<DoctorSDashboardController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 122.v,
      width: 314.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 122.v,
              width: 306.h,
              decoration: BoxDecoration(
                color: appTheme.amberA400,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(right: 8.h),
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 17.v,
              ),
              decoration: AppDecoration.small.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse640x401,
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          radius: BorderRadius.circular(
                            20.h,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Obx(
                                  () => Text(
                                    userprofile3ItemModelObj.userName!.value,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        CustomTextStyles.titleMediumSemiBold_3,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "lbl_female_26_yrs".tr,
                                style: CustomTextStyles.bodyMediumGray600_1,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgIcbaselinemorehorizGray900,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(bottom: 17.v),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 14.v),
                    child: Divider(
                      indent: 5.h,
                      endIndent: 5.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 5.h,
                      top: 14.v,
                    ),
                    child: Text(
                      "msg_11_nov_9_00am".tr,
                      style: CustomTextStyles.titleSmallPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
