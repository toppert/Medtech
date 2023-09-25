import '../../../core/app_export.dart';import 'usermedicalinfo_item_model.dart';/// This class defines the variables used in the [view_patient_three_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ViewPatientThreeModel {Rx<List<UsermedicalinfoItemModel>> usermedicalinfoItemList = Rx(List.generate(3,(index) => UsermedicalinfoItemModel()));

 }
