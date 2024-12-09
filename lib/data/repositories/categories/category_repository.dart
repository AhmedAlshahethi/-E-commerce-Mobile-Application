import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:t_store/features/shop/models/category_model.dart';
import 'package:t_store/utils/exceptions/firebase_exceptions.dart';
import 'package:t_store/utils/exceptions/platform_exceptions.dart';

class CategoryRepository extends GetxController {
  static CategoryRepository get instance => Get.find();

  // vaibales
  final _db = FirebaseFirestore.instance;

  // Get All Categories
  Future<List<CategoryModel>> getAllCategories() async {
    try {
      final snapShot = await _db.collection('Categories').get();
      final list = snapShot.docs
          .map((document) => CategoryModel.fromSnapShot(document))
          .toList();

      return list;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      // Catch any other exception
      throw 'Something went wrong';
    }
  }

  // Get All Sub Categories

  // Upload Categoires to the Cloud FireStore
}
