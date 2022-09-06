import 'package:get/get.dart';
import 'drugs_item_model.dart';
import 'drugs1_item_model.dart';

class PharmacyModel {
  RxList<DrugsItemModel> drugsItemList = RxList.filled(3, DrugsItemModel());

  RxList<Drugs1ItemModel> drugs1ItemList = RxList.filled(3, Drugs1ItemModel());
}
