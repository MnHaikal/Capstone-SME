<<<<<<< HEAD
import 'package:get/get.dart';

class AuthProvider extends GetConnect {
  // Fungsi Login ke Server
  Future<Response> login(String email, String password) => 
      post('https://api-anda.com/login', {'email': email, 'password': password});

  // Fungsi Register ke Server
  Future<Response> register(String name, String email, String password) => 
      post('https://api-anda.com/register', {
        'name': name,
        'email': email, 
        'password': password
      });
=======
import 'package:flutter/foundation.dart';
import 'package:local_auth/local_auth.dart';

class AuthService {
  final LocalAuthentication auth = LocalAuthentication();

  Future<bool> authenticate() async {
    try {
      if (kIsWeb) return false; // web tidak support

      return await auth.authenticate(
        localizedReason: 'Scan wajah untuk login',
        options: const AuthenticationOptions(
          biometricOnly: true,
          stickyAuth: true,
          useErrorDialogs: true,
        ),
      );
    } catch (e) {
      return false;
    }
  }
>>>>>>> d333428b5d641271dd99cb762ab0435f4d814709
}