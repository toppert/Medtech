import '../../../core/app_export.dart';import 'package:medtech/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [book_appointment_later_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BookAppointmentLaterModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<String>> radioList = Rx(["lbl_schedule_now","msg_schedule_for_later"]);

 }
