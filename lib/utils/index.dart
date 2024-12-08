import 'package:form_validator/form_validator.dart';
import 'package:intl/intl.dart';

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

String formatCurrency(int amount) {
  final formatCurrency = NumberFormat.currency(
    locale: 'id_ID', // Indonesian locale
    symbol: 'Rp ', // Symbol for Rupiah
    decimalDigits: 0, // No decimal digits
  );

  return formatCurrency.format(amount); // Format the amount
}

String formatDate(DateTime? date) {
  if (date == null) return '';
  return DateFormat('EEE, d MMMM yyyy - hh.mm a', 'id_ID').format(date);
}

String formatDateWithUserTimeZone(String isoDate) {
  // Parse the ISO 8601 date
  final dateTime = DateTime.parse(isoDate);

  // Format date and time
  final dateFormatter = DateFormat("d MMMM yyyy", "id"); // Indonesian locale
  final timeFormatter = DateFormat("HH:mm");

  // Combine date and time
  final formattedDate = dateFormatter.format(dateTime);
  final formattedTime = timeFormatter.format(dateTime.toLocal());

  return "$formattedDate - $formattedTime ${dateTime.toLocal().timeZoneName}";
}

String formatDateOnly(String isoDate) {
  // Parse the ISO 8601 date
  final dateTime = DateTime.parse(isoDate);

  // Format date and time
  final dateFormatter = DateFormat("d MMMM yyyy", "id"); // Indonesian locale

  // Combine date and time
  final formattedDate = dateFormatter.format(dateTime);

  return formattedDate;
}

String formatTimeOnly(String isoDate) {
  // Parse the ISO 8601 date
  final dateTime = DateTime.parse(isoDate);

  // Format date and time
  final timeFormatter = DateFormat("HH:mm");

  // Combine date and time
  final formattedTime = timeFormatter.format(dateTime.toLocal());

  return "$formattedTime ${dateTime.toLocal().timeZoneName}";
}
