class ProductAttributeModel {
  final String? name;
  final List<String>? values;

  ProductAttributeModel({
    this.name,
    this.values,
  });

  // convert model to json structure to store data in firebase
  Map<String, dynamic> toJson() {
    return {
      'Name': name,
      'Values': values,
    };
  }

  // Map json oriented document snapShot from firebase to UseModel
  factory ProductAttributeModel.fromJson(Map<String, dynamic> document) {
    final data = document;
    if (data.isEmpty) return ProductAttributeModel();
    return ProductAttributeModel(
      name: data.containsKey('Name') ? data['Name'] : '',
      values: List<String>.from(data['Values']),
    );
  }
}
