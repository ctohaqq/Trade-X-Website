class UserEnteryModel {
  final String fullName;
  final String email;
  final String gender;
  final DateTime dateOfBirth;
  final String interest;

  UserEnteryModel({
    required this.fullName,
    required this.email,
    required this.gender,
    required this.dateOfBirth,
    required this.interest,
  });

  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
      'email': email,
      'gender': gender,
      'dateOfBirth': dateOfBirth,
      'interest': interest,
    };
  }
}
