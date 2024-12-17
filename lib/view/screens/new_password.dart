import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Newpassword extends HookWidget {
  const Newpassword({super.key});

  @override
  Widget build(BuildContext context) {
    final isobscure = useState(true);
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
                "Create new Password",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                "🔒",
                style: TextStyle(fontSize: 25),
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
                "Create your new password.if you forget it,\n then you have to do forget password",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const Row(
            children: [
              SizedBox(
                width: 12,
              ),
              Text(
                "New Password",
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
          const SizedBox(
            height: 16,
          ),
          const Row(
            children: [
              SizedBox(
                width: 12,
              ),
              Text(
                "Confirm new Password",
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
          const SizedBox(
            height: 250,
          ),
          const Divider(),
          ElevatedButton(
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
        ],
      )),
    );
  }
}
