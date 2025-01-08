import 'package:caffely/view/screens/onboarding/auth/sign_up_form.dart';
import 'package:caffely/view/screens/onboarding/auth/signin_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends HookWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: SvgPicture.asset("assets/images/Vector (1).svg"),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Lets's dive into your account!",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      minimumSize: const Size(200, 60)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 40,
                          width: 40,
                          child: SvgPicture.asset("assets/images/googe.svg")),
                      const SizedBox(
                        width: 50,
                      ),
                      const Text(
                        "Continue with google",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      minimumSize: const Size(200, 60)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 40,
                          width: 40,
                          child: SvgPicture.asset("assets/images/apple.svg")),
                      const SizedBox(
                        width: 50,
                      ),
                      const Text(
                        "Continue with Apple",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      minimumSize: const Size(200, 60)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 40,
                          width: 40,
                          child:
                              SvgPicture.asset("assets/images/facebook.svg")),
                      const SizedBox(
                        width: 50,
                      ),
                      const Text(
                        "Continue with Facebook",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      minimumSize: const Size(200, 60)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 40,
                          width: 40,
                          child: SvgPicture.asset("assets/images/twitter.svg")),
                      const SizedBox(
                        width: 50,
                      ),
                      const Text(
                        "Continue with twitter",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SigninForm(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(500, 60),
                      backgroundColor: const Color.fromARGB(255, 0, 175, 102)),
                  child: const Text(
                    "Sign in with password",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Dont't have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpForm(),
                          ));
                    },
                    child: const Text(
                      "Sign'up",
                      style: TextStyle(color: Color.fromARGB(255, 0, 175, 102)),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
