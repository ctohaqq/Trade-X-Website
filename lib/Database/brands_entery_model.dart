class BrandsEnteryModel {
  final String fullName;
  final String brandName;
  final String industry;
  final String productService;
  final String brandEmail;
  final String about;

  BrandsEnteryModel({
    required this.fullName,
    required this.brandName,
    required this.industry,
    required this.productService,
    required this.brandEmail,
    required this.about,
  });

  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
      'brandName': brandName,
      'industry': industry,
      'productService': productService,
      'brandEmail': brandEmail,
      'about': about,
    };
  }
}
