import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SignupSuccessful extends HookWidget {
  const SignupSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 250,
              width: 250,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset("assets/images/succesfull.png")),
            ),
          ),
          const Text(
            "Your all set!",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const Text(
            "your coffee adventure begins",
            style: TextStyle(fontSize: 25, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
