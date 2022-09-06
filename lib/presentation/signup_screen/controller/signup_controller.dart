import '/core/app_export.dart';
import 'package:winsoningit_s_application3/presentation/signup_screen/models/signup_model.dart';
import 'package:flutter/material.dart';

class SignupController extends GetxController {
  TextEditingController fullNameFormController = TextEditingController();

  TextEditingController emailFormController1 = TextEditingController();

  TextEditingController passwordFormController1 = TextEditingController();

  TextEditingController passwordAgainController = TextEditingController();

  Rx<SignupModel> signupModelObj = SignupModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    fullNameFormController.dispose();
    emailFormController1.dispose();
    passwordFormController1.dispose();
    passwordAgainController.dispose();
  }
}
