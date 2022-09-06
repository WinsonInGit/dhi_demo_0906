import '../settigns_screen/widgets/settigns_item_widget.dart';
import 'controller/settigns_controller.dart';
import 'models/settigns_item_model.dart';
import 'package:flutter/material.dart';
import 'package:winsoningit_s_application3/core/app_export.dart';
import 'package:winsoningit_s_application3/widgets/custom_icon_button.dart';

class SettignsScreen extends GetWidget<SettignsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(children: [
      Expanded(
          child: Container(
              width: size.width,
              child: SingleChildScrollView(
                  child: Container(
                      height: size.height,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment(0.5, 0),
                              end: Alignment(
                                  -4.26325996727428e-9, 0.47044334295936424),
                              colors: [
                            ColorConstant.cyan300,
                            ColorConstant.teal400
                          ])),
                      child: Container(
                          margin: getMargin(top: 25),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    width: double.infinity,
                                    decoration:
                                        AppDecoration.gradientCyan300Teal400,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 20, right: 20),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgComponent1WhiteA700,
                                                      height: getVerticalSize(
                                                          16.00),
                                                      width: getHorizontalSize(
                                                          4.00)))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  width:
                                                      getHorizontalSize(80.00),
                                                  margin: getMargin(
                                                      left: 20,
                                                      top: 3,
                                                      right: 20),
                                                  decoration: AppDecoration
                                                      .fillGray400
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder40),
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
                                                        CustomIconButton(
                                                            height: 16,
                                                            width: 16,
                                                            margin: getMargin(
                                                                left: 60,
                                                                top: 59,
                                                                right: 4,
                                                                bottom: 5),
                                                            variant:
                                                                IconButtonVariant
                                                                    .FillWhiteA700,
                                                            shape: IconButtonShape
                                                                .RoundedBorder8,
                                                            padding:
                                                                IconButtonPadding
                                                                    .PaddingAll4,
                                                            alignment: Alignment
                                                                .centerRight,
                                                            onTap: () {
                                                              onTapBtntf();
                                                            },
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgCamera))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 20,
                                                      top: 21,
                                                      right: 20),
                                                  child: Text(
                                                      "lbl_amelia_renata".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterSemiBold18WhiteA700
                                                          .copyWith()))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 20,
                                                      top: 31,
                                                      right: 20),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    70.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    177.00),
                                                            child: Obx(() => ListView
                                                                .separated(
                                                                    padding: getPadding(
                                                                        top: 1),
                                                                    scrollDirection: Axis
                                                                        .horizontal,
                                                                    physics:
                                                                        BouncingScrollPhysics(),
                                                                    separatorBuilder:
                                                                        (context,
                                                                            index) {
                                                                      return Container(
                                                                          height: getVerticalSize(
                                                                              44.00),
                                                                          width: getHorizontalSize(
                                                                              1.00),
                                                                          decoration:
                                                                              BoxDecoration(color: ColorConstant.cyan100));
                                                                    },
                                                                    itemCount: controller
                                                                        .settignsModelObj
                                                                        .value
                                                                        .settignsItemList
                                                                        .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            index) {
                                                                      SettignsItemModel
                                                                          model =
                                                                          controller
                                                                              .settignsModelObj
                                                                              .value
                                                                              .settignsItemList[index];
                                                                      return SettignsItemWidget(
                                                                          model);
                                                                    }))),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    44.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    1.00),
                                                            margin: getMargin(
                                                                left: 30,
                                                                top: 14,
                                                                bottom: 13),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .cyan100)),
                                                        Container(
                                                            margin: getMargin(
                                                                left: 30,
                                                                top: 6),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              10,
                                                                          right:
                                                                              10),
                                                                      child: CommonImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgSettings,
                                                                          height: getVerticalSize(
                                                                              20.00),
                                                                          width:
                                                                              getHorizontalSize(32.00))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              8,
                                                                          top:
                                                                              11,
                                                                          right:
                                                                              9),
                                                                      child: Text(
                                                                          "lbl_weight"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtInterSemiBold10
                                                                              .copyWith())),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      child: Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  4,
                                                                              bottom:
                                                                                  1),
                                                                          child: Text(
                                                                              "lbl_103lbs".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterSemiBold16WhiteA700.copyWith())))
                                                                ]))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  width: double.infinity,
                                                  margin: getMargin(top: 43),
                                                  decoration: AppDecoration
                                                      .fillWhiteA700
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .customBorderTL30),
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
                                                                left: 20,
                                                                top: 31,
                                                                right: 20),
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
                                                                  Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        CustomIconButton(
                                                                            height:
                                                                                43,
                                                                            width:
                                                                                43,
                                                                            child:
                                                                                CommonImageView(svgPath: ImageConstant.imgLocation43X43)),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 18,
                                                                                top: 15,
                                                                                bottom: 11),
                                                                            child: Text("lbl_my_saved".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold16.copyWith()))
                                                                      ]),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              14,
                                                                          bottom:
                                                                              13),
                                                                      child: CommonImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgArrowright,
                                                                          height: getVerticalSize(
                                                                              16.00),
                                                                          width:
                                                                              getHorizontalSize(9.00)))
                                                                ])),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    1.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    335.00),
                                                            margin: getMargin(
                                                                left: 20,
                                                                top: 13,
                                                                right: 20),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .bluegray50)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 20,
                                                                top: 13,
                                                                right: 20),
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
                                                                  Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        CustomIconButton(
                                                                            height:
                                                                                43,
                                                                            width:
                                                                                43,
                                                                            child:
                                                                                CommonImageView(svgPath: ImageConstant.imgMenu)),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 18,
                                                                                top: 12,
                                                                                bottom: 12),
                                                                            child: Text("lbl_appointmnet".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold16.copyWith()))
                                                                      ]),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              14,
                                                                          bottom:
                                                                              13),
                                                                      child: CommonImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgArrowright,
                                                                          height: getVerticalSize(
                                                                              16.00),
                                                                          width:
                                                                              getHorizontalSize(9.00)))
                                                                ])),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    1.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    335.00),
                                                            margin: getMargin(
                                                                left: 20,
                                                                top: 13,
                                                                right: 20),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .bluegray50)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 20,
                                                                top: 13,
                                                                right: 20),
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
                                                                  Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        CustomIconButton(
                                                                            height:
                                                                                43,
                                                                            width:
                                                                                43,
                                                                            child:
                                                                                CommonImageView(svgPath: ImageConstant.imgComputer)),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 18,
                                                                                top: 15,
                                                                                bottom: 11),
                                                                            child: Text("lbl_payment_method".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold16.copyWith()))
                                                                      ]),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              13,
                                                                          bottom:
                                                                              14),
                                                                      child: CommonImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgArrowright,
                                                                          height: getVerticalSize(
                                                                              16.00),
                                                                          width:
                                                                              getHorizontalSize(9.00)))
                                                                ])),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    1.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    335.00),
                                                            margin: getMargin(
                                                                left: 20,
                                                                top: 13,
                                                                right: 20),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .bluegray50)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 20,
                                                                top: 13,
                                                                right: 20),
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
                                                                  Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        CustomIconButton(
                                                                            height:
                                                                                43,
                                                                            width:
                                                                                43,
                                                                            child:
                                                                                CommonImageView(svgPath: ImageConstant.imgVolume43X43)),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 18,
                                                                                top: 15,
                                                                                bottom: 11),
                                                                            child: Text("lbl_faqs".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold16.copyWith()))
                                                                      ]),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              14,
                                                                          bottom:
                                                                              13),
                                                                      child: CommonImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgArrowright,
                                                                          height: getVerticalSize(
                                                                              16.00),
                                                                          width:
                                                                              getHorizontalSize(9.00)))
                                                                ])),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    1.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    335.00),
                                                            margin: getMargin(
                                                                left: 20,
                                                                top: 13,
                                                                right: 20),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .bluegray50)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 20,
                                                                top: 13,
                                                                right: 20,
                                                                bottom: 55),
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
                                                                  Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        CustomIconButton(
                                                                            height:
                                                                                43,
                                                                            width:
                                                                                43,
                                                                            child:
                                                                                CommonImageView(svgPath: ImageConstant.imgWarning)),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 18,
                                                                                top: 15,
                                                                                bottom: 11),
                                                                            child: Text("lbl_help".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold16.copyWith()))
                                                                      ]),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              14,
                                                                          bottom:
                                                                              13),
                                                                      child: CommonImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgArrowright,
                                                                          height: getVerticalSize(
                                                                              16.00),
                                                                          width:
                                                                              getHorizontalSize(9.00)))
                                                                ]))
                                                      ])))
                                        ]))
                              ])))))),
      Container(
          decoration: BoxDecoration(color: ColorConstant.whiteA700),
          child: Padding(
              padding: getPadding(top: 7, bottom: 6),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(left: 1, right: 1),
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgHomeGray500,
                                      height: getVerticalSize(22.00),
                                      width: getHorizontalSize(19.00)))),
                          Padding(
                              padding: getPadding(top: 3),
                              child: Text("lbl_home".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium8.copyWith()))
                        ])),
                    Container(
                        margin: getMargin(bottom: 1),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 8, right: 8),
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgVectorGray500,
                                      height: getVerticalSize(21.00),
                                      width: getHorizontalSize(20.00))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(top: 4),
                                      child: Text("lbl_messages".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium8
                                              .copyWith())))
                            ])),
                    Container(
                        margin: getMargin(bottom: 1),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 14, right: 13),
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgCalendar,
                                      height: getVerticalSize(21.00),
                                      width: getHorizontalSize(20.00))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(top: 4),
                                      child: Text("lbl_appointment".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium8
                                              .copyWith())))
                            ])),
                    Container(
                        margin: getMargin(bottom: 1),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(left: 1, right: 1),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgUser21X20,
                                          height: getVerticalSize(21.00),
                                          width: getHorizontalSize(20.00)))),
                              Padding(
                                  padding: getPadding(top: 4),
                                  child: Text("lbl_profile".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium8Cyan300
                                          .copyWith()))
                            ]))
                  ])))
    ])));
  }

  onTapBtntf() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
//TODO: Permission - use imageList for using selected images
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
