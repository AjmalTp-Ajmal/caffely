import 'package:caffely/auth/controller/auth_controller.dart';
import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SigninForm extends HookWidget {
  const SigninForm({super.key});
  @override
  Widget build(BuildContext context) {
    final emailcontroller = TextEditingController();
    final passwordcontroller = TextEditingController();
    final ischeaked = useState(false);
    final isobscure = useState(true);
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.keyboard_backspace_outlined)),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Welcome back 👋",
                    style: context.typography.h200,
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Please enter your eamil & password to sign in",
                    style: context.typography.body,
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
                  Text(
                    "Email",
                    style: context.typography.textfieldbody,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
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
                        controller: emailcontroller,
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
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Password",
                    style: context.typography.textfieldbody,
                  ),
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
                        Icons.lock,
                        color: context.colors.subtxtclrbold,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          controller: passwordcontroller,
                          obscureText: isobscure.value,
                          decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: context.typography.body,
                              suffixIcon: IconButton(
                                icon: Icon(
                                  isobscure.value
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: context.colors.subtxtclrbold,
                                ),
                                onPressed: () {
                                  isobscure.value = !isobscure.value;
                                },
                              ),
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    value: ischeaked.value,
                    onChanged: (bool? value) => ischeaked.value = value!,
                    activeColor: context.colors.buttonclr,
                    side: BorderSide(color: context.colors.buttonclr, width: 2),
                  ),
                  Text(
                    "Remember me",
                    style: context.typography.textfieldbody,
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: Text("Forgot Password?",
                          style: context.typography.buttonsubtext)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Divider(
                  color: context.colors.subtextclr,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: context.typography.body,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text("Sign'up",
                          style: context.typography.buttonsubtext))
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Divider(
                color: context.colors.subtextclr,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(500, 50),
                        backgroundColor: context.colors.buttonclr),
                    onPressed: () {
                      AuthController().signin(
                          emailcontroller.text, passwordcontroller.text);
                      // showDialog(
                      //   context: context,
                      //   builder: (BuildContext context) {
                      //     return Dialog(
                      //         child: Container(
                      //       height: 400,
                      //       padding: const EdgeInsets.all(8.0),
                      //       child: Column(
                      //         children: [
                      //           const SizedBox(
                      //             height: 200,
                      //             width: 200,
                      //             child: Image(
                      //                 image: AssetImage(
                      //                     "assets/images/profile_dialog.png")),
                      //           ),
                      //           Text("Sign in Sucessful!",
                      //               style: context.typography.buttonsubtext),
                      //           const SizedBox(
                      //             height: 10,
                      //           ),
                      //           Text(
                      //             "Please wait......",
                      //             style: context.typography.body,
                      //           ),
                      //           Text(
                      //             "you will be directed to the homepage",
                      //             style: context.typography.body,
                      //           ),
                      //           const SizedBox(
                      //             height: 20,
                      //           ),
                      //           const CircularProgressIndicator(
                      //             color: Color.fromARGB(255, 0, 175, 102),
                      //             value: 1.0,
                      //           )
                      //         ],
                      //       ),
                      //     ));
                      //   },
                      // );
                    },
                    child: Text(
                      "Sign in",
                      style: context.typography.buttontext,
                    )),
              )
            ],
          ),
        )));
  }
}
