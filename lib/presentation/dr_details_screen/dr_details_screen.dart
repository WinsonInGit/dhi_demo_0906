import '../dr_details_screen/widgets/dr_details_item_widget.dart';
import 'controller/dr_details_controller.dart';
import 'models/dr_details_item_model.dart';
import 'package:flutter/material.dart';
import 'package:winsoningit_s_application3/core/app_export.dart';
import 'package:winsoningit_s_application3/widgets/custom_button.dart';
import 'package:winsoningit_s_application3/widgets/custom_icon_button.dart';

class DrDetailsScreen extends GetWidget<DrDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: size.width,
                              margin: getMargin(left: 20, top: 26, right: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapImgArrowleft();
                                        },
                                        child: Padding(
                                            padding:
                                                getPadding(top: 3, bottom: 1),
                                            child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowleftGray700,
                                                height: getVerticalSize(14.00),
                                                width:
                                                    getHorizontalSize(7.00)))),
                                    Padding(
                                        padding: getPadding(bottom: 2),
                                        child: Text("lbl_doctor_detail".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterSemiBold16
                                                .copyWith())),
                                    Padding(
                                        padding: getPadding(top: 2),
                                        child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgComponent1,
                                            height: getVerticalSize(16.00),
                                            width: getHorizontalSize(4.00)))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 20, top: 44, right: 20),
                              decoration: AppDecoration.outlineBluegray50
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 10, top: 10, bottom: 6),
                                        child: CommonImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle541111X111,
                                            height: getSize(111.00),
                                            width: getSize(111.00))),
                                    Container(
                                        margin: getMargin(
                                            left: 17, top: 17, bottom: 14),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("msg_dr_marcus_hori".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterSemiBold18
                                                      .copyWith()),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 5, right: 10),
                                                  child: Text(
                                                      "lbl_chardiologist".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium12
                                                          .copyWith())),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4,
                                                      top: 19,
                                                      right: 10),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 2),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgStar,
                                                                height: getSize(
                                                                    10.00),
                                                                width: getSize(
                                                                    10.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 5,
                                                                top: 1),
                                                            child: Text(
                                                                "lbl_4_7".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterMedium12Cyan300
                                                                    .copyWith()))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 1,
                                                      top: 10,
                                                      right: 10),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 2),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgLocation10X9,
                                                                height:
                                                                    getVerticalSize(
                                                                        10.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        9.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 4,
                                                                top: 1),
                                                            child: Text(
                                                                "lbl_800m_away"
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
                                                      ]))
                                            ]))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding:
                                  getPadding(left: 21, top: 25, right: 306),
                              child: Text("lbl_about".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtInterSemiBold16.copyWith()))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(312.00),
                              margin: getMargin(left: 21, top: 16, right: 41),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_lorem_ipsum_dol2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray500,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            height: 1.67)),
                                    TextSpan(
                                        text: "lbl_read_more".tr,
                                        style: TextStyle(
                                            color: ColorConstant.cyan300,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height: 1.67))
                                  ]),
                                  textAlign: TextAlign.left))),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: getPadding(left: 10, top: 36),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    decoration: AppDecoration.outlineBluegray50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  left: 12, top: 14, right: 12),
                                              child: Text("lbl_mon".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular10
                                                      .copyWith())),
                                          Padding(
                                              padding: getPadding(
                                                  left: 12,
                                                  top: 4,
                                                  right: 12,
                                                  bottom: 15),
                                              child: Text("lbl_21".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterSemiBold18
                                                      .copyWith()))
                                        ])),
                                Container(
                                    margin: getMargin(left: 12),
                                    decoration: AppDecoration.outlineBluegray50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 13,
                                                      top: 14,
                                                      right: 13),
                                                  child: Text("lbl_tue".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular10
                                                          .copyWith()))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 11,
                                                  top: 4,
                                                  right: 11,
                                                  bottom: 15),
                                              child: Text("lbl_22".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterSemiBold18
                                                      .copyWith()))
                                        ])),
                                Container(
                                    margin: getMargin(left: 12),
                                    decoration: AppDecoration.fillCyan300
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 11,
                                                      top: 14,
                                                      right: 11),
                                                  child: Text("lbl_wed".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular10WhiteA700
                                                          .copyWith()))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 11,
                                                  top: 4,
                                                  right: 11,
                                                  bottom: 15),
                                              child: Text("lbl_23".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterSemiBold18WhiteA700
                                                      .copyWith()))
                                        ])),
                                Container(
                                    margin: getMargin(left: 12),
                                    decoration: AppDecoration.outlineBluegray50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  left: 11, top: 14, right: 11),
                                              child: Text("lbl_thu".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular10
                                                      .copyWith())),
                                          Padding(
                                              padding: getPadding(
                                                  left: 11,
                                                  top: 4,
                                                  right: 11,
                                                  bottom: 15),
                                              child: Text("lbl_24".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterSemiBold18
                                                      .copyWith()))
                                        ])),
                                Container(
                                    margin: getMargin(left: 12),
                                    decoration: AppDecoration.outlineBluegray50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 14,
                                                      right: 16),
                                                  child: Text("lbl_fri".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular10
                                                          .copyWith()))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 11,
                                                  top: 4,
                                                  right: 11,
                                                  bottom: 15),
                                              child: Text("lbl_25".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterSemiBold18
                                                      .copyWith()))
                                        ])),
                                Container(
                                    margin: getMargin(left: 12),
                                    decoration: AppDecoration.outlineBluegray50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 14,
                                                      top: 14,
                                                      right: 14),
                                                  child: Text("lbl_sat".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular10
                                                          .copyWith()))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 11,
                                                  top: 4,
                                                  right: 11,
                                                  bottom: 15),
                                              child: Text("lbl_26".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterSemiBold18
                                                      .copyWith()))
                                        ])),
                                Container(
                                    margin: getMargin(left: 12),
                                    decoration: AppDecoration.outlineBluegray50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 14,
                                                      top: 14,
                                                      right: 14),
                                                  child: Text("lbl_sat".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular10
                                                          .copyWith()))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 11,
                                                  top: 2,
                                                  right: 11,
                                                  bottom: 14),
                                              child: Text("lbl_26".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterSemiBold18
                                                      .copyWith()))
                                        ]))
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(335.00),
                          margin: getMargin(left: 10, top: 38, right: 10),
                          decoration:
                              BoxDecoration(color: ColorConstant.bluegray50)),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(
                                  left: 10, top: 37, right: 10, bottom: 28),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Obx(() => ListView.builder(
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: controller.drDetailsModelObj
                                            .value.drDetailsItemList.length,
                                        itemBuilder: (context, index) {
                                          DrDetailsItemModel model = controller
                                              .drDetailsModelObj
                                              .value
                                              .drDetailsItemList[index];
                                          return DrDetailsItemWidget(model);
                                        })),
                                    Padding(
                                        padding: getPadding(top: 47),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              CustomIconButton(
                                                  height: 50,
                                                  width: 50,
                                                  shape: IconButtonShape
                                                      .RoundedBorder8,
                                                  padding: IconButtonPadding
                                                      .PaddingAll15,
                                                  onTap: () {
                                                    onTapBtntf();
                                                  },
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgVolume50X50)),
                                              CustomButton(
                                                  width: 266,
                                                  text:
                                                      "lbl_book_apointment".tr,
                                                  onTap: onTapBtnBookapointment)
                                            ]))
                                  ])))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtntf() {
    Get.toNamed(AppRoutes.chatScreen);
  }

  onTapBtnBookapointment() {
    Get.toNamed(AppRoutes.bookAnAppointmentScreen);
  }
}
