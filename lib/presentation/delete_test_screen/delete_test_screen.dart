import 'controller/delete_test_controller.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';
import 'package:medtech/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class DeleteTestScreen extends GetWidget<DeleteTestController> {
  const DeleteTestScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 20.v,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 367.h,
                margin: EdgeInsets.only(
                  left: 2.h,
                  top: 10.v,
                  right: 22.h,
                ),
                child: Text(
                  "msg_are_you_sure_you2".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.57,
                  ),
                ),
              ),
              CustomElevatedButton(
                height: 43.v,
                text: "lbl_yes".tr,
                margin: EdgeInsets.only(
                  left: 2.h,
                  top: 22.v,
                ),
              ),
              CustomOutlinedButton(
                text: "lbl_no".tr,
                margin: EdgeInsets.only(
                  left: 2.h,
                  top: 20.v,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
