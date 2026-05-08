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
}