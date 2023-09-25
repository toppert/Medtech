import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/medications_orders_page/models/medications_orders_model.dart';import 'package:flutter/material.dart';/// A controller class for the MedicationsOrdersPage.
///
/// This class manages the state of the MedicationsOrdersPage, including the
/// current medicationsOrdersModelObj
class MedicationsOrdersController extends GetxController {MedicationsOrdersController(this.medicationsOrdersModelObj);

TextEditingController searchController = TextEditingController();

Rx<MedicationsOrdersModel> medicationsOrdersModelObj;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
