import 'controller/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:winsoningit_s_application3/core/app_export.dart';
import 'package:winsoningit_s_application3/widgets/custom_button.dart';
import 'package:winsoningit_s_application3/widgets/custom_text_form_field.dart';

class ChatScreen extends GetWidget<ChatController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(768.00),
                        width: size.width,
                        child: Stack(children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  margin: getMargin(
                                      left: 21, top: 26, right: 20, bottom: 26),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                width: size.width,
                                                margin: getMargin(left: 8),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      onTapImgArrowleft();
                                                                    },
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                3),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgArrowleftGray700,
                                                                            height: getVerticalSize(14.00),
                                                                            width: getHorizontalSize(7.00)))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            26,
                                                                        bottom:
                                                                            1),
                                                                    child: Text(
                                                                        "msg_dr_marcus_hori"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterSemiBold16
                                                                            .copyWith()))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 2),
                                                          child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 2,
                                                                        bottom:
                                                                            2),
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgVideocamera,
                                                                        height: getVerticalSize(
                                                                            11.00),
                                                                        width: getHorizontalSize(
                                                                            18.00))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            18,
                                                                        bottom:
                                                                            1),
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgCall,
                                                                        height: getSize(
                                                                            15.00),
                                                                        width: getSize(
                                                                            15.00))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            21,
                                                                        top: 1),
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgComponent1,
                                                                        height: getVerticalSize(
                                                                            16.00),
                                                                        width: getHorizontalSize(
                                                                            4.00)))
                                                              ]))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width: double.infinity,
                                                margin: getMargin(top: 44),
                                                decoration: AppDecoration
                                                    .outlineBluegray50
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 42,
                                                              top: 17,
                                                              right: 42),
                                                          child: Text(
                                                              "msg_consultion_star"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterSemiBold16Cyan300
                                                                  .copyWith())),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 42,
                                                              top: 11,
                                                              right: 42,
                                                              bottom: 17),
                                                          child: Text(
                                                              "msg_you_can_consult"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterMedium12
                                                                  .copyWith()))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 20, right: 10),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      CommonImageView(
                                                          imagePath: ImageConstant
                                                              .imgDrugthumbnail,
                                                          height:
                                                              getSize(40.00),
                                                          width:
                                                              getSize(40.00)),
                                                      Container(
                                                          margin: getMargin(
                                                              left: 13,
                                                              top: 7,
                                                              bottom: 2),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "msg_dr_marcus_hori"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold14
                                                                        .copyWith()),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 3,
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                        "lbl_10_min_ago"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterMedium10
                                                                            .copyWith()))
                                                              ]))
                                                    ]))),
                                        CustomButton(
                                            width: 205,
                                            text: "msg_hello_how_can".tr,
                                            margin:
                                                getMargin(top: 10, right: 10),
                                            variant:
                                                ButtonVariant.FillBluegray50,
                                            shape: ButtonShape.CustomBorderBL8,
                                            padding: ButtonPadding.PaddingAll11,
                                            fontStyle:
                                                ButtonFontStyle.InterRegular14,
                                            alignment: Alignment.centerLeft),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                width: double.infinity,
                                                margin: getMargin(
                                                    left: 10, top: 15),
                                                decoration: AppDecoration
                                                    .fillCyan300
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL8),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  204.00),
                                                          margin: getMargin(
                                                              left: 14,
                                                              top: 15,
                                                              right: 14,
                                                              bottom: 11),
                                                          child: Text(
                                                              "msg_i_have_sufferin"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular14WhiteA700
                                                                  .copyWith(
                                                                      height:
                                                                          1.43)))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 15, right: 10),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      CommonImageView(
                                                          imagePath: ImageConstant
                                                              .imgDrugthumbnail,
                                                          height:
                                                              getSize(40.00),
                                                          width:
                                                              getSize(40.00)),
                                                      Container(
                                                          margin: getMargin(
                                                              left: 13,
                                                              top: 7,
                                                              bottom: 2),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "msg_dr_marcus_hori"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold14
                                                                        .copyWith()),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 3,
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                        "lbl_5_min_ago"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterMedium10
                                                                            .copyWith()))
                                                              ]))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width:
                                                    getHorizontalSize(221.00),
                                                margin: getMargin(
                                                    top: 10, right: 10),
                                                decoration: AppDecoration
                                                    .fillBluegray50
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderBL8),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  193.00),
                                                          margin: getMargin(
                                                              all: 13),
                                                          child: Text(
                                                              "msg_ok_do_you_have"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular14
                                                                  .copyWith(
                                                                      height:
                                                                          1.43)))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                width: double.infinity,
                                                margin: getMargin(
                                                    left: 10, top: 15),
                                                decoration: AppDecoration
                                                    .fillCyan300
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL8),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      162.00),
                                                              margin: getMargin(
                                                                  left: 14,
                                                                  top: 13,
                                                                  right: 14,
                                                                  bottom: 9),
                                                              child: Text(
                                                                  "msg_i_don_t_have_an2"
                                                                      .tr,
                                                                  maxLines:
                                                                      null,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterRegular14WhiteA700
                                                                      .copyWith(
                                                                          height:
                                                                              1.43))))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 15, right: 10),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      CommonImageView(
                                                          imagePath: ImageConstant
                                                              .imgDrugthumbnail,
                                                          height:
                                                              getSize(40.00),
                                                          width:
                                                              getSize(40.00)),
                                                      Container(
                                                          margin: getMargin(
                                                              left: 13,
                                                              top: 7,
                                                              bottom: 3),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "msg_dr_marcus_hori"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold14
                                                                        .copyWith()),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 3,
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                        "lbl_online"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterMedium10
                                                                            .copyWith()))
                                                              ]))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getVerticalSize(22.00),
                                                width: getHorizontalSize(58.00),
                                                margin: getMargin(
                                                    top: 10, right: 10),
                                                child: Card(
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    elevation: 0,
                                                    margin: EdgeInsets.all(0),
                                                    color: ColorConstant
                                                        .bluegray50,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.only(
                                                            topRight:
                                                                Radius.circular(
                                                                    getHorizontalSize(
                                                                        5.00)),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    getHorizontalSize(
                                                                        5.00)),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    getHorizontalSize(
                                                                        5.00)))),
                                                    child: Stack(children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 13,
                                                                      top: 10,
                                                                      right: 13,
                                                                      bottom:
                                                                          8),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgGroup141,
                                                                  height:
                                                                      getVerticalSize(
                                                                          5.00),
                                                                  width: getHorizontalSize(
                                                                      32.00))))
                                                    ])))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(top: 42),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      CustomTextFormField(
                                                          width: 206,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller: controller
                                                              .chatboxController,
                                                          hintText:
                                                              "msg_type_message"
                                                                  .tr,
                                                          margin: getMargin(
                                                              bottom: 1),
                                                          variant: TextFormFieldVariant
                                                              .OutlineBluegray50,
                                                          padding: TextFormFieldPadding
                                                              .PaddingT20,
                                                          textInputAction:
                                                              TextInputAction
                                                                  .done,
                                                          prefix: Container(
                                                              margin: getMargin(
                                                                  left: 17,
                                                                  top: 17,
                                                                  right: 15,
                                                                  bottom: 17),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(getHorizontalSize(
                                                                          6.79))),
                                                              child: CommonImageView(
                                                                  svgPath: ImageConstant
                                                                      .imgVectorGray50015X13)),
                                                          prefixConstraints: BoxConstraints(
                                                              minWidth: getSize(15.00),
                                                              minHeight: getSize(15.00))),
                                                      CustomButton(
                                                          width: 111,
                                                          text: "lbl_send".tr)
                                                    ])))
                                      ])))
                        ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
