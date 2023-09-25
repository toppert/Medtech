import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/core/utils/validation_functions.dart';
import 'package:medtech/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    Key? key,
    required this.controller,
  }) : super(
          key: key,
        );

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(
          7.h,
        ),
        border: Border.all(
          color: appTheme.indigo100,
          width: 1.h,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomTextFormField(
              width: 1.h,
              controller: controller,
              margin: EdgeInsets.only(
                left: 272.h,
                right: 6.h,
              ),
              hintText: "msg_enter_phone_number".tr,
              hintStyle: CustomTextStyles.bodyLargeRobotoBluegray500,
              textInputType: TextInputType.phone,
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "Please enter valid phone number";
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
