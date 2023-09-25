import '../controller/doctor_s_profile_controller.dart';
import '../models/userprofileinfo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileinfoItemWidget extends StatelessWidget {
  UserprofileinfoItemWidget(
    this.userprofileinfoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileinfoItemModel userprofileinfoItemModelObj;

  var controller = Get.find<DoctorSProfileController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.v),
      decoration: AppDecoration.fillPrimaryContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 13.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse1,
                height: 45.adaptSize,
                width: 45.adaptSize,
                radius: BorderRadius.circular(
                  22.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 5.v,
                  bottom: 5.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        userprofileinfoItemModelObj.userName!.value,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMedium15,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    CustomImageView(
                      svgPath: ImageConstant.imgMinimize,
                      height: 13.v,
                      width: 73.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Obx(
            () => Text(
              userprofileinfoItemModelObj.userDescription!.value,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(
                height: 1.43,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            "lbl_22_08_2022".tr,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
