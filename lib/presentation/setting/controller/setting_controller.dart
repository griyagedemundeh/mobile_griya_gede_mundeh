import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository_implementor.dart';

class SettingController extends ChangeNotifier {
  final AuthRepository authRepository;

  SettingController({required this.authRepository});

  logout() {
    authRepository.logout();
  }
}
