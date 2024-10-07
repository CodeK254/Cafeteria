import 'package:api_class/models/food.dart';
import 'package:api_class/providers/food_provider.dart';
import 'package:get/get.dart';

class FoodController extends GetConnect{
  FoodProvider foodProvider = FoodProvider();
  // RxList<FoodCategory> foodCategoryList = <FoodCategory>[].obs;
  Future<List<FoodCategory>> getCategories() async {
    List<FoodCategory> categories = await foodProvider.fetchCategory();
    return categories;
  }
}