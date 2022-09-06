import '/core/app_export.dart';
import 'package:winsoningit_s_application3/presentation/message_screen/models/message_model.dart';

class MessageController extends GetxController {
  Rx<MessageModel> messageModelObj = MessageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
