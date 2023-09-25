import '../appointments1_screen/widgets/userprofiledeta_item_widget.dart';
import 'controller/appointments1_controller.dart';
import 'models/userprofiledeta_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:medtech/widgets/app_bar/appbar_image.dart';
import 'package:medtech/widgets/app_bar/appbar_image_1.dart';
import 'package:medtech/widgets/app_bar/appbar_title.dart';
import 'package:medtech/widgets/app_bar/custom_app_bar.dart';
import 'package:medtech/widgets/custom_elevated_button.dart';
import 'package:medtech/widgets/custom_floating_button.dart';
import 'package:medtech/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class Appointments1Screen extends GetWidget<Appointments1Controller> {
  const Appointments1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 13.v),
                decoration: AppDecoration.fillPrimaryContainer,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 26.v),
                    CustomAppBar(
                      height: 30.v,
                      leadingWidth: 43.h,
                      leading: AppbarImage(
                        svgPath: ImageConstant.imgMenu,
                        margin: EdgeInsets.only(
                          left: 19.h,
                          bottom: 5.v,
                        ),
                      ),
                      title: AppbarTitle(
                        text: "lbl_appointments".tr,
                        margin: EdgeInsets.only(left: 35.h),
                      ),
                      actions: [
                        AppbarImage1(
                          svgPath: ImageConstant.imgVolume,
                          margin: EdgeInsets.only(left: 19.h),
                        ),
                        AppbarIconbutton1(
                          svgPath: ImageConstant.imgClarityshoppingcartline,
                          margin: EdgeInsets.only(
                            left: 10.h,
                            right: 19.h,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.v),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 19.h),
                    child: Column(
                      children: [
                        CustomSearchView(
                          controller: controller.searchController,
                          hintText: "lbl_search".tr,
                          prefix: Container(
                            margin: EdgeInsets.all(15.h),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgSearch,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 50.v,
                          ),
                          suffix: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 6.v, 20.h, 11.v),
                            child: CustomImageView(
                              svgPath: ImageConstant
                                  .imgFilteroptionspreferencessettingssvgrepocom11,
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: 50.v,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 3.h,
                              top: 30.v,
                            ),
                            child: Obx(
                              () => ListView.separated(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (
                                  context,
                                  index,
                                ) {
                                  return SizedBox(
                                    height: 15.v,
                                  );
                                },
                                itemCount: controller.appointments1ModelObj
                                    .value.userprofiledetaItemList.value.length,
                                itemBuilder: (context, index) {
                                  UserprofiledetaItemModel model = controller
                                      .appointments1ModelObj
                                      .value
                                      .userprofiledetaItemList
                                      .value[index];
                                  return UserprofiledetaItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 211.v,
                          width: 387.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 68.v),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15.h,
                                    vertical: 14.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlineGray10002.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder20,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 81.v),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10.h,
                                          vertical: 9.v,
                                        ),
                                        decoration: AppDecoration
                                            .outlineIndigo1001
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8,
                                        ),
                                        child: Text(
                                          "lbl_12_12_2022".tr,
                                          style: theme.textTheme.bodyMedium,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          left: 10.h,
                                          top: 81.v,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10.h,
                                          vertical: 9.v,
                                        ),
                                        decoration: AppDecoration
                                            .outlineIndigo1001
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8,
                                        ),
                                        child: Text(
                                          "lbl_09_30_am".tr,
                                          style: theme.textTheme.bodyMedium,
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        margin: EdgeInsets.only(top: 81.v),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 16.h,
                                          vertical: 9.v,
                                        ),
                                        decoration:
                                            AppDecoration.fillPrimary2.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8,
                                        ),
                                        child: Text(
                                          "lbl_declined".tr,
                                          textAlign: TextAlign.right,
                                          style: CustomTextStyles
                                              .titleSmallPrimary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15.h,
                                    vertical: 10.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlineGray10002.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder20,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle1333,
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
                                              top: 20.v,
                                              bottom: 10.v,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "msg_dr_rashida_mohammed".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumSemiBold_3,
                                                ),
                                                SizedBox(height: 5.v),
                                                Text(
                                                  "lbl_haematologist".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumGray600_1,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgIcbaselinemorehorizGray900,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            margin:
                                                EdgeInsets.only(bottom: 46.v),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 15.v),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 10.h,
                                              vertical: 9.v,
                                            ),
                                            decoration: AppDecoration
                                                .outlineIndigo1001
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8,
                                            ),
                                            child: Text(
                                              "lbl_12_12_2022".tr,
                                              style: theme.textTheme.bodyMedium,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 10.h),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 10.h,
                                              vertical: 9.v,
                                            ),
                                            decoration: AppDecoration
                                                .outlineIndigo1001
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8,
                                            ),
                                            child: Text(
                                              "lbl_09_30_am".tr,
                                              style: theme.textTheme.bodyMedium,
                                            ),
                                          ),
                                          Spacer(),
                                          CustomElevatedButton(
                                            height: 34.v,
                                            width: 92.h,
                                            text: "lbl_declined".tr,
                                            buttonStyle: CustomButtonStyles
                                                .fillPrimaryTL10,
                                            buttonTextStyle: CustomTextStyles
                                                .titleSmallPrimary,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4.v),
                                    ],
                                  ),
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
            ],
          ),
        ),
        floatingActionButton: CustomFloatingButton(
          height: 60,
          width: 60,
          backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1),
          child: CustomImageView(
            svgPath: ImageConstant.imgIcbaselineplus,
            height: 30.0.v,
            width: 30.0.h,
          ),
        ),
      ),
    );
  }
}
