class SignUpData {
  String name;
  String email;
  String phoneNumber;
  String gender;
  bool termsAccepted;

  SignUpData({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.gender,
    required this.termsAccepted,
  });
  SignUpData copyWith({
    String? name,
    String? email,
    String? phoneNumber,
    String? gender,
    bool? termsAccepted,
  }) {
    return SignUpData(
      name: name ?? this.name,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      gender: gender ?? this.gender,
      termsAccepted: termsAccepted ?? this.termsAccepted,
    );
  }

  
}
