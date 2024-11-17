import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/controllers/signup/singup_controller.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TermsConditionsCheckBox extends StatelessWidget {
  const TermsConditionsCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    final controller = SingupController.instance;
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(
            () => Checkbox(
              value: controller.privacyPolicay.value,
              onChanged: (value) => controller.privacyPolicay.value =
                  !controller.privacyPolicay.value,
            ),
          ),
        ),
        const SizedBox(
          width: AppSizes.spaceBtwItems,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${AppTextStrings.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${AppTextStrings.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? AppColors.white : AppColors.primary,
                      color: dark ? AppColors.white : AppColors.primary,
                    ),
              ),
              TextSpan(
                text: '${AppTextStrings.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: AppTextStrings.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? AppColors.white : AppColors.primary,
                      color: dark ? AppColors.white : AppColors.primary,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
