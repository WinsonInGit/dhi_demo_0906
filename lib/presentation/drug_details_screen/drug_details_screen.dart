import 'controller/drug_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:winsoningit_s_application3/core/app_export.dart';
import 'package:winsoningit_s_application3/widgets/custom_button.dart';
import 'package:winsoningit_s_application3/widgets/custom_icon_button.dart';

class DrugDetailsScreen extends GetWidget<DrugDetailsController> {
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
                                      left: 20, top: 28, right: 20, bottom: 28),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                width: size.width,
                                                margin: getMargin(
                                                    left: 9, right: 2),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapImgArrowleft();
                                                          },
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 2,
                                                                      bottom:
                                                                          3),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowleftGray700,
                                                                  height:
                                                                      getVerticalSize(
                                                                          14.00),
                                                                  width: getHorizontalSize(
                                                                      7.00)))),
                                                      Text(
                                                          "lbl_drugs_detail".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterSemiBold16
                                                              .copyWith()),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1,
                                                              bottom: 1),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgCart,
                                                              height: getSize(
                                                                  18.00),
                                                              width: getSize(
                                                                  18.00)))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 94,
                                                    top: 66,
                                                    right: 94),
                                                child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgDrugthumbnail,
                                                    height: getSize(147.00),
                                                    width: getSize(147.00)))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 65, right: 2),
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
                                                      Container(
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
                                                                "lbl_obh_combi"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterSemiBold20
                                                                    .copyWith()),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 11,
                                                                        right:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_75ml"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold16Gray500
                                                                        .copyWith())),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 1,
                                                                        top: 15,
                                                                        right:
                                                                            10),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  1,
                                                                              bottom:
                                                                                  2),
                                                                          child: CommonImageView(
                                                                              svgPath: ImageConstant.imgStar,
                                                                              height: getSize(11.00),
                                                                              width: getSize(11.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  7,
                                                                              top:
                                                                                  1,
                                                                              bottom:
                                                                                  2),
                                                                          child: CommonImageView(
                                                                              svgPath: ImageConstant.imgStar,
                                                                              height: getSize(11.00),
                                                                              width: getSize(11.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  7,
                                                                              top:
                                                                                  1,
                                                                              bottom:
                                                                                  2),
                                                                          child: CommonImageView(
                                                                              svgPath: ImageConstant.imgStar,
                                                                              height: getSize(11.00),
                                                                              width: getSize(11.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  7,
                                                                              top:
                                                                                  1,
                                                                              bottom:
                                                                                  2),
                                                                          child: CommonImageView(
                                                                              svgPath: ImageConstant.imgStar,
                                                                              height: getSize(11.00),
                                                                              width: getSize(11.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  6),
                                                                          child: Text(
                                                                              "lbl_4_0".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterSemiBold14Cyan300.copyWith()))
                                                                    ]))
                                                          ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 28,
                                                              bottom: 29),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgFavorite,
                                                              height:
                                                                  getVerticalSize(
                                                                      19.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      20.00)))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 8, top: 30),
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
                                                      Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 16,
                                                                        bottom:
                                                                            14),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgVector,
                                                                    height:
                                                                        getVerticalSize(
                                                                            2.00),
                                                                    width: getHorizontalSize(
                                                                        14.00))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            31,
                                                                        top: 4,
                                                                        bottom:
                                                                            3),
                                                                child: Text(
                                                                    "lbl_1".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold24
                                                                        .copyWith())),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            31),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgPlus,
                                                                    height:
                                                                        getSize(
                                                                            32.00),
                                                                    width: getSize(
                                                                        32.00)))
                                                          ]),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 3,
                                                              bottom: 2),
                                                          child: Text(
                                                              "lbl_9_99".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterSemiBold26
                                                                  .copyWith()))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 1,
                                                    top: 40,
                                                    right: 244),
                                                child: Text(
                                                    "lbl_description".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterSemiBold16
                                                        .copyWith()))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                width:
                                                    getHorizontalSize(330.00),
                                                margin: getMargin(
                                                    left: 1, top: 15, right: 3),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "msg_obh_combi_is_a2"
                                                                  .tr,
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .gray500,
                                                              fontSize:
                                                                  getFontSize(
                                                                      12),
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.67)),
                                                      TextSpan(
                                                          text: "lbl_read_more"
                                                              .tr,
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .cyan300,
                                                              fontSize:
                                                                  getFontSize(
                                                                      12),
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 1.67))
                                                    ]),
                                                    textAlign:
                                                        TextAlign.left))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(top: 80),
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
                                                      CustomIconButton(
                                                          height: 50,
                                                          width: 50,
                                                          shape: IconButtonShape
                                                              .RoundedBorder8,
                                                          padding:
                                                              IconButtonPadding
                                                                  .PaddingAll15,
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCart50X50)),
                                                      CustomButton(
                                                          width: 266,
                                                          text:
                                                              "lbl_buy_now".tr,
                                                          onTap: onTapBtnBuynow)
                                                    ])))
                                      ])))
                        ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnBuynow() {
    Get.toNamed(AppRoutes.cartScreen);
  }
}
