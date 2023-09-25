import '../medications_page/widgets/medications_item_widget.dart';
import 'controller/medications_controller.dart';
import 'models/medications_item_model.dart';
import 'models/medications_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_search_view.dart';

class MedicationsPage extends StatelessWidget {
  MedicationsPage({Key? key})
      : super(
          key: key,
        );

  MedicationsController controller =
      Get.put(MedicationsController(MedicationsModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 19.h,
                        top: 29.v,
                        right: 19.h,
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
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 6.v, 20.h, 11.v),
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
                                  itemCount: controller.medicationsModelObj
                                      .value.medicationsItemList.value.length,
                                  itemBuilder: (context, index) {
                                    MedicationsItemModel model = controller
                                        .medicationsModelObj
                                        .value
                                        .medicationsItemList
                                        .value[index];
                                    return MedicationsItemWidget(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
