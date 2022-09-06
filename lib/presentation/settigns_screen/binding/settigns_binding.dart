import '../controller/settigns_controller.dart';
import 'package:get/get.dart';

class SettignsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettignsController());
  }
}
