import '../../../core/app_export.dart';/// This class is used in the [pastappointment_item_widget] screen.
class PastappointmentItemModel {PastappointmentItemModel({this.pastAppointment, this.fifteenText, this.id, }) { pastAppointment = pastAppointment  ?? Rx("Past Appointments");fifteenText = fifteenText  ?? Rx("15");id = id  ?? Rx(""); }

Rx<String>? pastAppointment;

Rx<String>? fifteenText;

Rx<String>? id;

 }
