import 'package:caffely/auth/controller/auth_controller.dart';
import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:caffely/main.dart';
import 'package:caffely/view/screens/onboarding/auth/signin_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SignUpForm extends HookWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final emailcontroler = TextEditingController();
    final pasaswordcontroller = TextEditingController();
    final formkey = useMemoized(() => GlobalKey<FormState>());
    final isobscure = useState(true);
    final ischeaked = useState(false);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.keyboard_backspace)),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Form(
              key: formkey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 16,
                        ),
                        Text("Create Account", style: context.typography.h200),
                        Text("👩‍💻", style: context.typography.h200)
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
                          "Sign up to unloack to the world of coffee",
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
                        Text("Email", style: context.typography.textfieldbody)
                      ],
                    ),
                    const SizedBox(
                      height: 10,
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
                              width:
                                  10), // Add spacing between icon and TextField
                          Expanded(
                            child: TextFormField(
                              controller: emailcontroler,
                              validator: Validate().emailvalidate,
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
                    Row(
                      children: [
                        const SizedBox(
                          width: 16,
                          height: 50,
                        ),
                        Text("Password",
                            style: context.typography.textfieldbody)
                      ],
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
                              width:
                                  10), // Add spacing between icon and TextField
                          Expanded(
                            child: TextFormField(
                              controller: pasaswordcontroller,
                              validator: Validate().passwordValidate,
                              decoration: InputDecoration(
                                hintText: "Password",
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
                          width: 16,
                        ),
                        Text("Referal code (optional)",
                            style: context.typography.textfieldbody)
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 60,
                      width: 380,
                      decoration: BoxDecoration(
                          color: context.colors.subtextclr,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          const SizedBox(
                              width:
                                  10), // Add spacing between icon and TextField
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Referal code",
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
                        Checkbox(
                          value: ischeaked.value,
                          onChanged: (bool? value) => ischeaked.value = value!,
                          activeColor: context.colors.buttonclr,
                          side: BorderSide(
                              color: context.colors.buttonclr, width: 2),
                        ),
                        Text("I agree to caffely",
                            style: context.typography.bodybold),
                        TextButton(
                            onPressed: () {},
                            child: Text("Terms and Conditions",
                                style: context.typography.buttonsubtext)),
                      ],
                    ),
                    Divider(
                      color: context.colors.subtextclr,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: context.typography.bodybold,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SigninForm(),
                                  ));
                            },
                            child: Text(
                              "Sign in",
                              style: context.typography.buttonsubtext,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 60,
            padding: const EdgeInsets.all(8),
            color: context.colors.subtextclr,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(500, 50),
                  backgroundColor: const Color.fromARGB(255, 0, 175, 102)),
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  AuthController()
                      .signup(emailcontroler.text, pasaswordcontroller.text);
                }
              },
              child: const Text(
                " Sign up",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      )),
    );
  }
}
