import '../../../core/app_export.dart';/// This class is used in the [patientsprofile_item_widget] screen.
class PatientsprofileItemModel {PatientsprofileItemModel({this.patients, this.fifty, this.id, }) { patients = patients  ?? Rx("Patients");fifty = fifty  ?? Rx("50+");id = id  ?? Rx(""); }

Rx<String>? patients;

Rx<String>? fifty;

Rx<String>? id;

 }
