import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/data/repositories/authentication/authentication_repository.dart';
import 'package:t_store/features/authentication/screens/password_configration/reset_password.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/helpers/network_manager.dart';
import 'package:t_store/utils/popups/full_screen_loader.dart';
import 'package:t_store/utils/popups/loaders.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  // variables
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  // send Reset Password Email
  sendPasswordResetEmail() async {
    try {
      // start loading
      TFullScreenLoader.openLoadingDialog(
          'We are processing your information...', AppImageStrings.banner1);

      // check Internet Connectivity
      final isconnected = await NetworkManager.instance.isConnected();
      if (!isconnected) {
        // stop Loader
        TFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!forgetPasswordFormKey.currentState!.validate()) {
        // stop Loader
        TFullScreenLoader.stopLoading();
        return;
      }

      // send Email to Reset Password
      await AuthenticationRepository.instance
          .sendPasswordResetEmail(email.text.trim());

      // Remove Loader
      TFullScreenLoader.stopLoading();

      // show Success Screen
      TLoaders.successSnackBar(
          title: 'Email Sent',
          message: 'Email link sent to Reset your password'.tr);

      // Redirect
      Get.to(() => ResetPassword(email: email.text.trim()));
    } catch (e) {
      // Remove Loader
      TFullScreenLoader.stopLoading();

      TLoaders.errorSnackBar(title: 'oh Snap', message: e.toString());
    }
  }

  resenedPasswordResetEmail(String email) async {
    try {
      // start loading
      TFullScreenLoader.openLoadingDialog(
          'We are processing your information...', AppImageStrings.banner1);

      // check Internet Connectivity
      final isconnected = await NetworkManager.instance.isConnected();
      if (!isconnected) {
        // stop Loader
        TFullScreenLoader.stopLoading();
        return;
      }

      // send Email to Reset Password
      await AuthenticationRepository.instance.sendPasswordResetEmail(email);

      // Remove Loader
      TFullScreenLoader.stopLoading();

      // show Success Screen
      TLoaders.successSnackBar(
          title: 'Email Sent',
          message: 'Email link sent to Reset your password'.tr);
    } catch (e) {
      // Remove Loader
      TFullScreenLoader.stopLoading();

      TLoaders.errorSnackBar(title: 'oh Snap', message: e.toString());
    }
  }
}
