import '../article_screen/widgets/listrectangle541_item_widget.dart';
import '../article_screen/widgets/topics_item_widget.dart';
import '../article_screen/widgets/trendings_item_widget.dart';
import 'controller/article_controller.dart';
import 'models/listrectangle541_item_model.dart';
import 'models/topics_item_model.dart';
import 'models/trendings_item_model.dart';
import 'package:flutter/material.dart';
import 'package:winsoningit_s_application3/core/app_export.dart';
import 'package:winsoningit_s_application3/widgets/custom_search_view.dart';

class ArticleScreen extends GetWidget<ArticleController> {
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
                              margin: getMargin(left: 20, top: 28, right: 20),
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
                                                getPadding(top: 2, bottom: 1),
                                            child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowleftGray700,
                                                height: getVerticalSize(14.00),
                                                width:
                                                    getHorizontalSize(7.00)))),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("lbl_articles".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterSemiBold16
                                                .copyWith())),
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgComponent1,
                                            height: getVerticalSize(16.00),
                                            width: getHorizontalSize(4.00)))
                                  ]))),
                      CustomSearchView(
                          width: 335,
                          focusNode: FocusNode(),
                          controller: controller.searchController,
                          hintText: "msg_search_articles".tr,
                          margin: getMargin(left: 20, top: 43, right: 20),
                          alignment: Alignment.center,
                          prefix: Container(
                              margin: getMargin(
                                  left: 18, top: 12, right: 13, bottom: 11),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(15.00),
                              minHeight: getSize(15.00))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding:
                                  getPadding(left: 20, top: 20, right: 231),
                              child: Text("msg_popular_article".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterSemiBold16Black900
                                      .copyWith()))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(65.00),
                              width: getHorizontalSize(332.00),
                              child: Obx(() => ListView.builder(
                                  padding:
                                      getPadding(left: 20, top: 15, right: 20),
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  itemCount: controller.articleModelObj.value
                                      .topicsItemList.length,
                                  itemBuilder: (context, index) {
                                    TopicsItemModel model = controller
                                        .articleModelObj
                                        .value
                                        .topicsItemList[index];
                                    return TopicsItemWidget(model);
                                  })))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 20, top: 20, right: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text("msg_trending_articl".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterSemiBold16Black900
                                            .copyWith()),
                                    Padding(
                                        padding: getPadding(top: 5, bottom: 1),
                                        child: Text("lbl_see_all".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular12Cyan300
                                                .copyWith()))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(229.00),
                              width: getHorizontalSize(323.00),
                              child: Obx(() => ListView.builder(
                                  padding:
                                      getPadding(left: 20, top: 16, right: 20),
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  itemCount: controller.articleModelObj.value
                                      .trendingsItemList.length,
                                  itemBuilder: (context, index) {
                                    TrendingsItemModel model = controller
                                        .articleModelObj
                                        .value
                                        .trendingsItemList[index];
                                    return TrendingsItemWidget(model);
                                  })))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 20, top: 24, right: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("msg_related_article".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterSemiBold16Black900
                                                .copyWith())),
                                    Padding(
                                        padding: getPadding(top: 5),
                                        child: Text("lbl_see_all".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular12Cyan300
                                                .copyWith()))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                  left: 20, top: 16, right: 20, bottom: 58),
                              child: Obx(() => ListView.builder(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller.articleModelObj.value
                                      .listrectangle541ItemList.length,
                                  itemBuilder: (context, index) {
                                    Listrectangle541ItemModel model = controller
                                        .articleModelObj
                                        .value
                                        .listrectangle541ItemList[index];
                                    return Listrectangle541ItemWidget(model);
                                  }))))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
