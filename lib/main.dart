import 'package:caffely/core/theme/dark_theme.dart';
import 'package:caffely/view/screens/actionpagemenu/coffeeshope_all.dart';
import 'package:caffely/view/screens/demo.dart';
import 'package:caffely/view/screens/home/about_coffeshope.dart';
import 'package:caffely/view/screens/home/chat_driver.dart';
import 'package:caffely/view/screens/home/checkout.dart';
import 'package:caffely/view/screens/home/choose_delivary_address.dart';
import 'package:caffely/view/screens/home/coffeeshope_details.dart';
import 'package:caffely/view/screens/home/driver_infromation.dart';
import 'package:caffely/view/screens/home/earn_points.dart';
import 'package:caffely/view/screens/home/home_fullpage.dart';
import 'package:caffely/view/screens/home/nearby_shop.dart';
import 'package:caffely/view/screens/home/notification.dart';
import 'package:caffely/view/screens/home/oder_coffee.dart';
import 'package:caffely/view/screens/home/payment_method.dart';
import 'package:caffely/view/screens/home/popular_menu.dart';

import 'package:caffely/view/screens/home/special_offers.dart';
import 'package:caffely/view/screens/home/whats_mood.dart';
import 'package:caffely/view/screens/onboarding/auth/complete_your_profile.dart';
import 'package:caffely/view/screens/onboarding/auth/new_password.dart';
import 'package:caffely/view/screens/onboarding/auth/otp_code_verification.dart';
import 'package:caffely/view/screens/onboarding/auth/reset_password.dart';
import 'package:caffely/view/screens/onboarding/auth/sign_up_form.dart';
import 'package:caffely/view/screens/onboarding/auth/signin_form.dart';
import 'package:caffely/view/screens/onboarding/light_walkthrough.dart';
import 'package:caffely/view/screens/onboarding/welcome_screen.dart';
import 'package:caffely/view/screens/orders/active_oders.dart';
import 'package:caffely/view/screens/orders/cancel_oder.dart';
import 'package:caffely/view/screens/orders/delivary_oderdetails.dart';

import 'package:caffely/view/screens/profile/favoritecoffe.dart';
import 'package:caffely/view/screens/profile/personal_info.dart';
import 'package:caffely/view/screens/profile/security_settings.dart';
import 'package:caffely/view/screens/profile/settings_notification.dart';

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
      home: const NearbyShop(),
    );
  }
}
