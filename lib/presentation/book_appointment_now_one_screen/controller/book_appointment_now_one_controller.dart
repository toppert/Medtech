import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/book_appointment_now_one_screen/models/book_appointment_now_one_model.dart';/// A controller class for the BookAppointmentNowOneScreen.
///
/// This class manages the state of the BookAppointmentNowOneScreen, including the
/// current bookAppointmentNowOneModelObj
class BookAppointmentNowOneController extends GetxController {Rx<BookAppointmentNowOneModel> bookAppointmentNowOneModelObj = BookAppointmentNowOneModel().obs;

Rx<String> radioGroup = "".obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in bookAppointmentNowOneModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} bookAppointmentNowOneModelObj.value.dropdownItemList.refresh(); } 
 }
