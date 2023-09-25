import '../models/chipviewexpiryd1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';

// ignore: must_be_immutable
class Chipviewexpiryd1ItemWidget extends StatelessWidget {
  Chipviewexpiryd1ItemWidget(
    this.chipviewexpiryd1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Chipviewexpiryd1ItemModel chipviewexpiryd1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 8.v,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            chipviewexpiryd1ItemModelObj.expiryDate.value,
            style: TextStyle(
              color: appTheme.gray900,
              fontSize: 14.fSize,
              fontFamily: 'Work Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected: chipviewexpiryd1ItemModelObj.isSelected.value,
          backgroundColor: Colors.transparent,
          selectedColor: appTheme.gray900.withOpacity(0.2),
          shape: chipviewexpiryd1ItemModelObj.isSelected.value
              ? RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.indigo100,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    10.h,
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.indigo100,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    10.h,
                  ),
                ),
          onSelected: (value) {
            chipviewexpiryd1ItemModelObj.isSelected.value = value;
          },
        ),
      ),
    );
  }
}
