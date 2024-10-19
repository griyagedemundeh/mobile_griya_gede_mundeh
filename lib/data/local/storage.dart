import 'dart:convert';

import 'package:hive/hive.dart';

class Storage {
  void saveData({required String key, required dynamic data}) {
    var box = Hive.box(key);
    String jsonData = jsonEncode(data);
    box.put(key, jsonData);
  }

  dynamic getData({required String key}) {
    var box = Hive.box(key);
    final data = box.get(key);

    if (data != null) {
      return jsonDecode(data);
    } else {
      return null;
    }
  }

  void deleteData({required String key}) {
    var box = Hive.box(key);
    box.delete(key);
  }

  void updateData({required String key, required dynamic data}) {
    saveData(key: key, data: data);
  }
}
