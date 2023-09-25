import 'controller/side_navigation6_controller.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_text_form_field.dart';

class SideNavigation6Draweritem extends StatelessWidget {
  SideNavigation6Draweritem(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  SideNavigation6Controller controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Drawer(
      child: Container(
        width: 325.h,
        padding: EdgeInsets.symmetric(
          horizontal: 25.h,
          vertical: 41.v,
        ),
        decoration: AppDecoration.outlineBluegray90014.copyWith(
          borderRadius: BorderRadiusStyle.customBorderLR30,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle133,
              height: 70.adaptSize,
              width: 70.adaptSize,
              radius: BorderRadius.circular(
                10.h,
              ),
            ),
            SizedBox(height: 17.v),
            Text(
              "msg_rashida_mohammed".tr,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 9.v),
            Text(
              "lbl_haematologist".tr,
              style: CustomTextStyles.bodyMediumBluegray500_1,
            ),
            Padding(
              padding: EdgeInsets.only(top: 28.v),
              child: Divider(
                color: appTheme.gray10002,
                endIndent: 5.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 44.v,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgFreeicon12,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 3.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_dashboard".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 30.v,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgCalendarsvgrepocom,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 4.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl_appointments".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 30.v,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgGrouppeoplesvgrepocom,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 3.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_patients".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
            CustomTextFormField(
              controller: controller.consultationsvaController,
              margin: EdgeInsets.only(
                top: 15.v,
                right: 5.h,
              ),
              hintText: "lbl_consultations".tr,
              hintStyle: CustomTextStyles.titleSmallPrimary,
              textInputAction: TextInputAction.done,
              prefix: Container(
                margin: EdgeInsets.fromLTRB(10.h, 15.v, 13.h, 15.v),
                child: CustomImageView(
                  svgPath: ImageConstant.imgMedicalhistorydoctorsvgrepocom1,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: 54.v,
              ),
              contentPadding: EdgeInsets.only(
                top: 18.v,
                right: 30.h,
                bottom: 18.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.fillPrimary,
              fillColor: theme.colorScheme.primary.withOpacity(0.03),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 15.v,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgQrcode,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 4.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl_billings".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 30.v,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgCarbonstarGray600,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 5.v,
                    ),
                    child: Text(
                      "lbl_ratings".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 45.v),
              child: Divider(
                color: appTheme.gray10002,
                endIndent: 5.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 44.v,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgCarbonsettingsGray600,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 5.v,
                    ),
                    child: Text(
                      "msg_account_settings".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 30.v,
                bottom: 30.v,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgFluentchathelp20regular,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 4.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl_help_center".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
