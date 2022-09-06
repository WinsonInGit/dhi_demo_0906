import '../controller/schedule_controller.dart';
import '../models/schedule_item_model.dart';
import 'package:flutter/material.dart';
import 'package:winsoningit_s_application3/core/app_export.dart';
import 'package:winsoningit_s_application3/widgets/custom_button.dart';

// ignore: must_be_immutable
class ScheduleItemWidget extends StatelessWidget {
  ScheduleItemWidget(this.scheduleItemModelObj);

  ScheduleItemModel scheduleItemModelObj;

  var controller = Get.find<ScheduleController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 10.0,
        bottom: 10.0,
      ),
      decoration: AppDecoration.outlineBluegray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 15,
                top: 17,
                right: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: getMargin(
                      top: 1,
                      bottom: 7,
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
                      ],
                    ),
                  ),
                  CommonImageView(
                    imagePath: ImageConstant.imgDrugthumbnail50X50,
                    height: getSize(
                      46.00,
                    ),
                    width: getSize(
                      46.00,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 15,
              top: 25,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 1,
                    bottom: 1,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgCalendar12X11,
                    height: getVerticalSize(
                      12.00,
                    ),
                    width: getHorizontalSize(
                      11.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 6,
                  ),
                  child: Text(
                    "lbl_26_06_2021".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium12Gray700.copyWith(),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 1,
                    bottom: 1,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgClock,
                    height: getSize(
                      11.00,
                    ),
                    width: getSize(
                      11.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 6,
                    top: 3,
                  ),
                  child: Text(
                    "lbl_10_30_am".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium12Gray700.copyWith(),
                  ),
                ),
                Container(
                  height: getSize(
                    6.00,
                  ),
                  width: getSize(
                    6.00,
                  ),
                  margin: getMargin(
                    left: 12,
                    top: 5,
                    bottom: 4,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.green300,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        3.00,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 5,
                  ),
                  child: Text(
                    "lbl_confirmed".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium12Gray700.copyWith(),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 15,
                top: 14,
                right: 15,
                bottom: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomButton(
                    width: 145,
                    text: "lbl_cancel".tr,
                    variant: ButtonVariant.FillBluegray50,
                    fontStyle: ButtonFontStyle.InterSemiBold14Gray700,
                  ),
                  Container(
                    padding: getPadding(
                      left: 30,
                      top: 16,
                      right: 30,
                      bottom: 16,
                    ),
                    decoration: AppDecoration.txtFillCyan30012.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder10,
                    ),
                    child: Text(
                      "lbl_reschedule".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold14WhiteA700.copyWith(
                        height: 1.00,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
