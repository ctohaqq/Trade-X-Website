// ignore_for_file: file_names

class GeneralUserEntery {
  final String email;

  GeneralUserEntery({required this.email});

  Map<String, dynamic> toMap() {
    return {'email': email};
  }
}
