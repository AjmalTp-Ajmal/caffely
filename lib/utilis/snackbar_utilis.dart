import 'package:caffely/main.dart';
import 'package:flutter/material.dart';

class SnackbarUtilis {
  static void showmessage(String message) {
    MyApp.saffoldMessengerkey.currentState!
        .showSnackBar(SnackBar(content: Text(message)));
  }
}
