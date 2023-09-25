import '../controller/view_patient_one_controller.dart';
import '../models/pastappointment_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';

// ignore: must_be_immutable
class PastappointmentItemWidget extends StatelessWidget {
  PastappointmentItemWidget(
    this.pastappointmentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PastappointmentItemModel pastappointmentItemModelObj;

  var controller = Get.find<ViewPatientOneController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => Text(
            pastappointmentItemModelObj.pastAppointment!.value,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyMediumBluegray500_1,
          ),
        ),
        SizedBox(height: 3.v),
        Obx(
          () => Text(
            pastappointmentItemModelObj.fifteenText!.value,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleSmall,
          ),
        ),
        SizedBox(height: 19.v),
        SizedBox(
          width: 169.h,
          child: Divider(
            color: appTheme.gray30001,
          ),
        ),
      ],
    );
  }
}
