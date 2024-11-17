import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/images/circular_image.dart';
import 'package:t_store/features/personalization/screens/profile/profile.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class UserProfileListTile extends StatelessWidget {
  const UserProfileListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircularImage(
        image: AppImageStrings.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Ahmed Alshahethi',
        style: Theme.of(context).textTheme.headlineSmall!.apply(
              color: AppColors.white,
            ),
      ),
      subtitle: Text(
        'ahmedalshahethi3@gmail.com',
        style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: AppColors.white,
            ),
      ),
      trailing: IconButton(
        onPressed: () => Get.to(() => const ProfileScreen()),
        icon: Icon(
          Iconsax.edit,
          color: AppColors.white,
        ),
      ),
    );
  }
}
