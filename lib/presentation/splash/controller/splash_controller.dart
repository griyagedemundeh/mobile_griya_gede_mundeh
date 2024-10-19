import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/response/auth.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository_implementor.dart';

class SplashController extends ChangeNotifier {
  final AuthRepository authRepository;

  SplashController({required this.authRepository});

  Auth? getUser() {
    return authRepository.getUser();
  }
}
