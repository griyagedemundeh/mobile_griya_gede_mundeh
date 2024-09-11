class RegisterRequest {
  final String fullName;
  final String phoneNumber;
  final String email;
  final String password;
  final String passwordConfirm;
  final String address;

  const RegisterRequest({
    required this.address,
    required this.email,
    required this.fullName,
    required this.password,
    required this.passwordConfirm,
    required this.phoneNumber,
  });
}
