class BoiEnteryModel {
  final String companyName;
  final String revenue;
  final String teamSize;
  final String productService;
  final String about;
  final String website;
  final String companyEmail;

  BoiEnteryModel(
      {required this.companyName,
      required this.revenue,
      required this.teamSize,
      required this.productService,
      required this.about,
      required this.website,
      required this.companyEmail});

  Map<String, dynamic> toMap() {
    return {
      'companyName': companyName,
      'revenue': revenue,
      'teamSize': teamSize,
      'productService': productService,
      'about': about,
      'website': website,
      'companyEmail': companyEmail,
    };
  }
}
