import '../controller/dr_details_controller.dart';
import '../models/dr_details_item_model.dart';
import 'package:flutter/material.dart';
import 'package:winsoningit_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class DrDetailsItemWidget extends StatelessWidget {
  DrDetailsItemWidget(this.drDetailsItemModelObj);

  DrDetailsItemModel drDetailsItemModelObj;

  var controller = Get.find<DrDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 7.5,
        bottom: 7.5,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: getPadding(
              left: 24,
              top: 14,
              right: 23,
              bottom: 10,
            ),
            decoration: AppDecoration.txtOutlineTeal50.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder10,
            ),
            child: Text(
              "lbl_09_00_am".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterRegular12Teal50.copyWith(),
            ),
          ),
          Container(
            margin: getMargin(
              left: 13,
            ),
            padding: getPadding(
              left: 24,
              top: 14,
              right: 25,
              bottom: 10,
            ),
            decoration: AppDecoration.txtOutlineTeal100.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder10,
            ),
            child: Text(
              "lbl_10_00_am".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterRegular12Gray700.copyWith(),
            ),
          ),
          Container(
            margin: getMargin(
              left: 13,
            ),
            padding: getPadding(
              left: 24,
              top: 14,
              right: 27,
              bottom: 10,
            ),
            decoration: AppDecoration.txtOutlineTeal50.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder10,
            ),
            child: Text(
              "lbl_11_00_am".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterRegular12Teal50.copyWith(),
            ),
          ),
        ],
      ),
    );
  }
}
