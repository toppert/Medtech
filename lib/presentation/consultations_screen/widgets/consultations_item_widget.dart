import '../controller/consultations_controller.dart';
import '../models/consultations_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';

// ignore: must_be_immutable
class ConsultationsItemWidget extends StatelessWidget {
  ConsultationsItemWidget(
    this.consultationsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ConsultationsItemModel consultationsItemModelObj;

  var controller = Get.find<ConsultationsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.small.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse6,
                height: 40.adaptSize,
                width: 40.adaptSize,
                radius: BorderRadius.circular(
                  20.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        consultationsItemModelObj.ejiroosarobo!.value,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "lbl_female2".tr,
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
          SizedBox(height: 15.v),
          Divider(),
          SizedBox(height: 12.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text(
                  "msg_11_nov_2022_10_00am".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              Text(
                "lbl_15_mins".tr,
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
