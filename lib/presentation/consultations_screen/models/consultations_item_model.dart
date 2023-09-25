import '../../../core/app_export.dart';/// This class is used in the [consultations_item_widget] screen.
class ConsultationsItemModel {ConsultationsItemModel({this.ejiroosarobo, this.id, }) { ejiroosarobo = ejiroosarobo  ?? Rx("Ejiro Osarobo");id = id  ?? Rx(""); }

Rx<String>? ejiroosarobo;

Rx<String>? id;

 }
