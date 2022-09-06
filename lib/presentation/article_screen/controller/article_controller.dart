import '/core/app_export.dart';
import 'package:winsoningit_s_application3/presentation/article_screen/models/article_model.dart';
import 'package:flutter/material.dart';

class ArticleController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ArticleModel> articleModelObj = ArticleModel().obs;

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
