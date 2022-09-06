import '../controller/dashboard_controller.dart';
import '../models/doctor_item_model.dart';
import 'package:flutter/material.dart';
import 'package:winsoningit_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class DoctorItemWidget extends StatelessWidget {
  DoctorItemWidget(this.doctorItemModelObj);

  DoctorItemModel doctorItemModelObj;

  var controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 14,
          ),
          decoration: AppDecoration.outlineBluegray50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: getPadding(
                  left: 25,
                  top: 23,
                  right: 25,
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgDrugthumbnail,
                  height: getSize(
                    68.00,
                  ),
                  width: getSize(
                    68.00,
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  left: 8,
                  top: 18,
                  right: 7,
                  bottom: 13,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "msg_dr_marcus_hori2".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold12Gray700.copyWith(),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 3,
                        right: 10,
                      ),
                      child: Text(
                        "lbl_chardiologist".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium9Bluegray101.copyWith(),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 10,
                        right: 9,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              bottom: 1,
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
                              left: 3,
                              top: 1,
                              bottom: 1,
                            ),
                            child: Text(
                              "lbl_4_7".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium8Cyan300.copyWith(),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 23,
                              top: 2,
                            ),
                            child: Text(
                              "lbl_800m_away".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium8Bluegray101
                                  .copyWith(),
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
      ),
    );
  }
}
