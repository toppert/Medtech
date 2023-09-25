import '../controller/view_patient_two_controller.dart';
import '../models/medicationsched_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class MedicationschedItemWidget extends StatelessWidget {
  MedicationschedItemWidget(
    this.medicationschedItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MedicationschedItemModel medicationschedItemModelObj;

  var controller = Get.find<ViewPatientTwoController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 50.adaptSize,
          width: 50.adaptSize,
          padding: EdgeInsets.all(13.h),
          decoration: IconButtonStyleHelper.fillBlueATL25,
          child: CustomImageView(
            svgPath: ImageConstant.imgPillspillsvgrepocom,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 7.v,
            bottom: 4.v,
          ),
          child: Column(
            children: [
              Obx(
                () => Text(
                  medicationschedItemModelObj.medicationName!.value,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 4.v),
              Obx(
                () => Text(
                  medicationschedItemModelObj.dosageInstructi!.value,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.v),
          child: Obx(
            () => Text(
              medicationschedItemModelObj.scheduleDates!.value,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ),
      ],
    );
  }
}
