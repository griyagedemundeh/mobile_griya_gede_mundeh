import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/storage_key.dart';
import 'package:path_provider/path_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AppConfig {
  SupabaseClient supabase() {
    final supabase = Supabase.instance.client;
    return supabase;
  }

  Future hiveConfiguration() async {
    try {
      final appDocumentDirectory = await getApplicationDocumentsDirectory();
      Hive.init(appDocumentDirectory.path);
    } catch (e) {
      log(e.toString());
    }
    await Hive.openBox(StorageKey.authDB);
  }
}
