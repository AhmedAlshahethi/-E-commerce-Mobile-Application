import 'package:get/get.dart';
import 'package:t_store/data/repositories/categories/category_repository.dart';
import 'package:t_store/features/shop/models/category_model.dart';
import 'package:t_store/utils/popups/loaders.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();
  final isLoading = false.obs;
  final _categoryRepositry = Get.put(CategoryRepository());
  RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
  RxList<CategoryModel> featuredCategories = <CategoryModel>[].obs;

  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  /// - Load Category Data
  Future<void> fetchCategories() async {
    try {
      // show Loader while loading categories
      isLoading.value = true;
      // fetch categories from data source(Api,Firebase,etc)
      final categories = await _categoryRepositry.getAllCategories();
      // update the categories list
      allCategories.assignAll(categories);
      // filter featured categories
      featuredCategories.assignAll(categories
          .where(
            (element) => element.isFeatured && element.parentId.isEmpty,
          )
          .take(8)
          .toList());
    } catch (e) {
      TLoaders.errorSnackBar(title: 'oh Snap!', message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  /// - Load Selected Category Data
  /// - Get Category for Sub Categories Products
}
