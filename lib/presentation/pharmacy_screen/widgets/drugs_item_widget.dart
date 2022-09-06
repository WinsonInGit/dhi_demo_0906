import '../controller/pharmacy_controller.dart';
import '../models/drugs_item_model.dart';
import 'package:flutter/material.dart';
import 'package:winsoningit_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class DrugsItemWidget extends StatelessWidget {
  DrugsItemWidget(this.drugsItemModelObj, {this.onTapDrugsdetail});

  DrugsItemModel drugsItemModelObj;

  var controller = Get.find<PharmacyController>();

  VoidCallback? onTapDrugsdetail;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: GestureDetector(
        onTap: () {
          onTapDrugsdetail!();
        },
        child: Container(
          margin: getMargin(
            right: 21,
          ),
          decoration: AppDecoration.outlineBluegray50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: getMargin(
                  left: 8,
                  top: 25,
                  bottom: 10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: getPadding(
                          left: 10,
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgDrugthumbnail50X50,
                          height: getSize(
                            50.00,
                          ),
                          width: getSize(
                            50.00,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          top: 32,
                          right: 10,
                        ),
                        child: Text(
                          "lbl_panadol".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold12.copyWith(),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          top: 1,
                          right: 10,
                        ),
                        child: Text(
                          "lbl_20pcs".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium9.copyWith(),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          top: 8,
                          right: 10,
                        ),
                        child: Text(
                          "lbl_15_99".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold14Black900.copyWith(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 9,
                  top: 137,
                  right: 7,
                  bottom: 10,
                ),
                child: CommonImageView(
                  svgPath: ImageConstant.imgPlus,
                  height: getSize(
                    18.00,
                  ),
                  width: getSize(
                    18.00,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
