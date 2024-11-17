import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/controllers/signup/singup_controller.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/validators/validation.dart';

class SingupForm extends StatelessWidget {
  const SingupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SingupController());
    return Form(
      key: controller.singupFormKey,
      child: Column(
        children: [
          //First & Last name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstname,
                  validator: (value) => AppValidator.validateEmptyText(
                    'first name',
                    value,
                  ),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: AppTextStrings.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: AppSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  controller: controller.lastname,
                  validator: (value) => AppValidator.validateEmptyText(
                    'last name',
                    value,
                  ),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: AppTextStrings.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),
          // username
          TextFormField(
            controller: controller.username,
            validator: (value) => AppValidator.validateEmptyText(
              'user name',
              value,
            ),
            expands: false,
            decoration: const InputDecoration(
              labelText: AppTextStrings.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),

          //Email
          TextFormField(
            controller: controller.email,
            validator: (value) => AppValidator.validateEmail(
              value,
            ),
            expands: false,
            decoration: const InputDecoration(
              labelText: AppTextStrings.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),

          //Phone Number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => AppValidator.validatePhoneNumber(
              value,
            ),
            expands: false,
            decoration: const InputDecoration(
              labelText: AppTextStrings.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),

          //Password
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => AppValidator.validatePassword(
                value,
              ),
              obscureText: controller.hidePassword.value,
              expands: false,
              decoration: InputDecoration(
                labelText: AppTextStrings.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value =
                      !controller.hidePassword.value,
                  icon: Icon(
                    controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwSections,
          ),

          //Terms&Conditions Checkbox
          const TermsConditionsCheckBox(),
          const SizedBox(
            height: AppSizes.spaceBtwSections,
          ),

          //Sing up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.singup(),
              child: const Text(
                AppTextStrings.createAccount,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
