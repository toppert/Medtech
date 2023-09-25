import '../consultations_screen/widgets/consultations_item_widget.dart';
import 'controller/consultations_controller.dart';
import 'models/consultations_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/app_bar/appbar_image.dart';
import 'package:medtech/widgets/app_bar/appbar_image_1.dart';
import 'package:medtech/widgets/app_bar/appbar_title.dart';
import 'package:medtech/widgets/app_bar/custom_app_bar.dart';
import 'package:medtech/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class ConsultationsScreen extends GetWidget<ConsultationsController> {
  const ConsultationsScreen({Key? key})
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
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 16.v),
                decoration: AppDecoration.fillPrimaryContainer,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 20.v),
                    CustomAppBar(
                      height: 30.v,
                      leadingWidth: 43.h,
                      leading: AppbarImage(
                        svgPath: ImageConstant.imgMenu,
                        margin: EdgeInsets.only(
                          left: 19.h,
                          top: 3.v,
                          bottom: 2.v,
                        ),
                      ),
                      title: AppbarTitle(
                        text: "lbl_consultations".tr,
                        margin: EdgeInsets.only(left: 35.h),
                      ),
                      actions: [
                        AppbarImage1(
                          svgPath: ImageConstant.imgVolume,
                          margin: EdgeInsets.symmetric(horizontal: 19.h),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 19.h,
                      vertical: 29.v,
                    ),
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
                        SizedBox(height: 30.v),
                        Expanded(
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
                              itemCount: controller.consultationsModelObj.value
                                  .consultationsItemList.value.length,
                              itemBuilder: (context, index) {
                                ConsultationsItemModel model = controller
                                    .consultationsModelObj
                                    .value
                                    .consultationsItemList
                                    .value[index];
                                return ConsultationsItemWidget(
                                  model,
                                );
                              },
                            ),
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
      ),
    );
  }
}
