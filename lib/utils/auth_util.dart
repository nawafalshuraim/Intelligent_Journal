import 'dart:io';

import 'package:local_auth/local_auth.dart';
import 'package:local_auth_android/local_auth_android.dart';

class AuthUtil {
  static final LocalAuthentication _authentication = LocalAuthentication();

  //生物识别
  static Future<bool> check() async {
    return await _authentication.authenticate(
      authMessages: [
        const AndroidAuthMessages(
          biometricHint: "",
          biometricNotRecognized: "Authentication failed",
          biometricSuccess: "Authentication successful",
          cancelButton: "Cancel",
          goToSettingsButton: "Settings",
          goToSettingsDescription: "Please enable fingerprint in system settings",
          signInTitle: "Scan your fingerprint to continue",
        ),
      ],
      localizedReason: 'Security verification',
      options: AuthenticationOptions(
        useErrorDialogs: true,
        stickyAuth: true,
        sensitiveTransaction: true,
        biometricOnly: Platform.isWindows ? false : true,
      ),
    );
  }

  //判断是否有硬件
  static Future<bool> canCheckBiometrics() async {
    return await _authentication.canCheckBiometrics;
  }
}
