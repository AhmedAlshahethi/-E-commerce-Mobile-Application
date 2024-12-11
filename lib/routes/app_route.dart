import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';
import 'package:t_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:t_store/features/authentication/screens/password_configration/forget_password.dart';
import 'package:t_store/features/authentication/screens/signup/email_verifiy.dart';
import 'package:t_store/features/authentication/screens/signup/signup.dart';
import 'package:t_store/features/personalization/screens/addresses/user_addresses.dart';
import 'package:t_store/features/personalization/screens/profile/profile.dart';
import 'package:t_store/features/personalization/screens/settings/settings.dart';
import 'package:t_store/features/shop/models/product_model.dart';
import 'package:t_store/features/shop/screens/cart/cart.dart';
import 'package:t_store/features/shop/screens/checkout/checkout.dart';
import 'package:t_store/features/shop/screens/favourite/favourite.dart';
import 'package:t_store/features/shop/screens/home/home.dart';
import 'package:t_store/features/shop/screens/orders/orders.dart';
import 'package:t_store/features/shop/screens/product_detailed/product_detailed.dart';
import 'package:t_store/features/shop/screens/product_reviews_rating/product_reviews_rating.dart';
import 'package:t_store/features/shop/screens/store/store.dart';
import 'package:t_store/features/shop/screens/sub_category/sub_category.dart';
import 'package:t_store/routes/routs.dart';

class AppRoute {
  static final pages = [
    GetPage(name: TRouts.home, page: () => const HomeScreen()),
    GetPage(name: TRouts.store, page: () => const StoreScreen()),
    GetPage(name: TRouts.favourites, page: () => const FavouriteScreen()),
    GetPage(name: TRouts.settings, page: () => const SettingsScreen()),
    GetPage(name: TRouts.subCategories, page: () => const SubCategoryScreen()),
    GetPage(
        name: TRouts.productReviews, page: () => const ProductReviewsRating()),
    GetPage(
        name: TRouts.productDetail,
        page: () => ProductDetailedScreen(productModel: ProductModel.empty())),
    GetPage(name: TRouts.order, page: () => const OrdersScreen()),
    GetPage(name: TRouts.checkout, page: () => const CheckoutScreen()),
    GetPage(name: TRouts.cart, page: () => const CartScreen()),
    GetPage(name: TRouts.userProfile, page: () => const ProfileScreen()),
    GetPage(name: TRouts.userAddress, page: () => const UserAddressesScreen()),
    GetPage(name: TRouts.verifyEmail, page: () => const EmailVerifiyScreen()),
    GetPage(name: TRouts.singup, page: () => const SignupScreen()),
    GetPage(name: TRouts.signIn, page: () => const LoginScreen()),
    GetPage(name: TRouts.forgetPassword, page: () => const ForgetPassword()),
    GetPage(name: TRouts.onBoarding, page: () => const OnBoardingScreen()),
  ];
}
