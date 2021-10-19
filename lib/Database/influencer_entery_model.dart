class InfluencerEnteryModel {
  final String fullName;
  final String userName;
  final String email;
  final String creatorType;
  final String agency;
  final String socialMedia;

  InfluencerEnteryModel({
    required this.fullName,
    required this.userName,
    required this.email,
    required this.creatorType,
    required this.agency,
    required this.socialMedia,
  });

  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
      'userName': userName,
      'email': email,
      'creatorType': creatorType,
      'agency': agency,
      'socialMedia': socialMedia,
    };
  }
}
