import '../../../core/app_export.dart';import 'medicationsched_item_model.dart';/// This class defines the variables used in the [view_patient_two_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ViewPatientTwoModel {Rx<List<MedicationschedItemModel>> medicationschedItemList = Rx(List.generate(3,(index) => MedicationschedItemModel()));

 }
