import '../billings_screen/widgets/billdetails_item_widget.dart';
import 'controller/billings_controller.dart';
import 'models/billdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/app_bar/appbar_image.dart';
import 'package:medtech/widgets/app_bar/appbar_image_1.dart';
import 'package:medtech/widgets/app_bar/appbar_title.dart';
import 'package:medtech/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class BillingsScreen extends GetWidget<BillingsController> {
  const BillingsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 82.v,
          leadingWidth: 43.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgMenu,
            margin: EdgeInsets.only(
              left: 19.h,
              top: 13.v,
              bottom: 18.v,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_billings".tr,
            margin: EdgeInsets.only(left: 35.h),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgVolume,
              margin: EdgeInsets.fromLTRB(19.h, 13.v, 19.h, 12.v),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 8.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 8.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 13.v,
                ),
                decoration: AppDecoration.outlineGray30001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 3.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "msg_total_bill_value".tr,
                            style: CustomTextStyles.bodyMediumBluegray500_1,
                          ),
                          SizedBox(height: 6.v),
                          Text(
                            "lbl_50_000_00".tr,
                            style: CustomTextStyles.headlineSmallSemiBold,
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgPairofbillssvgrepocom,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.v),
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
                    itemCount: controller.billingsModelObj.value
                        .billdetailsItemList.value.length,
                    itemBuilder: (context, index) {
                      BilldetailsItemModel model = controller.billingsModelObj
                          .value.billdetailsItemList.value[index];
                      return BilldetailsItemWidget(
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
    );
  }
}
