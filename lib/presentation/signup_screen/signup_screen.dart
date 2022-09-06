import 'controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:winsoningit_s_application3/core/app_export.dart';
import 'package:winsoningit_s_application3/widgets/custom_button.dart';
import 'package:winsoningit_s_application3/widgets/custom_text_form_field.dart';

class SignupScreen extends GetWidget<SignupController> {
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
                          padding: getPadding(left: 15, top: 106, right: 15),
                          child: CommonImageView(
                              imagePath: ImageConstant.imgHidoclogo42X115,
                              height: getVerticalSize(42.00),
                              width: getHorizontalSize(115.00))),
                      Padding(
                          padding: getPadding(left: 15, top: 29, right: 15),
                          child: Text("msg_let_s_get_start".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold16Indigo900
                                  .copyWith(letterSpacing: 0.50))),
                      Padding(
                          padding: getPadding(left: 15, top: 16, right: 15),
                          child: Text("msg_create_an_new_a".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12WhiteA700
                                  .copyWith(letterSpacing: 0.50))),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.fullNameFormController,
                          hintText: "lbl_full_name".tr,
                          margin: getMargin(left: 15, top: 29, right: 15),
                          prefix: Container(
                              margin: getMargin(
                                  left: 18, top: 14, right: 12, bottom: 14),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgUser20X20)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(20.00),
                              minHeight: getSize(20.00))),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.emailFormController1,
                          hintText: "lbl_your_email".tr,
                          margin: getMargin(left: 15, top: 8, right: 15),
                          prefix: Container(
                              margin: getMargin(
                                  left: 18, top: 16, right: 12, bottom: 16),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgMail)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(15.00),
                              minHeight: getSize(15.00))),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.passwordFormController1,
                          hintText: "lbl_password".tr,
                          margin: getMargin(left: 15, top: 8, right: 15),
                          prefix: Container(
                              margin: getMargin(
                                  left: 18, top: 14, right: 12, bottom: 14),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(20.00),
                              minHeight: getSize(20.00)),
                          isObscureText: true),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.passwordAgainController,
                          hintText: "lbl_password_again".tr,
                          margin: getMargin(left: 15, top: 8, right: 15),
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 18, top: 14, right: 12, bottom: 14),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(20.00),
                              minHeight: getSize(20.00)),
                          isObscureText: true),
                      CustomButton(
                          width: 343,
                          text: "lbl_sign_up".tr,
                          margin: getMargin(left: 15, top: 39, right: 15),
                          variant: ButtonVariant.FillWhiteA700,
                          fontStyle: ButtonFontStyle.InterSemiBold14Teal300,
                          onTap: onTapBtnSignup),
                      Container(
                          margin: getMargin(
                              left: 15, top: 161, right: 15, bottom: 20),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_have_an".tr,
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.50)),
                                TextSpan(
                                    text: "lbl_account".tr,
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.50)),
                                TextSpan(
                                    text: "lbl2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.50)),
                                TextSpan(
                                    text: ' ',
                                    style: TextStyle(
                                        color: ColorConstant.indigoA200,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.50)),
                                TextSpan(
                                    text: "lbl_sign_in2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.50))
                              ]),
                              textAlign: TextAlign.left))
                    ]))))));
  }

  onTapBtnSignup() {
    Get.toNamed(AppRoutes.dashboardScreen);
  }
}
