import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class PrimaryToast {
  static success({required String message}) {
    toastification.show(
      title: Text(
        message,
        maxLines: 5,
      ),
      primaryColor: Colors.green,
      autoCloseDuration: const Duration(seconds: 3),
    );
  }

  static error({required String message}) {
    toastification.show(
      title: Text(
        message,
        maxLines: 5,
      ),
      primaryColor: Colors.red,
      autoCloseDuration: const Duration(seconds: 3),
    );
  }
}
