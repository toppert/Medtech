import '../../../core/app_export.dart';/// This class is used in the [listappointment_item_widget] screen.
class ListappointmentItemModel {ListappointmentItemModel({this.appointmentConf, this.appointmentConf1, this.timeSinceConfir, this.id, }) { appointmentConf = appointmentConf  ?? Rx("Appointment Confirmation");appointmentConf1 = appointmentConf1  ?? Rx("Your appointment with Dr. Rashida has been confirmed suceessfully.");timeSinceConfir = timeSinceConfir  ?? Rx("8 minutes ago");id = id  ?? Rx(""); }

Rx<String>? appointmentConf;

Rx<String>? appointmentConf1;

Rx<String>? timeSinceConfir;

Rx<String>? id;

 }
