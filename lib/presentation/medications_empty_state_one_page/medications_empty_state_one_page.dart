import 'controller/medications_empty_state_one_controller.dart';
import 'models/medications_empty_state_one_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';

class MedicationsEmptyStateOnePage extends StatelessWidget {
  MedicationsEmptyStateOnePage({Key? key})
      : super(
          key: key,
        );

  MedicationsEmptyStateOneController controller = Get.put(
      MedicationsEmptyStateOneController(MedicationsEmptyStateOneModel().obs));

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
                    left: 60.h,
                    top: 187.v,
                    right: 60.h,
                  ),
                  child: Column(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgSelfcheckoutpana,
                        height: 85.v,
                        width: 124.h,
                      ),
                      SizedBox(height: 25.v),
                      Text(
                        "msg_no_order_history".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                      SizedBox(height: 13.v),
                      Text(
                        "msg_you_have_not_ordered".tr,
                        style: CustomTextStyles.bodyMediumGray600_1,
                      ),
                      CustomElevatedButton(
                        text: "msg_shop_medications".tr,
                        margin: EdgeInsets.only(
                          left: 12.h,
                          top: 23.v,
                          right: 12.h,
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
