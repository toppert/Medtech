import '../controller/ratings_controller.dart';
import '../models/ratings_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class RatingsItemWidget extends StatelessWidget {
  RatingsItemWidget(
    this.ratingsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RatingsItemModel ratingsItemModelObj;

  var controller = Get.find<RatingsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 117.v,
      width: 390.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              decoration: AppDecoration.fillGray,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse140x40,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        radius: BorderRadius.circular(
                          20.h,
                        ),
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 14.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Obx(
                              () => Text(
                                ratingsItemModelObj.basseyokon!.value,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMediumInterBlack900,
                              ),
                            ),
                            SizedBox(height: 3.v),
                            CustomRatingBar(
                              ignoreGestures: true,
                              initialRating: 0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 13.v,
                      right: 5.h,
                      bottom: 22.v,
                    ),
                    child: Obx(
                      () => Text(
                        ratingsItemModelObj.description!.value,
                        overflow: TextOverflow.ellipsis,
                        style:
                            CustomTextStyles.bodySmallInterBluegray900.copyWith(
                          height: 1.67,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "lbl_22_08_2022".tr,
              style: CustomTextStyles.bodySmallInter,
            ),
          ),
        ],
      ),
    );
  }
}
