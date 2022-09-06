import 'package:get/get.dart';
import 'topics_item_model.dart';
import 'trendings_item_model.dart';
import 'listrectangle541_item_model.dart';

class ArticleModel {
  RxList<TopicsItemModel> topicsItemList = RxList.filled(3, TopicsItemModel());

  RxList<TrendingsItemModel> trendingsItemList =
      RxList.filled(2, TrendingsItemModel());

  RxList<Listrectangle541ItemModel> listrectangle541ItemList =
      RxList.filled(2, Listrectangle541ItemModel());
}
