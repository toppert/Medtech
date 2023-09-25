import '../controller/cart_controller.dart';
import '../models/productrow_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';

// ignore: must_be_immutable
class ProductrowItemWidget extends StatelessWidget {
  ProductrowItemWidget(
    this.productrowItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductrowItemModel productrowItemModelObj;

  var controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle9315x428,
          height: 100.adaptSize,
          width: 100.adaptSize,
          radius: BorderRadius.circular(
            5.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  productrowItemModelObj.productName!.value,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 9.v),
              Obx(
                () => Text(
                  productrowItemModelObj.productPrice!.value,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallPrimary,
                ),
              ),
              SizedBox(height: 18.v),
              Row(
                children: [
                  Container(
                    width: 98.h,
                    padding: EdgeInsets.symmetric(horizontal: 13.h),
                    decoration: AppDecoration.outlineGray300012.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgAkariconsminus,
                          height: 13.adaptSize,
                          width: 13.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 9.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: SizedBox(
                            height: 31.v,
                            child: VerticalDivider(
                              width: 1.h,
                              thickness: 1.v,
                              color: appTheme.gray30001,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.h,
                            top: 7.v,
                            bottom: 7.v,
                          ),
                          child: Text(
                            "lbl_1".tr,
                            style: CustomTextStyles.titleSmallSemiBold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: SizedBox(
                            height: 32.v,
                            child: VerticalDivider(
                              width: 1.h,
                              thickness: 1.v,
                              color: appTheme.gray30001,
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgAkariconsplusGray900,
                          height: 13.adaptSize,
                          width: 13.adaptSize,
                          margin: EdgeInsets.only(
                            left: 9.h,
                            top: 9.v,
                            bottom: 9.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgFloatingicon,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
