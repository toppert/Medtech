import '../view_patient_one_page/widgets/pastappointment_item_widget.dart';
import 'controller/view_patient_one_controller.dart';
import 'models/pastappointment_item_model.dart';
import 'models/view_patient_one_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';

class ViewPatientOnePage extends StatelessWidget {
  ViewPatientOnePage({Key? key})
      : super(
          key: key,
        );

  ViewPatientOneController controller =
      Get.put(ViewPatientOneController(ViewPatientOneModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 30.v,
              right: 20.h,
            ),
            child: Obx(
              () => GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 59.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 48.h,
                  crossAxisSpacing: 48.h,
                ),
                physics: BouncingScrollPhysics(),
                itemCount: controller.viewPatientOneModelObj.value
                    .pastappointmentItemList.value.length,
                itemBuilder: (context, index) {
                  PastappointmentItemModel model = controller
                      .viewPatientOneModelObj
                      .value
                      .pastappointmentItemList
                      .value[index];
                  return PastappointmentItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
