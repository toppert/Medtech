import '../controller/notifications_controller.dart';
import '../models/listappointment_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';

// ignore: must_be_immutable
class ListappointmentItemWidget extends StatelessWidget {
  ListappointmentItemWidget(
    this.listappointmentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListappointmentItemModel listappointmentItemModelObj;

  var controller = Get.find<NotificationsController>();

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: theme.colorScheme.primaryContainer.withOpacity(1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Container(
        height: 71.v,
        width: 390.h,
        padding: EdgeInsets.symmetric(
          horizontal: 4.h,
          vertical: 2.v,
        ),
        decoration: AppDecoration.fillPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        listappointmentItemModelObj.appointmentConf!.value,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleSmallSemiBold,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Obx(
                      () => Text(
                        listappointmentItemModelObj.appointmentConf1!.value,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumGray90001.copyWith(
                          height: 1.43,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: 4.v),
                child: Obx(
                  () => Text(
                    listappointmentItemModelObj.timeSinceConfir!.value,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallGray600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
