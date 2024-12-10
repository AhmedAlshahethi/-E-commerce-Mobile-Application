import 'package:get/get.dart';
import 'package:t_store/data/repositories/banners/banner_repository.dart';
import 'package:t_store/features/shop/models/banner_model.dart';
import 'package:t_store/utils/popups/loaders.dart';

class BannerController extends GetxController {
  static BannerController get instance => Get.find();

  // varibales
  final carousalCurrentIndex = 0.obs;
  final isLoading = false.obs;
  final _bannerRepositry = Get.put(BannerRepository());
  RxList<BannerModel> allBanners = <BannerModel>[].obs;

  @override
  void onInit() {
    fetchBanners();
    super.onInit();
  }

  //update page navigation dots
  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }

  // fetch banners
  Future<void> fetchBanners() async {
    try {
      // show Loader while loading banners
      isLoading.value = true;
      // fetch banners from data source(Api,Firebase,etc)
      final banners = await _bannerRepositry.fetchBanners();
      // update the banners list
      allBanners.assignAll(banners);
    } catch (e) {
      TLoaders.errorSnackBar(title: 'oh Snap!', message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
