import '../../../core/app_export.dart';import 'listappointment_item_model.dart';/// This class defines the variables used in the [notifications_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsModel {Rx<List<ListappointmentItemModel>> listappointmentItemList = Rx(List.generate(9,(index) => ListappointmentItemModel()));

 }
