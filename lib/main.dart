import 'package:caffely/core/theme/dark_theme.dart';
import 'package:caffely/view/screens/complete_your_profile.dart';
import 'package:caffely/view/screens/home_fullpage.dart';
import 'package:caffely/view/screens/nearby_shop.dart';
import 'package:caffely/view/screens/popular_menu.dart';
import 'package:caffely/view/screens/sign_up_form.dart';
import 'package:caffely/view/screens/signup_successful.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darktheme,
      home: NearbyShop(),
    );
  }
}
