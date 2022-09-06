import '/core/app_export.dart';
import 'package:winsoningit_s_application3/presentation/dashboard_screen/models/dashboard_model.dart';
import 'package:flutter/material.dart';

class DashboardController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<DashboardModel> dashboardModelObj = DashboardModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
