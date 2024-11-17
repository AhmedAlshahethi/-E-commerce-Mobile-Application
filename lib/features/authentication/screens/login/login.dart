import 'package:flutter/material.dart';
import 'package:t_store/common/styles/spacing_style.dart';
import 'package:t_store/common/widgets/login_singup/form_divider.dart';
import 'package:t_store/common/widgets/login_singup/social_buttons.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHegiht,
          child: const Column(
            children: [
              // Logo , Title & Subtitle
              LoginHeader(),

              // Form
              LoginForm(),

              // Divider
              FormDivider(
                textDivider: AppTextStrings.orSignInWith,
              ),

              SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              //Footer

              SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
