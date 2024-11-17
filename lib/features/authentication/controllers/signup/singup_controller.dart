import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/data/repositories/authentication/authentication_repository.dart';
import 'package:t_store/data/repositories/user/user_repository.dart';
import 'package:t_store/features/authentication/screens/signup/email_verifiy.dart';
import 'package:t_store/features/personalization/models/user_model.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/helpers/network_manager.dart';
import 'package:t_store/utils/popups/full_screen_loader.dart';
import 'package:t_store/utils/popups/loaders.dart';

class SingupController extends GetxController {
  static SingupController get instance => Get.find();

  // Variables
  final Rx<bool> hidePassword = true.obs;
  final Rx<bool> privacyPolicay = true.obs;
  final email = TextEditingController();
  final lastname = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstname = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> singupFormKey = GlobalKey<FormState>();

  void singup() async {
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
      if (!singupFormKey.currentState!.validate()) {
        // stop Loader
        TFullScreenLoader.stopLoading();
        return;
      }

      // Privacy Policay Check
      if (!privacyPolicay.value) {
        TLoaders.warningSnackBar(
            title: 'Accept Privacy Policay',
            message:
                'In order to create Account, you must have read and accept the Privacy Policay & Terms of use');
        return;
      }

      // Register User in Firebase Authentication & Store User Data in Firebase
      final userCredential =
          await AuthenticationRepository.instance.registerWithEmailAndPassword(
        email.text.trim(),
        password.text.trim(),
      );

      // Save Authenticated User Data in Firebase FireStore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstname.text.trim(),
        lastName: lastname.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      // Remove Loader
      TFullScreenLoader.stopLoading();

      // Show Success Message
      TLoaders.successSnackBar(
        title: 'Congratulations',
        message: 'Your Account has benn created! Verifiy email to continue',
      );

      // Move To verifiy Email Screen
      Get.to(
        () => EmailVerifiyScreen(
          email: email.text.trim(),
        ),
      );
    } catch (e) {
      // Remove Loader
      TFullScreenLoader.stopLoading();

      // Show Some Generic Error to the user
      TLoaders.errorSnackBar(title: 'oh Snap!', message: e.toString());
    }
  }
}
