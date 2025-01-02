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
              child: SvgPicture.asset(
                "assets/images/Vector.svg",
                height: 100,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Lets's dive into your account!",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      minimumSize: const Size(200, 60)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image(
                            image: AssetImage(
                          "assets/images/googe.svg",
                        )),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Continue with google",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      minimumSize: const Size(200, 60)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image(
                            image: AssetImage(
                          "assets/images/apple.svg",
                        )),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Continue with Apple",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      minimumSize: const Size(200, 60)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image(
                            image: AssetImage(
                          "assets/images/facebook.svg",
                        )),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Continue with Facebook",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      minimumSize: const Size(200, 60)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image(
                            image: AssetImage(
                          "assets/images/twitter.svg",
                        )),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Continue with twitter",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {},
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
                    onPressed: () {},
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
