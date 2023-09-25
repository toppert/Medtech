import '../controller/book_lab_test_controller.dart';
import '../models/thyroidfunction_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';

// ignore: must_be_immutable
class ThyroidfunctionItemWidget extends StatelessWidget {
  ThyroidfunctionItemWidget(
    this.thyroidfunctionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ThyroidfunctionItemModel thyroidfunctionItemModelObj;

  var controller = Get.find<BookLabTestController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineIndigo100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    thyroidfunctionItemModelObj.thyroidFunction!.value,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 9.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_reports_within".tr,
                        style: CustomTextStyles.bodyMediumGray600,
                      ),
                      TextSpan(
                        text: "lbl_122".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: "lbl_hours".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.gray200,
                    borderRadius: BorderRadius.circular(
                      3.h,
                    ),
                  ),
                ),
                SizedBox(height: 11.v),
                Obx(
                  () => Text(
                    thyroidfunctionItemModelObj.price!.value,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumSemiBold_3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
