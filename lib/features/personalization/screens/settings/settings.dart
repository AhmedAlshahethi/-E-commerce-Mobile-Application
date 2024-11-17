import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/t_appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/list_tiles/settings_menu_list_tile.dart';
import 'package:t_store/common/widgets/list_tiles/user_profile_list_tile.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/data/repositories/authentication/authentication_repository.dart';
import 'package:t_store/features/personalization/screens/addresses/user_addresses.dart';
import 'package:t_store/features/shop/screens/cart/cart.dart';
import 'package:t_store/features/shop/screens/orders/orders.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthenticationRepository());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppbar(
                    title: Text(
                      'Account',
                      style: Theme.of(context).textTheme.headlineMedium!.apply(
                            color: AppColors.white,
                          ),
                    ),
                  ),
                  //User Profile card
                  const UserProfileListTile(),

                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),
            //Body

            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  // Account Settings
                  const SectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  SettingsMenuListTile(
                    title: 'My Address',
                    icon: Iconsax.safe_home,
                    subtitle: 'set shopping delivery address',
                    onTap: () => Get.to(() => const UserAddressesScreen()),
                  ),
                  SettingsMenuListTile(
                    title: 'My Cart',
                    icon: Iconsax.shopping_cart,
                    subtitle: 'Add, remove products and move to checkout',
                    onTap: () => Get.to(() => const CartScreen()),
                  ),
                  SettingsMenuListTile(
                    title: 'My Orders',
                    icon: Iconsax.bag_tick,
                    subtitle: 'In-progress and Completed Orders',
                    onTap: () => Get.to(() => const OrdersScreen()),
                  ),
                  SettingsMenuListTile(
                    title: 'Bank Account',
                    icon: Iconsax.bank,
                    subtitle: 'Withdraw balance to registered bank account',
                    onTap: () {},
                  ),
                  SettingsMenuListTile(
                    title: 'My Coupons',
                    icon: Iconsax.discount_shape,
                    subtitle: 'List of all the discounted coupons',
                    onTap: () {},
                  ),
                  SettingsMenuListTile(
                    title: 'Notifications',
                    icon: Iconsax.notification,
                    subtitle: 'Set and kind of notification message',
                    onTap: () {},
                  ),
                  SettingsMenuListTile(
                    title: 'Account Privacy',
                    icon: Iconsax.security_card,
                    subtitle: 'Manage data usage and connected accounts',
                    onTap: () {},
                  ),

                  // App Settings
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  const SectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  SettingsMenuListTile(
                    title: 'Load Data',
                    icon: Iconsax.document_upload,
                    subtitle: 'Upload Data to your Cloud Firebase',
                    onTap: () {},
                  ),
                  SettingsMenuListTile(
                    title: 'Geolocation',
                    icon: Iconsax.document_upload,
                    subtitle: 'set recommendation based on location',
                    onTap: () {},
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  SettingsMenuListTile(
                    title: 'Safe Mode',
                    icon: Iconsax.security_user,
                    subtitle: 'Search result is safe for all ages',
                    onTap: () {},
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  SettingsMenuListTile(
                    title: 'HD Image Quality',
                    icon: Iconsax.image,
                    subtitle: 'Set image quality to be seen',
                    onTap: () {},
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),

                  //Logout Button
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () => controller.logout(),
                      child: const Text(
                        'Logout',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections * 2.5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
