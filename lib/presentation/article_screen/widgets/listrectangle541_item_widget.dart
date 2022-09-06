import '../controller/article_controller.dart';
import '../models/listrectangle541_item_model.dart';
import 'package:flutter/material.dart';
import 'package:winsoningit_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class Listrectangle541ItemWidget extends StatelessWidget {
  Listrectangle541ItemWidget(this.listrectangle541ItemModelObj);

  Listrectangle541ItemModel listrectangle541ItemModelObj;

  var controller = Get.find<ArticleController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: getMargin(
          top: 5.0,
          bottom: 5.0,
        ),
        decoration: AppDecoration.outlineBluegray50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
                left: 5,
                top: 5,
                bottom: 6,
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgRectangle541,
                height: getSize(
                  59.00,
                ),
                width: getSize(
                  59.00,
                ),
              ),
            ),
            Container(
              margin: getMargin(
                left: 12,
                top: 11,
                bottom: 11,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      189.00,
                    ),
                    child: Text(
                      "msg_the_25_healthie".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold12Gray700.copyWith(
                        height: 1.33,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 5,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "lbl_jun_10_20212".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium9.copyWith(),
                        ),
                        Container(
                          height: getSize(
                            2.00,
                          ),
                          width: getSize(
                            2.00,
                          ),
                          margin: getMargin(
                            left: 4,
                            top: 5,
                            bottom: 4,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray500,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 4,
                          ),
                          child: Text(
                            "lbl_5min_read2".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium9Cyan300.copyWith(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 45,
                top: 13,
                right: 14,
                bottom: 44,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgBookmark12X10,
                height: getVerticalSize(
                  12.00,
                ),
                width: getHorizontalSize(
                  10.00,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
