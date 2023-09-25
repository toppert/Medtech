import '../lab_tests_screen/widgets/orderdetails_item_widget.dart';
import 'controller/lab_tests_controller.dart';
import 'models/orderdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:medtech/widgets/app_bar/appbar_image.dart';
import 'package:medtech/widgets/app_bar/appbar_image_1.dart';
import 'package:medtech/widgets/app_bar/appbar_title.dart';
import 'package:medtech/widgets/app_bar/custom_app_bar.dart';
import 'package:medtech/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class LabTestsScreen extends GetWidget<LabTestsController> {
  const LabTestsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: 81.v,
          leadingWidth: 43.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgMenu,
            margin: EdgeInsets.only(
              left: 19.h,
              top: 14.v,
              bottom: 17.v,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_lab_tests".tr,
            margin: EdgeInsets.only(left: 35.h),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgVolume,
              margin: EdgeInsets.only(
                left: 19.h,
                top: 14.v,
                right: 11.h,
              ),
            ),
            AppbarIconbutton1(
              svgPath: ImageConstant.imgClarityshoppingcartline,
              margin: EdgeInsets.only(
                left: 10.h,
                top: 14.v,
                right: 30.h,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 19.h),
          child: Column(
            children: [
              SizedBox(height: 14.v),
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
                    top: 30.v,
                    right: 3.h,
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
                      itemCount: controller.labTestsModelObj.value
                          .orderdetailsItemList.value.length,
                      itemBuilder: (context, index) {
                        OrderdetailsItemModel model = controller
                            .labTestsModelObj
                            .value
                            .orderdetailsItemList
                            .value[index];
                        return OrderdetailsItemWidget(
                          model,
                        );
                      },
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
