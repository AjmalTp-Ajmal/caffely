import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SignupSuccessful extends HookWidget {
  const SignupSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
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
                Text("Your all set!", style: context.typography.h200),
                Text("your coffee adventure begins",
                    style: context.typography.body)
              ],
            ),
          ),
          Container(
            height: 60,
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(500, 50),
                    backgroundColor: context.colors.buttonclr),
                onPressed: () {},
                child: Text(" Sign in", style: context.typography.buttontext)),
          ),
        ],
      ),
    );
  }
}
