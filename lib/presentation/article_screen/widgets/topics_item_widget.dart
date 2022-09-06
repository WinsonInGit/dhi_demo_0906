import '../controller/article_controller.dart';
import '../models/topics_item_model.dart';
import 'package:flutter/material.dart';
import 'package:winsoningit_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class TopicsItemWidget extends StatelessWidget {
  TopicsItemWidget(this.topicsItemModelObj);

  TopicsItemModel topicsItemModelObj;

  var controller = Get.find<ArticleController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          margin: getMargin(
            right: 5,
          ),
          padding: getPadding(
            left: 27,
            top: 20,
            right: 28,
            bottom: 15,
          ),
          decoration: AppDecoration.txtFillCyan300.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder10,
          ),
          child: Text(
            "lbl_covid_19".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterSemiBold14WhiteA700.copyWith(),
          ),
        ),
      ),
    );
  }
}
