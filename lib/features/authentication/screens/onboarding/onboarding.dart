import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/on_boarding_dot_navigation.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/on_boarding_next_button.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/on_boarding_page.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/on_boarding_skip.dart';
import 'package:t_store/utils/constants/image_strings.dart';

import 'package:t_store/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updagePageIndicator,
            children: const [
              OnBoardingPage(
                image: AppImageStrings.onBoardingImage1,
                title: AppTextStrings.onBoardingTitle1,
                subtitle: AppTextStrings.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: AppImageStrings.onBoardingImage2,
                title: AppTextStrings.onBoardingTitle2,
                subtitle: AppTextStrings.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: AppImageStrings.onBoardingImage3,
                title: AppTextStrings.onBoardingTitle3,
                subtitle: AppTextStrings.onBoardingSubTitle3,
              ),
            ],
          ),

          //skip button

          const OnBoardingSkip(),

          // Dot Navigation Smooth pakage indicator

          const OnBoardingDotNavigation(),

          //Circle button

          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
