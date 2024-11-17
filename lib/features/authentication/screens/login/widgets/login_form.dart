import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/controllers/login/login_controller.dart';
import 'package:t_store/features/authentication/screens/password_configration/forget_password.dart';
import 'package:t_store/features/authentication/screens/signup/signup.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/validators/validation.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
        child: Column(
          children: [
            //email
            TextFormField(
              controller: controller.email,
              validator: (value) => AppValidator.validateEmail(value),
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: AppTextStrings.email,
              ),
            ),
            const SizedBox(
              height: AppSizes.spaceBtwInputFields,
            ),
            //password
            Obx(
              () => TextFormField(
                controller: controller.password,
                validator: (value) => AppValidator.validateEmptyText(
                  'Password',
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
              height: AppSizes.spaceBtwInputFields / 2,
            ),
            //Remeber me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remeber Me
                Row(
                  children: [
                    Obx(
                      () => Checkbox(
                        value: controller.rememberMe.value,
                        onChanged: (value) => controller.rememberMe.value =
                            !controller.rememberMe.value,
                      ),
                    ),
                    const Text(
                      AppTextStrings.rememberMe,
                    ),
                  ],
                ),

                // Forget Password
                TextButton(
                  onPressed: () => Get.to(
                    () => const ForgetPassword(),
                  ),
                  child: const Text(
                    AppTextStrings.forgetPassword,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ),

            //Sing In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.emailAndPasswordSignIn(),
                child: const Text(
                  AppTextStrings.signIn,
                ),
              ),
            ),

            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),

            //create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(const SignupScreen()),
                child: const Text(
                  AppTextStrings.createAccount,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
