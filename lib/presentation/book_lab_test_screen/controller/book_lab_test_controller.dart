import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/book_lab_test_screen/models/book_lab_test_model.dart';import 'package:flutter/material.dart';/// A controller class for the BookLabTestScreen.
///
/// This class manages the state of the BookLabTestScreen, including the
/// current bookLabTestModelObj
class BookLabTestController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<BookLabTestModel> bookLabTestModelObj = BookLabTestModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
