import 'controller/medications_empty_state_controller.dart';
import 'models/medications_empty_state_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';

class MedicationsEmptyStatePage extends StatelessWidget {
  MedicationsEmptyStatePage({Key? key})
      : super(
          key: key,
        );

  MedicationsEmptyStateController controller = Get.put(
      MedicationsEmptyStateController(MedicationsEmptyStateModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 67.h,
                    top: 172.v,
                    right: 67.h,
                  ),
                  child: Column(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgRemedypana1,
                        height: 114.v,
                        width: 136.h,
                      ),
                      SizedBox(height: 23.v),
                      Text(
                        "lbl_no_medications".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                      SizedBox(height: 15.v),
                      Text(
                        "msg_you_do_not_have3".tr,
                        style: CustomTextStyles.bodyMediumGray600_1,
                      ),
                      CustomElevatedButton(
                        text: "msg_shop_medications".tr,
                        margin: EdgeInsets.only(
                          left: 5.h,
                          top: 23.v,
                          right: 5.h,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
