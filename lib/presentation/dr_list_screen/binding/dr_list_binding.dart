import '../controller/dr_list_controller.dart';
import 'package:get/get.dart';

class DrListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DrListController());
  }
}
