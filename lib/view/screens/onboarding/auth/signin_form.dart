import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SigninForm extends HookWidget {
  const SigninForm({super.key});
  @override
  Widget build(BuildContext context) {
    final ischeaked = useState(false);
    final isobscure = useState(true);
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.keyboard_backspace_outlined))
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const SizedBox(
              width: 12,
            ),
            const Text(
              "Welcome back",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
                height: 55,
                child: SvgPicture.asset("assets/images/waveing.svg")),
          ],
        ),
        const Row(
          children: [
            SizedBox(
              width: 12,
            ),
            Text("Please enter your eamil & password to sign in"),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const Row(
          children: [
            SizedBox(
              width: 12,
            ),
            Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.bold),
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
        const SizedBox(
          height: 16,
        ),
        const Row(
          children: [
            SizedBox(
              width: 12,
            ),
            Text(
              "Password",
              style: TextStyle(fontWeight: FontWeight.bold),
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
                    icon: Icon(isobscure.value ? Icons.visibility: Icons.visibility_off),
                    onPressed: () {isobscure.value = !isobscure.value;},
                  ),
                  hintText: "Password",
                  border: InputBorder.none),
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
              "Remember me",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(color: Color.fromARGB(255, 0, 175, 102)),
                )),
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(30.0),
          child: Divider(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Don't have an account?"),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Sign'up",
                  style: TextStyle(color: Color.fromARGB(255, 0, 175, 102)),
                ))
          ],
        ),
        const SizedBox(
          height: 100,
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
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
                                image: AssetImage(
                                    "assets/images/profile_dialog.png")),
                          ),
                          Text(
                            "Sign in Sucessful!",
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
                "Sign in",
                style: TextStyle(color: Colors.white),
              )
              ),
        )
      ],
    )));
  }
}
