import 'package:caffely/core/theme/dark_theme.dart';
import 'package:caffely/view/screens/home/nearby_shop.dart';
import 'package:caffely/view/screens/home/notification.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darktheme,
      home: const Notifications(),
    );
  }
}
