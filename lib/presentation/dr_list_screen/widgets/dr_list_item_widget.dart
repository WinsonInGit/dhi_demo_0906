import '../controller/dr_list_controller.dart';
import '../models/dr_list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:winsoningit_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class DrListItemWidget extends StatelessWidget {
  DrListItemWidget(this.drListItemModelObj, {this.onTapDoctordetail});

  DrListItemModel drListItemModelObj;

  var controller = Get.find<DrListController>();

  VoidCallback? onTapDoctordetail;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapDoctordetail!();
      },
      child: Container(
        margin: getMargin(
          top: 8.0,
          bottom: 8.0,
        ),
        decoration: AppDecoration.outlineBluegray50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
                left: 8,
                top: 7,
                bottom: 7,
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgRectangle541111X111,
                height: getSize(
                  111.00,
                ),
                width: getSize(
                  111.00,
                ),
              ),
            ),
            Container(
              margin: getMargin(
                left: 18,
                top: 17,
                right: 31,
                bottom: 12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "msg_dr_marcus_hori".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterSemiBold18.copyWith(),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 5,
                      right: 10,
                    ),
                    child: Text(
                      "lbl_chardiologist".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium12.copyWith(),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 4,
                      top: 19,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 2,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgStar,
                            height: getSize(
                              10.00,
                            ),
                            width: getSize(
                              10.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 5,
                            top: 1,
                          ),
                          child: Text(
                            "lbl_4_7".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium12Cyan300.copyWith(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 1,
                      top: 10,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 2,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgLocation10X9,
                            height: getVerticalSize(
                              10.00,
                            ),
                            width: getHorizontalSize(
                              9.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 4,
                            top: 1,
                          ),
                          child: Text(
                            "lbl_800m_away".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium12.copyWith(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
