import '../bloc/consultations1_bloc.dart';
import '../controller/consultations1_controller.dart';
import '../models/chipviewexpiryd1_item_model.dart';
import '../models/userprofile1_item_model.dart';
import 'chipviewexpiryd1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  var controller = Get.find<Consultations1Controller>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineGray10002.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle133,
                height: 60.adaptSize,
                width: 60.adaptSize,
                radius: BorderRadius.circular(
                  10.h,
                ),
                margin: EdgeInsets.only(top: 10.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 21.h,
                  top: 19.v,
                  bottom: 8.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        userprofile1ItemModelObj.userName!.value,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleMediumSemiBold_3,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "lbl_haematologist".tr,
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
                margin: EdgeInsets.only(bottom: 46.v),
              ),
            ],
          ),
          SizedBox(height: 15.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Wrap(
                  runSpacing: 10.v,
                  spacing: 10.h,
                  children: List<Widget>.generate(
                    controller.userprofile1ItemModelObj.value
                        .chipviewexpiryd1ItemList.value.length,
                    (index) {
                      Chipviewexpiryd1ItemModel model = controller
                          .userprofile1ItemModelObj
                          .value
                          .chipviewexpiryd1ItemList
                          .value[index];

                      return Chipviewexpiryd1ItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              CustomOutlinedButton(
                height: 34.v,
                width: 72.h,
                text: "lbl_15_mins".tr,
                buttonStyle: CustomButtonStyles.outlineIndigo,
                buttonTextStyle: theme.textTheme.bodyMedium!,
              ),
            ],
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }
}
