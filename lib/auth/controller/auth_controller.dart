import 'dart:developer';

import 'package:caffely/auth/services/auth_services.dart';
import 'package:caffely/utilis/snackbar_utilis.dart';

class AuthController {
  Future<void> signup(String email, String password) async {
    try {
      await AuthServices.signup(email, password);
      SnackbarUtilis.showmessage("signup sucess");
    } catch (e) {
    
      SnackbarUtilis.showmessage(e.toString());
    }
  }
}

class Validate {
  String? emailvalidate(String? value) {
    if (value == null || value.isEmpty) {
      return 'email is require';
    }

    final emailregex = RegExp(
        (r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"));

    if (!emailregex.hasMatch(value)) {
      return 'Invalid email format';
    }

    return null;
  }

  String? passwordValidate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'password must be 6 letters';
    }
    return null;
  }
}
