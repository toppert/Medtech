import '../../../core/app_export.dart';import 'medications_item_model.dart';/// This class defines the variables used in the [medications_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MedicationsModel {Rx<List<MedicationsItemModel>> medicationsItemList = Rx(List.generate(4,(index) => MedicationsItemModel()));

 }
