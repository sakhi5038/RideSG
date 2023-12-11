class SignInData {
  String email;
  String password;

  SignInData({required this.email, required this.password});
  SignInData copyWith({
    String? email,
    String? password,
  }) {
    return SignInData(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
