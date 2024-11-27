import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/data/repositories/authentication/authentication_repository.dart';
import 'package:t_store/features/personalization/controllers/user_controller.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/helpers/network_manager.dart';
import 'package:t_store/utils/popups/full_screen_loader.dart';
import 'package:t_store/utils/popups/loaders.dart';

class LoginController extends GetxController {
  // varibales
  final rememberMe = false.obs;
  final hidePassword = false.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final userController = Get.put(UserController());

  // @override
  // void onInit() {
  //   email.text = localStorage.read('REMEMBER_ME_EMAIL');
  //   password.text = localStorage.read('REMEMBER_ME_PASSWORD');
  //   super.onInit();
  // }

  /// -- Email and Password SignIn
  void emailAndPasswordSignIn() async {
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
      if (!loginFormKey.currentState!.validate()) {
        // stop Loader
        TFullScreenLoader.stopLoading();
        return;
      }

      // Save Data if  rememberMe Checked
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      // login User using email and password Authentication
      // final userCredential =
      await AuthenticationRepository.instance.loginWithEmailAndPassword(
        email.text.trim(),
        password.text.trim(),
      );

      // Remove Loader
      TFullScreenLoader.stopLoading();

      // Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      // Remove Loader
      TFullScreenLoader.stopLoading();

      // Show Some Generic Error to the user
      TLoaders.errorSnackBar(title: 'oh Snap!', message: e.toString());
    }
  }

  /// -- Goole SignIn Authentication
  Future<void> googleSignIn() async {
    try {
      // start loading
      TFullScreenLoader.openLoadingDialog(
          'Loggin you in...', AppImageStrings.banner1);

      // check Internet Connectivity
      final isconnected = await NetworkManager.instance.isConnected();
      if (!isconnected) {
        // stop Loader
        TFullScreenLoader.stopLoading();
        return;
      }

      // Google Authentication
      final userCredentials =
          await AuthenticationRepository.instance.signInWithGoogle();

      // Save USer Record
      await userController.saveUserRecord(userCredentials);

      // Remove Loader
      TFullScreenLoader.stopLoading();

      // Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      // Remove Loader
      TFullScreenLoader.stopLoading();

      // Show Some Generic Error to the user
      TLoaders.errorSnackBar(title: 'oh Snap!', message: e.toString());
    }
  }
}