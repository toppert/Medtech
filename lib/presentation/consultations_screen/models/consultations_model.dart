import '../../../core/app_export.dart';import 'consultations_item_model.dart';/// This class defines the variables used in the [consultations_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ConsultationsModel {Rx<List<ConsultationsItemModel>> consultationsItemList = Rx(List.generate(5,(index) => ConsultationsItemModel()));

 }
