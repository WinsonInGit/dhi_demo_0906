import 'controller/ambulance_controller.dart';
import 'package:flutter/material.dart';
import 'package:winsoningit_s_application3/core/app_export.dart';
import 'package:winsoningit_s_application3/widgets/custom_button.dart';
import 'package:winsoningit_s_application3/widgets/custom_search_view.dart';

class AmbulanceScreen extends GetWidget<AmbulanceController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Container(
                          width: size.width,
                          child: Container(
                              decoration: AppDecoration.fillWhiteA700,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapImgArrowleft();
                                        },
                                        child: Padding(
                                            padding: getPadding(
                                                left: 29, top: 24, bottom: 21),
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowleft,
                                                height: getVerticalSize(11.00),
                                                width:
                                                    getHorizontalSize(7.00)))),
                                    Padding(
                                        padding: getPadding(
                                            left: 107, top: 23, bottom: 17),
                                        child: Text("lbl_ambulance".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterSemiBold16
                                                .copyWith()))
                                  ]))),
                      Container(
                          height: getVerticalSize(710.00),
                          width: size.width,
                          margin: getMargin(bottom: 1),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: CommonImageView(
                                    imagePath: ImageConstant.imgMapimage,
                                    height: getVerticalSize(710.00),
                                    width: getHorizontalSize(375.00))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    margin: getMargin(
                                        left: 10,
                                        top: 11,
                                        right: 10,
                                        bottom: 23),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomSearchView(
                                              width: 355,
                                              focusNode: FocusNode(),
                                              controller:
                                                  controller.searchController,
                                              hintText:
                                                  "msg_search_location".tr,
                                              variant: SearchViewVariant
                                                  .FillWhiteA700,
                                              prefix: Container(
                                                  margin: getMargin(
                                                      left: 19,
                                                      top: 12,
                                                      right: 14,
                                                      bottom: 11),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgSearch)),
                                              prefixConstraints: BoxConstraints(
                                                  minWidth: getSize(15.00),
                                                  minHeight: getSize(15.00))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 20,
                                                      top: 84,
                                                      right: 20),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgMappointsimag,
                                                      height: getVerticalSize(
                                                          268.00),
                                                      width: getHorizontalSize(
                                                          269.00)))),
                                          Container(
                                              width: double.infinity,
                                              margin: getMargin(top: 150),
                                              decoration: AppDecoration
                                                  .fillWhiteA700
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 14,
                                                            top: 21,
                                                            right: 14),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              3,
                                                                          bottom:
                                                                              8),
                                                                  child: CommonImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgLocation,
                                                                      height: getVerticalSize(
                                                                          21.00),
                                                                      width: getHorizontalSize(
                                                                          20.00))),
                                                              Container(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          253.00),
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              38),
                                                                  child: Text(
                                                                      "msg_2640_cabin_cree"
                                                                          .tr,
                                                                      maxLines:
                                                                          null,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: AppStyle
                                                                          .txtInterRegular14
                                                                          .copyWith(
                                                                              height: 1.36)))
                                                            ])),
                                                    CustomButton(
                                                        width: 335,
                                                        text:
                                                            "msg_confirm_locatio"
                                                                .tr,
                                                        margin: getMargin(
                                                            left: 10,
                                                            top: 15,
                                                            right: 10,
                                                            bottom: 14),
                                                        alignment:
                                                            Alignment.center)
                                                  ]))
                                        ])))
                          ]))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
