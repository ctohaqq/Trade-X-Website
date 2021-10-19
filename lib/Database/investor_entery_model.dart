class InvestorEnteryModel {
  final String email;

  InvestorEnteryModel({required this.email});

  Map<String, dynamic> toMap() {
    return {'email': email};
  }
}
