import '../../../core/app_export.dart';/// This class is used in the [medicationsched_item_widget] screen.
class MedicationschedItemModel {MedicationschedItemModel({this.medicationName, this.dosageInstructi, this.scheduleDates, this.id, }) { medicationName = medicationName  ?? Rx("Alfuzosin (10mg)");dosageInstructi = dosageInstructi  ?? Rx("2 capsules twice daily ");scheduleDates = scheduleDates  ?? Rx("3rd - 7th Jan");id = id  ?? Rx(""); }

Rx<String>? medicationName;

Rx<String>? dosageInstructi;

Rx<String>? scheduleDates;

Rx<String>? id;

 }
