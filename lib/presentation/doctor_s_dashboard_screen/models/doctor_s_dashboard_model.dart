import '../../../core/app_export.dart';import 'userprofile3_item_model.dart';/// This class defines the variables used in the [doctor_s_dashboard_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DoctorSDashboardModel {Rx<List<Userprofile3ItemModel>> userprofile3ItemList = Rx(List.generate(2,(index) => Userprofile3ItemModel()));

 }
