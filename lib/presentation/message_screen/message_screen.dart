import '../message_screen/widgets/message_item_widget.dart';
import 'controller/message_controller.dart';
import 'models/message_item_model.dart';
import 'package:flutter/material.dart';
import 'package:winsoningit_s_application3/core/app_export.dart';
import 'package:winsoningit_s_application3/widgets/custom_button.dart';
import 'package:winsoningit_s_application3/widgets/custom_floating_button.dart';

class MessageScreen extends GetWidget<MessageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(children: [
              Expanded(
                  child: Container(
                      width: size.width,
                      child: SingleChildScrollView(
                          child: Container(
                              height: getVerticalSize(743.00),
                              width: size.width,
                              margin: getMargin(top: 25),
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      margin: getMargin(
                                                          left: 20, right: 19),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                width: size
                                                                    .width,
                                                                margin:
                                                                    getMargin(
                                                                        left: 1,
                                                                        right:
                                                                            1),
                                                                child:
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            32.00),
                                                                        width: getHorizontalSize(
                                                                            334.00),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.bottomCenter,
                                                                            children: [
                                                                              Align(alignment: Alignment.topRight, child: Padding(padding: getPadding(left: 10, bottom: 10), child: CommonImageView(svgPath: ImageConstant.imgComponent1WhiteA700, height: getVerticalSize(16.00), width: getHorizontalSize(4.00)))),
                                                                              Align(
                                                                                  alignment: Alignment.bottomCenter,
                                                                                  child: Padding(
                                                                                      padding: getPadding(top: 10, right: 1),
                                                                                      child: Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [
                                                                                        Padding(padding: getPadding(top: 1), child: Text("lbl_message".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold24.copyWith(height: 1.00))),
                                                                                        Padding(padding: getPadding(left: 206, bottom: 5), child: CommonImageView(svgPath: ImageConstant.imgSearch20X20, height: getSize(20.00), width: getSize(20.00)))
                                                                                      ])))
                                                                            ]))),
                                                            Container(
                                                                margin:
                                                                    getMargin(
                                                                        top: 40,
                                                                        right:
                                                                            1),
                                                                decoration: AppDecoration
                                                                    .fillBluegray50
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder10),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      CustomButton(
                                                                          width:
                                                                              104,
                                                                          text:
                                                                              "lbl_all".tr),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  17,
                                                                              bottom:
                                                                                  14),
                                                                          child: Text(
                                                                              "lbl_group".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterRegular14.copyWith(height: 1.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  15,
                                                                              right:
                                                                                  42,
                                                                              bottom:
                                                                                  16),
                                                                          child: Text(
                                                                              "lbl_private".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterRegular14.copyWith(height: 1.00)))
                                                                    ])),
                                                            Padding(
                                                                padding: getPadding(
                                                                    left: 1,
                                                                    top: 31),
                                                                child: Obx(() => ListView
                                                                    .builder(
                                                                        physics:
                                                                            BouncingScrollPhysics(),
                                                                        shrinkWrap:
                                                                            true,
                                                                        itemCount: controller
                                                                            .messageModelObj
                                                                            .value
                                                                            .messageItemList
                                                                            .length,
                                                                        itemBuilder:
                                                                            (context,
                                                                                index) {
                                                                          MessageItemModel model = controller
                                                                              .messageModelObj
                                                                              .value
                                                                              .messageItemList[index];
                                                                          return MessageItemWidget(
                                                                              model,
                                                                              onTapChat: onTapChat);
                                                                        })))
                                                          ]))
                                                ]))),
                                    CustomFloatingButton(
                                        height: 55,
                                        width: 55,
                                        margin: getMargin(all: 20),
                                        alignment: Alignment.bottomRight,
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgUser55X55,
                                            height: getVerticalSize(27.50),
                                            width: getHorizontalSize(27.50)))
                                  ]))))),
              Container(
                  decoration: BoxDecoration(color: ColorConstant.whiteA700),
                  child: Padding(
                      padding: getPadding(top: 6, bottom: 6),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                                margin: getMargin(top: 1),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding:
                                                  getPadding(left: 1, right: 1),
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgHomeGray500,
                                                  height:
                                                      getVerticalSize(22.00),
                                                  width: getHorizontalSize(
                                                      19.00)))),
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Text("lbl_home".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterMedium8
                                                  .copyWith()))
                                    ])),
                            Container(
                                margin: getMargin(bottom: 1),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(left: 7, right: 8),
                                          child: CommonImageView(
                                              svgPath: ImageConstant.imgMessage,
                                              height: getVerticalSize(23.00),
                                              width: getHorizontalSize(22.00))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(top: 3),
                                              child: Text("lbl_messages".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium8Cyan300
                                                      .copyWith())))
                                    ])),
                            Container(
                                margin: getMargin(top: 1, bottom: 1),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(left: 14, right: 13),
                                          child: CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgCalendar,
                                              height: getVerticalSize(21.00),
                                              width: getHorizontalSize(20.00))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(top: 4),
                                              child: Text("lbl_appointment".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium8
                                                      .copyWith())))
                                    ])),
                            Container(
                                margin: getMargin(top: 1, bottom: 1),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding:
                                                  getPadding(left: 1, right: 1),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgUser,
                                                  height:
                                                      getVerticalSize(21.00),
                                                  width: getHorizontalSize(
                                                      20.00)))),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("lbl_profile".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterMedium8
                                                  .copyWith()))
                                    ]))
                          ])))
            ])));
  }

  onTapChat() {
    Get.toNamed(AppRoutes.chatScreen);
  }
}
