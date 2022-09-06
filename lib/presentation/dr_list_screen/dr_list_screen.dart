import '../dr_list_screen/widgets/dr_list_item_widget.dart';
import 'controller/dr_list_controller.dart';
import 'models/dr_list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:winsoningit_s_application3/core/app_export.dart';

class DrListScreen extends GetWidget<DrListController> {
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Container(
                          width: size.width,
                          margin: getMargin(left: 21, top: 29, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapImgArrowleft();
                                    },
                                    child: Padding(
                                        padding: getPadding(top: 1, bottom: 2),
                                        child: CommonImageView(
                                            svgPath: ImageConstant
                                                .imgArrowleftGray700,
                                            height: getVerticalSize(14.00),
                                            width: getHorizontalSize(7.00)))),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl_top_doctor".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterSemiBold16
                                            .copyWith())),
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgComponent1,
                                        height: getVerticalSize(16.00),
                                        width: getHorizontalSize(4.00)))
                              ])),
                      Padding(
                          padding: getPadding(
                              left: 21, top: 42, right: 20, bottom: 131),
                          child: Obx(() => ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller
                                  .drListModelObj.value.drListItemList.length,
                              itemBuilder: (context, index) {
                                DrListItemModel model = controller
                                    .drListModelObj.value.drListItemList[index];
                                return DrListItemWidget(model,
                                    onTapDoctordetail: onTapDoctordetail);
                              })))
                    ]))))));
  }

  onTapDoctordetail() {
    Get.toNamed(AppRoutes.drDetailsScreen);
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
