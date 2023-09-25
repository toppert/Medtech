import '../controller/view_patient_three_controller.dart';
import '../models/usermedicalinfo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UsermedicalinfoItemWidget extends StatelessWidget {
  UsermedicalinfoItemWidget(
    this.usermedicalinfoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UsermedicalinfoItemModel usermedicalinfoItemModelObj;

  var controller = Get.find<ViewPatientThreeController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(
          height: 50.adaptSize,
          width: 50.adaptSize,
          margin: EdgeInsets.only(
            top: 3.v,
            bottom: 4.v,
          ),
          padding: EdgeInsets.all(13.h),
          decoration: IconButtonStyleHelper.fillAmberA,
          child: CustomImageView(
            svgPath: ImageConstant.imgFilemedicalaltsvgrepocom,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_24_09_2023".tr,
              style: theme.textTheme.bodySmall,
            ),
            SizedBox(height: 4.v),
            Obx(
              () => Text(
                usermedicalinfoItemModelObj.medicalConditio!.value,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 5.v),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_current_status2".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: "lbl_high2".tr,
                    style: CustomTextStyles.bodySmallGray900,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ],
    );
  }
}
