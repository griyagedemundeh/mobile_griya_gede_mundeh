import 'package:form_validator/form_validator.dart';

extension CustomValidationBuilder on ValidationBuilder {
  passwordConfirm({required String password}) => add((value) {
        if (value != password) {
          return 'Konfirmasi kata sandi tidak sesuai dengan Kata Sandi!';
        }
        return null;
      });
  password() => regExp(
          RegExp(r"^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[^A-Za-z0-9]).{8,}$"),
          'Kata sandi harus mengandung huruf kapital, huruf kecil, angka dan karakter spesial!')
      .minLength(8, 'Kata sandi masih kurang dari 8 karakter');
}
