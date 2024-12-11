import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:t_store/features/shop/models/brand_model.dart';
import 'package:t_store/features/shop/models/product_attribute_model.dart';
import 'package:t_store/features/shop/models/product_variation_model.dart';

class ProductModel {
  final String id;
  final int stock;
  final String? sku;
  final double price;
  final String title;
  final DateTime? date;
  final double salePrice;
  final String thumbnail;
  final bool? isFeatured;
  final BrandModel? brand;
  final String? description;
  final String? categoryId;
  final List<String>? images;
  final String productType;
  final List<ProductAttributeModel>? productAttributes;
  final List<ProductVariationModel>? productVariations;

  ProductModel({
    required this.id,
    required this.stock,
    required this.productType,
    required this.thumbnail,
    required this.price,
    required this.title,
    this.sku,
    this.date,
    this.isFeatured,
    this.brand,
    this.productAttributes,
    this.productVariations,
    this.images,
    this.description,
    this.categoryId,
    this.salePrice = 0.0,
  });

  // Empty Helper Functions
  static ProductModel empty() => ProductModel(
        id: '',
        stock: 0,
        productType: '',
        thumbnail: '',
        price: 0.0,
        title: '',
      );

  // convert model to json structure to store data in firebase
  Map<String, dynamic> toJson() {
    return {
      // 'Id': id,
      'Sku': sku,
      'ProductType': productType,
      'Thumbnail': thumbnail,
      'Price': price,
      'SalePrice': salePrice,
      'Stock': stock,
      'ProductAttributes': productAttributes != null
          ? productAttributes!
              .map(
                (e) => e.toJson(),
              )
              .toList()
          : [],
      'ProductVariations': productVariations != null
          ? productVariations!
              .map(
                (e) => e.toJson(),
              )
              .toList()
          : [],
      'Images': images ?? [],
      'Description': description,
      'CategoryId': categoryId,
      'Brand': brand!.toJson(),
      'IsFeatured': isFeatured,
      'Date': date,
      'Title': title,
    };
  }

  // Map json oriented document snapShot from firebase to UseModel
  factory ProductModel.fromSnapShot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() == null) return ProductModel.empty();
    final data = document.data()!;

    return ProductModel(
      id: document.id,
      sku: data['Sku'],
      stock: data['Stock'] ?? 0,
      isFeatured: data['IsFeatured'] ?? false,
      productType: data['ProductType'] ?? '',
      thumbnail: data['Thumbnail'] ?? '',
      price: double.parse((data['Price'] ?? 0.0).toString()),
      salePrice: double.parse((data['SalePrice'] ?? 0.0).toString()),
      title: data['Title'],
      categoryId: data['CategoryId'] ?? '',
      description: data['Description'] ?? '',
      brand: BrandModel.fromJson(data['Brand']),
      images: data['Images'] != null ? List<String>.from(data['Images']) : [],
      productAttributes: (data['ProductAttributes'] as List<dynamic>)
          .map(
            (e) => ProductAttributeModel.fromJson(e),
          )
          .toList(),
      productVariations: (data['ProductVariations'] as List<dynamic>)
          .map((e) => ProductVariationModel.fromJson(e))
          .toList(),
    );
  }

  factory ProductModel.fromQuerySnapShot(
      QueryDocumentSnapshot<Object?> document) {
    if (document.data() == null) return ProductModel.empty();
    final data = document.data() as Map<String, dynamic>;

    return ProductModel(
      id: document.id,
      sku: data['Sku'],
      stock: data['Stock'] ?? 0,
      isFeatured: data['IsFeatured'] ?? false,
      productType: data['ProductType'] ?? '',
      thumbnail: data['Thumbnail'] ?? '',
      price: double.parse((data['Price'] ?? 0.0).toString()),
      salePrice: double.parse((data['SalePrice'] ?? 0.0).toString()),
      title: data['Title'],
      categoryId: data['CategoryId'] ?? '',
      description: data['Description'] ?? '',
      brand: BrandModel.fromJson(data['Brand']),
      images: data['Images'] != null ? List<String>.from(data['Images']) : [],
      productAttributes: (data['ProductAttributes'] as List<dynamic>)
          .map(
            (e) => ProductAttributeModel.fromJson(e),
          )
          .toList(),
      productVariations: (data['ProductVariations'] as List<dynamic>)
          .map((e) => ProductVariationModel.fromJson(e))
          .toList(),
    );
  }
}
