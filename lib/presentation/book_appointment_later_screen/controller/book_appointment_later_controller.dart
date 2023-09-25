import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/book_appointment_later_screen/models/book_appointment_later_model.dart';/// A controller class for the BookAppointmentLaterScreen.
///
/// This class manages the state of the BookAppointmentLaterScreen, including the
/// current bookAppointmentLaterModelObj
class BookAppointmentLaterController extends GetxController {Rx<BookAppointmentLaterModel> bookAppointmentLaterModelObj = BookAppointmentLaterModel().obs;

Rx<String> radioGroup = "".obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in bookAppointmentLaterModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} bookAppointmentLaterModelObj.value.dropdownItemList.refresh(); } 
 }
