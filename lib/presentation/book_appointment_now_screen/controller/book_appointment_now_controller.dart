import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/book_appointment_now_screen/models/book_appointment_now_model.dart';/// A controller class for the BookAppointmentNowScreen.
///
/// This class manages the state of the BookAppointmentNowScreen, including the
/// current bookAppointmentNowModelObj
class BookAppointmentNowController extends GetxController {Rx<BookAppointmentNowModel> bookAppointmentNowModelObj = BookAppointmentNowModel().obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in bookAppointmentNowModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} bookAppointmentNowModelObj.value.dropdownItemList.refresh(); } 
 }
