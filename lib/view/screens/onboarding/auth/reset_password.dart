import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:caffely/view/screens/onboarding/auth/otp_code_verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ResetPassword extends HookWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final resetemail = TextEditingController();
    String maskemail = '';
    void navigatepage(BuildContext ctx) {
      // maskemail = maskemail1(resetemail.text);
      Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
        return OtpCodeVerification(emailAddress: resetemail.text);
      }));
    }

    // String _maskEmail(String email) {
    //   if (email.isEmpty) {
    //     return '';
    //   }

    //   return '${email.substring(0, 4).replaceAll(RegExp(r'.'), '*')}${email.substring(4)}';
    // }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_outlined)),
      ),
      body: SafeArea(
          child: Column(children: [
        Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  Text("Reset your Password", style: context.typography.h200),
                  Text(
                    "🔑",
                    style: context.typography.h200,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Please enter your email and we will send an\notp code to next step to reset your\npassword",
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  Text("Email", style: context.typography.textfieldbody),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 60,
                  width: 380,
                  decoration: BoxDecoration(
                      color: context.colors.subtextclr,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: context.colors.subtxtclrbold,
                      ),
                      const SizedBox(
                          width: 10), // Add spacing between icon and TextField
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: context.typography.body,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 70,
          padding: const EdgeInsets.all(8),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(500, 50),
                  backgroundColor: const Color.fromARGB(255, 0, 175, 102)),
              onPressed: () {
                navigatepage(context);
              },
              child: Text("Sign in", style: context.typography.buttontext)),
        ),
      ])),
    );
  }
}
