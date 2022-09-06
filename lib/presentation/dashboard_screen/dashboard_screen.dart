import '../dashboard_screen/widgets/doctor_item_widget.dart';
import 'controller/dashboard_controller.dart';
import 'models/doctor_item_model.dart';
import 'package:flutter/material.dart';
import 'package:winsoningit_s_application3/core/app_export.dart';
import 'package:winsoningit_s_application3/widgets/custom_button.dart';
import 'package:winsoningit_s_application3/widgets/custom_icon_button.dart';
import 'package:winsoningit_s_application3/widgets/custom_search_view.dart';

class DashboardScreen extends GetWidget<DashboardController> {
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
                              margin: getMargin(top: 70),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: size.width,
                                            margin:
                                                getMargin(left: 20, right: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                      width: getHorizontalSize(
                                                          185.00),
                                                      child: Text(
                                                          "msg_find_your_desir"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterSemiBold24
                                                              .copyWith(
                                                                  height:
                                                                      1.33))),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 12, bottom: 15),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgVolume22X17,
                                                          height:
                                                              getVerticalSize(
                                                                  22.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  17.00)))
                                                ]))),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                            width: double.infinity,
                                            margin:
                                                getMargin(left: 10, top: 26),
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomSearchView(
                                                      width: 335,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .searchController,
                                                      hintText:
                                                          "msg_search_doctor"
                                                              .tr,
                                                      margin:
                                                          getMargin(right: 10),
                                                      prefix: Container(
                                                          margin: getMargin(
                                                              left: 18,
                                                              top: 12,
                                                              right: 13,
                                                              bottom: 10),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgSearch)),
                                                      prefixConstraints:
                                                          BoxConstraints(
                                                              minWidth: getSize(
                                                                  17.00),
                                                              minHeight:
                                                                  getSize(
                                                                      17.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 20, right: 10),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            GestureDetector(
                                                                onTap: () {
                                                                  onTapImgDoctorIcon();
                                                                },
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgDoctoricon,
                                                                    height:
                                                                        getSize(
                                                                            71.00),
                                                                    width: getSize(
                                                                        71.00))),
                                                            CustomIconButton(
                                                                height: 71,
                                                                width: 71,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            17),
                                                                variant:
                                                                    IconButtonVariant
                                                                        .FillCyan300,
                                                                shape: IconButtonShape
                                                                    .RoundedBorder15,
                                                                padding:
                                                                    IconButtonPadding
                                                                        .PaddingAll15,
                                                                onTap: () {
                                                                  onTapBtntf();
                                                                },
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgCalculator)),
                                                            CustomIconButton(
                                                                height: 71,
                                                                width: 71,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            17),
                                                                variant:
                                                                    IconButtonVariant
                                                                        .FillCyan300,
                                                                shape: IconButtonShape
                                                                    .RoundedBorder15,
                                                                padding:
                                                                    IconButtonPadding
                                                                        .PaddingAll15,
                                                                onTap: () {
                                                                  onTapBtntf1();
                                                                },
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgAmbulanceicon)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            17),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgCalendar71X71,
                                                                    height:
                                                                        getSize(
                                                                            71.00),
                                                                    width: getSize(
                                                                        71.00)))
                                                          ])),
                                                  Container(
                                                      width: double.infinity,
                                                      margin: getMargin(
                                                          top: 20, right: 10),
                                                      decoration: AppDecoration
                                                          .fillBluegray50
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        186.00),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            26,
                                                                        top: 19,
                                                                        right:
                                                                            26),
                                                                child: Text(
                                                                    "msg_early_protectio"
                                                                        .tr,
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold20
                                                                        .copyWith(
                                                                            height:
                                                                                1.25))),
                                                            CustomButton(
                                                                width: 108,
                                                                text:
                                                                    "lbl_learn_more"
                                                                        .tr,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            25,
                                                                        top: 11,
                                                                        right:
                                                                            25,
                                                                        bottom:
                                                                            11),
                                                                padding:
                                                                    ButtonPadding
                                                                        .PaddingAll7)
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 42, right: 10),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                                "lbl_top_doctor"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterSemiBold16
                                                                    .copyWith()),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            210,
                                                                        top: 1,
                                                                        bottom:
                                                                            2),
                                                                child: Text(
                                                                    "lbl_see_all"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12Cyan300
                                                                        .copyWith()))
                                                          ])),
                                                  Align(
                                                      alignment: Alignment
                                                          .centerRight,
                                                      child: Container(
                                                          height: getVerticalSize(
                                                              187.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  382.00),
                                                          child: Obx(() =>
                                                              ListView.builder(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              1,
                                                                          top:
                                                                              14),
                                                                  scrollDirection: Axis
                                                                      .horizontal,
                                                                  physics:
                                                                      BouncingScrollPhysics(),
                                                                  itemCount: controller
                                                                      .dashboardModelObj
                                                                      .value
                                                                      .doctorItemList
                                                                      .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          index) {
                                                                    DoctorItemModel
                                                                        model =
                                                                        controller
                                                                            .dashboardModelObj
                                                                            .value
                                                                            .doctorItemList[index];
                                                                    return DoctorItemWidget(
                                                                        model);
                                                                  })))),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 29, right: 10),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "lbl_healt_article"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold16
                                                                        .copyWith())),
                                                            GestureDetector(
                                                                onTap: () {
                                                                  onTapTxtSeeall();
                                                                },
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            200,
                                                                        top: 5),
                                                                    child: Text(
                                                                        "lbl_see_all"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterRegular12Cyan300
                                                                            .copyWith())))
                                                          ])),
                                                  Container(
                                                      margin: getMargin(
                                                          top: 16, right: 10),
                                                      decoration: AppDecoration
                                                          .outlineBluegray50
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 6,
                                                                        top: 6,
                                                                        bottom:
                                                                            6),
                                                                child: CommonImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgRectangle541,
                                                                    height:
                                                                        getSize(
                                                                            55.00),
                                                                    width: getSize(
                                                                        55.00))),
                                                            Container(
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            12,
                                                                        top: 14,
                                                                        bottom:
                                                                            14),
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
                                                                      Container(
                                                                          width: getHorizontalSize(
                                                                              178.00),
                                                                          child: Text(
                                                                              "msg_the_25_healthie".tr,
                                                                              maxLines: null,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterSemiBold10Gray700.copyWith())),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  4,
                                                                              right:
                                                                                  10),
                                                                          child: Row(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text("lbl_jun_10_20212".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterMedium8.copyWith()),
                                                                                Container(height: getSize(2.00), width: getSize(2.00), margin: getMargin(left: 5, top: 4, bottom: 4), decoration: BoxDecoration(color: ColorConstant.gray500, borderRadius: BorderRadius.circular(getHorizontalSize(1.00)))),
                                                                                Padding(padding: getPadding(left: 5), child: Text("lbl_5min_read2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterMedium8.copyWith()))
                                                                              ]))
                                                                    ]))
                                                          ]))
                                                ])))
                                  ]))))),
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
                                              svgPath: ImageConstant.imgHome,
                                              height: getVerticalSize(22.00),
                                              width:
                                                  getHorizontalSize(19.00)))),
                                  Padding(
                                      padding: getPadding(top: 3),
                                      child: Text("lbl_home".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium8Cyan300
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
                                              getPadding(left: 8, right: 8),
                                          child: CommonImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorGray500,
                                              height: getVerticalSize(21.00),
                                              width: getHorizontalSize(20.00))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(top: 4),
                                              child: Text("lbl_messages".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium8
                                                      .copyWith())))
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
                                margin: getMargin(bottom: 1),
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

  onTapImgDoctorIcon() {
    Get.toNamed(AppRoutes.drListScreen);
  }

  onTapBtntf() {
    Get.toNamed(AppRoutes.pharmacyScreen);
  }

  onTapBtntf1() {
    Get.toNamed(AppRoutes.ambulanceScreen);
  }

  onTapTxtSeeall() {
    Get.toNamed(AppRoutes.articleScreen);
  }
}
