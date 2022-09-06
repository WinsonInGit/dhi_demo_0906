import '../pharmacy_screen/widgets/drugs1_item_widget.dart';
import '../pharmacy_screen/widgets/drugs_item_widget.dart';
import 'controller/pharmacy_controller.dart';
import 'models/drugs1_item_model.dart';
import 'models/drugs_item_model.dart';
import 'package:flutter/material.dart';
import 'package:winsoningit_s_application3/core/app_export.dart';
import 'package:winsoningit_s_application3/widgets/custom_button.dart';
import 'package:winsoningit_s_application3/widgets/custom_search_view.dart';

class PharmacyScreen extends GetWidget<PharmacyController> {
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
                              margin: getMargin(left: 20, top: 29, right: 20),
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
                                                getPadding(top: 1, bottom: 2),
                                            child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowleftGray700,
                                                height: getVerticalSize(14.00),
                                                width:
                                                    getHorizontalSize(7.00)))),
                                    Padding(
                                        padding: getPadding(top: 1, bottom: 1),
                                        child: Text("lbl_pharmacy".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterSemiBold16
                                                .copyWith())),
                                    CommonImageView(
                                        svgPath: ImageConstant.imgCart,
                                        height: getSize(18.00),
                                        width: getSize(18.00))
                                  ]))),
                      CustomSearchView(
                          width: 335,
                          focusNode: FocusNode(),
                          controller: controller.searchController,
                          hintText: "msg_search_drugs_c".tr,
                          margin: getMargin(left: 20, top: 41, right: 20),
                          padding: SearchViewPadding.PaddingT16,
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
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 20, top: 25, right: 19),
                              decoration: AppDecoration.fillBluegray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(175.00),
                                        margin: getMargin(
                                            left: 17, top: 20, right: 17),
                                        child: Text("msg_order_quickly_w".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterSemiBold20
                                                .copyWith(height: 1.25))),
                                    CustomButton(
                                        width: 150,
                                        text: "msg_upload_prescrip".tr,
                                        margin: getMargin(
                                            left: 16,
                                            top: 7,
                                            right: 16,
                                            bottom: 12),
                                        padding: ButtonPadding.PaddingAll7)
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 20, top: 52, right: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text("lbl_popular_product".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterSemiBold16Black900
                                            .copyWith()),
                                    Padding(
                                        padding: getPadding(top: 1, bottom: 2),
                                        child: Text("lbl_see_all".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular12Cyan300
                                                .copyWith()))
                                  ]))),
                      Container(
                          height: getVerticalSize(192.00),
                          width: getHorizontalSize(392.00),
                          child: Obx(() => ListView.builder(
                              padding: getPadding(left: 10, top: 27),
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemCount: controller
                                  .pharmacyModelObj.value.drugsItemList.length,
                              itemBuilder: (context, index) {
                                DrugsItemModel model = controller
                                    .pharmacyModelObj
                                    .value
                                    .drugsItemList[index];
                                return DrugsItemWidget(model,
                                    onTapDrugsdetail: onTapDrugsdetail);
                              }))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 10, top: 21, right: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text("lbl_product_on_sale".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterSemiBold16Black900
                                            .copyWith()),
                                    Padding(
                                        padding: getPadding(top: 3, bottom: 1),
                                        child: Text("lbl_see_all".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular12Cyan300
                                                .copyWith()))
                                  ]))),
                      Container(
                          height: getVerticalSize(199.00),
                          width: getHorizontalSize(392.00),
                          child: Obx(() => ListView.builder(
                              padding:
                                  getPadding(left: 10, top: 16, bottom: 18),
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemCount: controller
                                  .pharmacyModelObj.value.drugs1ItemList.length,
                              itemBuilder: (context, index) {
                                Drugs1ItemModel model = controller
                                    .pharmacyModelObj
                                    .value
                                    .drugs1ItemList[index];
                                return Drugs1ItemWidget(model);
                              })))
                    ]))))));
  }

  onTapDrugsdetail() {
    Get.toNamed(AppRoutes.drugDetailsScreen);
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
