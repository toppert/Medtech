import 'controller/upload_document_controller.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class UploadDocumentScreen extends GetWidget<UploadDocumentController> {
  const UploadDocumentScreen({Key? key})
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
          padding: EdgeInsets.all(20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DottedBorder(
                color: appTheme.blueGray500,
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 1.v,
                  right: 1.h,
                  bottom: 1.v,
                ),
                strokeWidth: 1.h,
                radius: Radius.circular(4),
                borderType: BorderType.RRect,
                dashPattern: [
                  8,
                  8,
                ],
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 87.h,
                    vertical: 63.v,
                  ),
                  decoration: AppDecoration.outlineBluegray500.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 211.h,
                        child: Text(
                          "msg_drag_and_drop_files".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge!.copyWith(
                            height: 1.23,
                          ),
                        ),
                      ),
                      SizedBox(height: 33.v),
                      CustomIconButton(
                        height: 64.adaptSize,
                        width: 64.adaptSize,
                        padding: EdgeInsets.all(20.h),
                        decoration: IconButtonStyleHelper.fillBlueGray,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgCoolicons,
                        ),
                      ),
                      SizedBox(height: 13.v),
                      Text(
                        "lbl_browse_files".tr,
                        style: CustomTextStyles.titleMediumBlueA400.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      SizedBox(height: 12.v),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              Text(
                "msg_supported_file_type".tr,
                style: theme.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
