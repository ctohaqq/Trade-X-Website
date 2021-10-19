class ProductEnteryModel {
  final String email;

  ProductEnteryModel({required this.email});

  Map<String, dynamic> toMap() {
    return {'email': email};
  }
}
