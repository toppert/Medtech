import '../../../core/app_export.dart';import 'orderdetails_item_model.dart';/// This class defines the variables used in the [lab_tests_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LabTestsModel {Rx<List<OrderdetailsItemModel>> orderdetailsItemList = Rx(List.generate(5,(index) => OrderdetailsItemModel()));

 }
