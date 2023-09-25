import '../bloc/appointments1_bloc.dart';
import '../controller/appointments1_controller.dart';
import '../models/chipviewappoint1_item_model.dart';
import '../models/userprofiledeta_item_model.dart';
import 'chipviewappoint1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class UserprofiledetaItemWidget extends StatelessWidget {
  UserprofiledetaItemWidget(
    this.userprofiledetaItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofiledetaItemModel userprofiledetaItemModelObj;

  var controller = Get.find<Appointments1Controller>();

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
                        userprofiledetaItemModelObj.userName!.value,
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
                    controller.userprofiledetaItemModelObj.value
                        .chipviewappoint1ItemList.value.length,
                    (index) {
                      Chipviewappoint1ItemModel model = controller
                          .userprofiledetaItemModelObj
                          .value
                          .chipviewappoint1ItemList
                          .value[index];

                      return Chipviewappoint1ItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              CustomElevatedButton(
                height: 34.v,
                width: 104.h,
                text: "lbl_confirmed".tr,
                buttonStyle: CustomButtonStyles.fillGreen,
                buttonTextStyle: CustomTextStyles.titleSmallGreen500,
              ),
            ],
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }
}
