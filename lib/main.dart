import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/app.dart';
import 'package:t_store/data/repositories/authentication/authentication_repository.dart';
import 'package:t_store/firebase_options.dart';

Future<void> main() async {
  /// -- Widgets Bindings
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  /// -- Get Local Storge
  await GetStorage.init();

  /// -- Awit Splash until other items Load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Initialize Firebase & Authentication Repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then(
    (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );
  runApp(const TStoreApp());
}