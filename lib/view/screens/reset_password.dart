import 'package:caffely/view/screens/otp_code_verification.dart';
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
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_back_sharp)),
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 16,
              ),
              Text(
                "Reset your Password",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                "🔑",
                style: TextStyle(fontSize: 25),
              )
            ],
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
            height: 16,
          ),
          const Row(
            children: [
              SizedBox(
                width: 16,
              ),
              Text(
                "Email",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                height: 60,
                width: 380,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  controller: resetemail,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      hintText: "Email",
                      border: InputBorder.none),
                )),
          ),
          const SizedBox(
            height: 420,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(500, 50),
                  backgroundColor: const Color.fromARGB(255, 0, 175, 102)),
              onPressed: () {
                navigatepage(context);
              },
              child: const Text(
                "Sign in",
                style: TextStyle(color: Colors.white),
              )),
        ],
      )),
    );
  }
}
