import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SignUpForm extends HookWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final isobscure = useState(true);
    final ischeaked = useState(false);
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.keyboard_backspace)),
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 16,
              ),
              Text(
                "Create Account",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                "👩‍💻",
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
          const SizedBox(
            width: 40,
          ),
          const Row(
            children: [
              SizedBox(
                width: 16,
                height: 50,
              ),
              Text("Sign up to unloack to the world of coffee"),
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 16,
                height: 50,
              ),
              Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Container(
              height: 60,
              width: 380,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5)),
              child: const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.grey,
                    ),
                    hintText: "Email",
                    border: InputBorder.none),
              )),
          const Row(
            children: [
              SizedBox(
                width: 16,
                height: 50,
              ),
              Text(
                "Password",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Container(
              height: 60,
              width: 380,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5)),
              child: TextField(
                obscureText: isobscure.value,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(isobscure.value
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        isobscure.value = !isobscure.value;
                      },
                    ),
                    hintText: "Password",
                    border: InputBorder.none),
              )),
          const Row(
            children: [
              SizedBox(
                width: 16,
                height: 50,
              ),
              Text(
                "Referal code (optional)",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Container(
              height: 60,
              width: 380,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5)),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Referal code", border: InputBorder.none),
              )),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Checkbox(
                value: ischeaked.value,
                onChanged: (bool? value) => ischeaked.value = value!,
                activeColor: const Color.fromARGB(255, 0, 175, 102),
              ),
              const Text(
                "I agree to caffely",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Terms and Conditions",
                    style: TextStyle(color: Color.fromARGB(255, 0, 175, 102)),
                  )),
            ],
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have an account?"),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign in",
                    style: TextStyle(color: Color.fromARGB(255, 0, 175, 102)),
                  ))
            ],
          ),
          const SizedBox(
            height: 45,
          ),
          const Divider(),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(500, 50),
                  backgroundColor: const Color.fromARGB(255, 0, 175, 102)),
              onPressed: () {},
              child: const Text(
                " Sign in",
                style: TextStyle(color: Colors.white),
              )),
        ],
      )),
    );
  }
}
