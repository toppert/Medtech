import '../../../core/app_export.dart';/// This class is used in the [usermedicalinfo_item_widget] screen.
class UsermedicalinfoItemModel {UsermedicalinfoItemModel({this.medicalConditio, this.id, }) { medicalConditio = medicalConditio  ?? Rx("Asthma");id = id  ?? Rx(""); }

Rx<String>? medicalConditio;

Rx<String>? id;

 }
