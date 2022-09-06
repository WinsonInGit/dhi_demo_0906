import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:winsoningit_s_application3/core/app_export.dart';
import 'package:winsoningit_s_application3/widgets/custom_button.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.cyan300,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                      Padding(
                          padding: getPadding(left: 17, top: 152, right: 17),
                          child: CommonImageView(
                              imagePath: ImageConstant.imgHidoclogo,
                              height: getVerticalSize(368.00),
                              width: getHorizontalSize(338.00))),
                      CustomButton(
                          width: 335,
                          text: "lbl_login".tr,
                          margin: getMargin(left: 17, top: 87, right: 17),
                          variant: ButtonVariant.OutlineWhiteA700,
                          onTap: onTapBtnLogin),
                      CustomButton(
                          width: 335,
                          text: "lbl_sign_up".tr,
                          margin: getMargin(
                              left: 17, top: 15, right: 17, bottom: 20),
                          variant: ButtonVariant.FillWhiteA700,
                          fontStyle: ButtonFontStyle.InterSemiBold14Teal300,
                          onTap: onTapBtnSignup)
                    ]))))));
  }

  onTapBtnLogin() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onTapBtnSignup() {
    Get.toNamed(AppRoutes.signupScreen);
  }
}
