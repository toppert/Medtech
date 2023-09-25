import '../../../core/app_export.dart';import 'medicationsorde_item_model.dart';/// This class defines the variables used in the [medications_orders_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MedicationsOrdersModel {Rx<List<MedicationsordeItemModel>> medicationsordeItemList = Rx(List.generate(5,(index) => MedicationsordeItemModel()));

 }
