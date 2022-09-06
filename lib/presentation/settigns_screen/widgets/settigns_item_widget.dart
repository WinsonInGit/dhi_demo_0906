import '../controller/settigns_controller.dart';
import '../models/settigns_item_model.dart';
import 'package:flutter/material.dart';
import 'package:winsoningit_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class SettignsItemWidget extends StatelessWidget {
  SettignsItemWidget(this.settignsItemModelObj);

  SettignsItemModel settignsItemModelObj;

  var controller = Get.find<SettignsController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          top: 2,
          right: 61,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                left: 17,
                right: 17,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgLocation24X27,
                height: getVerticalSize(
                  24.00,
                ),
                width: getHorizontalSize(
                  27.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 7,
                top: 9,
                right: 7,
              ),
              child: Text(
                "lbl_heart_rate".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterSemiBold10.copyWith(),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(
                  top: 6,
                ),
                child: Text(
                  "lbl_215bpm".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterSemiBold16WhiteA700.copyWith(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
