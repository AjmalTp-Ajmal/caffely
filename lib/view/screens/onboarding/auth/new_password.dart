import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Newpassword extends HookWidget {
  const Newpassword({super.key});

  @override
  Widget build(BuildContext context) {
    final isobscure = useState(true);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.keyboard_backspace_outlined)),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    Text("Create new Password", style: context.typography.h200),
                    Text("🔒", style: context.typography.h200)
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
                    Text(
                        "Create your new password.if you forget it,\n then you have to do forget password",
                        style: context.typography.body),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    Text("New Password",
                        style: context.typography.textfieldbody),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
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
                            hintText: "New Password",
                            hintStyle: context.typography.body,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    Text("Confirm new Password",
                        style: context.typography.textfieldbody),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
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
                            hintText: "Confirm New Password",
                            hintStyle: context.typography.body,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
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
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                          child: Container(
                        height: 400,
                        padding: const EdgeInsets.all(8.0),
                        child: const Column(
                          children: [
                            SizedBox(
                              height: 200,
                              width: 200,
                              child: Image(
                                  image: AssetImage("assets/images/lock.png")),
                            ),
                            Text(
                              "Reset Password",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 175, 102),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Sucessfull",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 175, 102),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("Please wait......"),
                            Text("you will be directed to the homepage"),
                            SizedBox(
                              height: 20,
                            ),
                            CircularProgressIndicator(
                              color: Color.fromARGB(255, 0, 175, 102),
                              value: 1.0,
                            )
                          ],
                        ),
                      ));
                    },
                  );
                },
                child: const Text(
                  " Continue",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      )),
    );
  }
}
