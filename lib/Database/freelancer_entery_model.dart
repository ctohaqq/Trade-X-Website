class FreelancerEnteryModel {
  final String fullName;
  final String email;
  final String gender;
  final DateTime dateOfBirth;
  final String industry;
  final String about;

  FreelancerEnteryModel({
    required this.fullName,
    required this.email,
    required this.gender,
    required this.dateOfBirth,
    required this.industry,
    required this.about,
  });

  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
      'email': email,
      'gender': gender,
      'dateOfBirth': dateOfBirth,
      'industry': industry,
      'about': about,
    };
  }
}
