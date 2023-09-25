import '../medications_orders_page/widgets/medicationsorde_item_widget.dart';
import 'controller/medications_orders_controller.dart';
import 'models/medications_orders_model.dart';
import 'models/medicationsorde_item_model.dart';
import 'package:flutter/material.dart';
import 'package:medtech/core/app_export.dart';
import 'package:medtech/widgets/custom_search_view.dart';

class MedicationsOrdersPage extends StatelessWidget {
  MedicationsOrdersPage({Key? key})
      : super(
          key: key,
        );

  MedicationsOrdersController controller =
      Get.put(MedicationsOrdersController(MedicationsOrdersModel().obs));

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
                                itemCount: controller.medicationsOrdersModelObj
                                    .value.medicationsordeItemList.value.length,
                                itemBuilder: (context, index) {
                                  MedicationsordeItemModel model = controller
                                      .medicationsOrdersModelObj
                                      .value
                                      .medicationsordeItemList
                                      .value[index];
                                  return MedicationsordeItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                          ),
                          Container(
                            height: 159.v,
                            width: 387.h,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primaryContainer
                                  .withOpacity(1),
                              borderRadius: BorderRadius.circular(
                                20.h,
                              ),
                              border: Border.all(
                                color: appTheme.gray10002,
                                width: 1.h,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: appTheme.blueGray90014,
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(
                                    0,
                                    2,
                                  ),
                                ),
                              ],
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
