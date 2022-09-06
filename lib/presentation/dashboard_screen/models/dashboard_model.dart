import 'package:get/get.dart';
import 'doctor_item_model.dart';

class DashboardModel {
  RxList<DoctorItemModel> doctorItemList = RxList.filled(3, DoctorItemModel());
}
