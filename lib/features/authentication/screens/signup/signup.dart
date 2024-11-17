import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/login_singup/form_divider.dart';
import 'package:t_store/common/widgets/login_singup/social_buttons.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/singup_form.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                AppTextStrings.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              //Form
              const SingupForm(),

              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              //Divider
              const FormDivider(
                textDivider: AppTextStrings.orSignUpWith,
              ),

              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              //Social Buttons
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
