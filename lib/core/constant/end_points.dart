import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiEndPoints {
  static final String BASE_URL = dotenv.env['BASE_URL'].toString();

  static const String register = "auth/sign-up";
  static const String login = "auth/sign-in";

  static const String ceremony = "member/ceremony";
}
