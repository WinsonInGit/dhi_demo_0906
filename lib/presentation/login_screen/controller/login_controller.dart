import '/core/app_export.dart';
import 'package:winsoningit_s_application3/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController emailFormController = TextEditingController();

  TextEditingController passwordFormController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailFormController.dispose();
    passwordFormController.dispose();
  }
}
