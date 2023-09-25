import '../models/chipviewappoint1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';

// ignore: must_be_immutable
class Chipviewappoint1ItemWidget extends StatelessWidget {
  Chipviewappoint1ItemWidget(
    this.chipviewappoint1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Chipviewappoint1ItemModel chipviewappoint1ItemModelObj;

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
            chipviewappoint1ItemModelObj.appointmentDate.value,
            style: TextStyle(
              color: appTheme.gray900,
              fontSize: 14.fSize,
              fontFamily: 'Work Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected: chipviewappoint1ItemModelObj.isSelected.value,
          backgroundColor: Colors.transparent,
          selectedColor: appTheme.gray900.withOpacity(0.2),
          shape: chipviewappoint1ItemModelObj.isSelected.value
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
            chipviewappoint1ItemModelObj.isSelected.value = value;
          },
        ),
      ),
    );
  }
}
