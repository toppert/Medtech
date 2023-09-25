import '../doctor_s_profile_page/widgets/userprofileinfo_item_widget.dart';
import 'controller/doctor_s_profile_controller.dart';
import 'models/doctor_s_profile_model.dart';
import 'models/userprofileinfo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';

class DoctorSProfilePage extends StatelessWidget {
  DoctorSProfilePage({Key? key})
      : super(
          key: key,
        );

  DoctorSProfileController controller =
      Get.put(DoctorSProfileController(DoctorSProfileModel().obs));

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
              left: 19.h,
              top: 19.v,
              right: 19.h,
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
                    height: 1.v,
                  );
                },
                itemCount: controller.doctorSProfileModelObj.value
                    .userprofileinfoItemList.value.length,
                itemBuilder: (context, index) {
                  UserprofileinfoItemModel model = controller
                      .doctorSProfileModelObj
                      .value
                      .userprofileinfoItemList
                      .value[index];
                  return UserprofileinfoItemWidget(
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
