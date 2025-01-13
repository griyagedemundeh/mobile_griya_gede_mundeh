import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiEndPoints {
  static final String BASE_URL = dotenv.env['BASE_URL'].toString();

  static const String register = "auth/sign-up";
  static const String login = "auth/sign-in";
  static const String resendEmailVerification = "auth/resend-verification";
  static const String celStatusEmailVerification =
      "auth/cek-status-email-verification";

  static const String address = "member/address";
  static const String addAddress = "member/address/create";

  static const String ceremony = "member/ceremony";
  static const String invoice = "member/invoice";

  static const String consultation = "member/consultation";

  static const String article = "article";
  static const String member = "member";
}
