import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/t_appbar.dart';
import 'package:t_store/features/personalization/screens/addresses/widgets/add_new_address.dart';
import 'package:t_store/features/personalization/screens/addresses/widgets/single_address.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class UserAddressesScreen extends StatelessWidget {
  const UserAddressesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        backgroundColor: AppColors.primary,
        child: Icon(
          Iconsax.add,
          color: AppColors.white,
        ),
      ),
      appBar: TAppbar(
        showBackArrow: true,
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              SingleAddress(
                selectedAddress: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
