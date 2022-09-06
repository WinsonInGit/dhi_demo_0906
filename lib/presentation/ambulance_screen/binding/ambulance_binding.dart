import '../controller/ambulance_controller.dart';
import 'package:get/get.dart';

class AmbulanceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AmbulanceController());
  }
}
