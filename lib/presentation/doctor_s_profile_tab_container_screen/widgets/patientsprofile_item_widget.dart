import '../controller/doctor_s_profile_tab_container_controller.dart';
import '../models/patientsprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';

// ignore: must_be_immutable
class PatientsprofileItemWidget extends StatelessWidget {
  PatientsprofileItemWidget(
    this.patientsprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PatientsprofileItemModel patientsprofileItemModelObj;

  var controller = Get.find<DoctorSProfileTabContainerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillBlueA400.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 113.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgUsergroupsvgrepocom,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Obx(
                  () => Text(
                    patientsprofileItemModelObj.patients!.value,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallBlueA400_1,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 9.v),
          Obx(
            () => Text(
              patientsprofileItemModelObj.fifty!.value,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
