import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppValues {
  static final String SUPABASE_URL = dotenv.env['SUPABASE_URL'].toString();
  static final String SUPABASE_ANONKEY =
      dotenv.env['SUPABASE_ANONKEY'].toString();
}
