import '../controller/article_controller.dart';
import '../models/trendings_item_model.dart';
import 'package:flutter/material.dart';
import 'package:winsoningit_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class TrendingsItemWidget extends StatelessWidget {
  TrendingsItemWidget(this.trendingsItemModelObj);

  TrendingsItemModel trendingsItemModelObj;

  var controller = Get.find<ArticleController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          margin: getMargin(
            right: 17,
          ),
          decoration: AppDecoration.outlineBluegray100.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: getVerticalSize(
                    87.00,
                  ),
                  width: getHorizontalSize(
                    138.00,
                  ),
                  margin: getMargin(
                    left: 8,
                    top: 9,
                    right: 7,
                  ),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    color: ColorConstant.gray400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          8.00,
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: getPadding(
                              left: 10,
                              top: 6,
                              right: 4,
                              bottom: 10,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgBookmark,
                              height: getVerticalSize(
                                12.00,
                              ),
                              width: getHorizontalSize(
                                10.00,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 13,
                  top: 13,
                  right: 13,
                ),
                child: Text(
                  "lbl_covid_19".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium9Cyan300.copyWith(),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  105.00,
                ),
                margin: getMargin(
                  left: 8,
                  top: 7,
                  right: 10,
                ),
                child: Text(
                  "msg_comparing_the".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterSemiBold12Gray700.copyWith(
                    height: 1.33,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 8,
                  top: 8,
                  right: 10,
                  bottom: 6,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "lbl_jun_12_2021".tr,
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
                        "lbl_6_min_read".tr,
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
      ),
    );
  }
}
