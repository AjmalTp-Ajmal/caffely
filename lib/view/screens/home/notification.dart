import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Notifications extends HookWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ListTile(
            leading: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_back_sharp)),
            title: const Center(child: Text("Notification")),
            trailing:
                IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          ),
          const Row(
            children: [
              SizedBox(
                width: 16,
              ),
              Text("today"),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              const CircleAvatar(),
              const SizedBox(
                width: 16,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New Updates Available!",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Update caffely and get a better\nCoffee experiance!"),
                  Text("9.40pm")
                ],
              ),
              const SizedBox(
                width: 65,
              ),
              Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.green),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.keyboard_arrow_right_rounded))
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey),
              ),
              const SizedBox(
                width: 16,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your order Classic Brew is\n is ready to be picked up! ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("8.20am")
                ],
              ),
              const SizedBox(
                width: 85,
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.keyboard_arrow_right_rounded))
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 16,
              ),
              Text("Yesterday"),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              const CircleAvatar(),
              const SizedBox(
                width: 16,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enable 2-factor Authentication!",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Update caffely and get a better\nCoffee experiance!"),
                  Text("9.40pm")
                ],
              ),
              const SizedBox(
                width: 65,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.keyboard_arrow_right_rounded))
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey),
              ),
              const SizedBox(
                width: 16,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your order Classic Brew is\n is ready to be picked up! ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("8.20am")
                ],
              ),
              const SizedBox(
                width: 85,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.keyboard_arrow_right_rounded))
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
              Text("dec 20,2023")
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              const CircleAvatar(),
              const SizedBox(
                width: 16,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Multtiple payments updates!",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("now you can add credit card for \ncoffee payments!"),
                  Text("9.40pm"),
                ],
              ),
              const SizedBox(
                width: 65,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.keyboard_arrow_right_rounded))
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              const CircleAvatar(),
              const SizedBox(
                width: 16,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enable 2-factor Authentication!",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Update caffely and get a better\nCoffee experiance!"),
                  Text("9.40pm"),
                ],
              ),
              const SizedBox(
                width: 65,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.keyboard_arrow_right_rounded))
            ],
          )
        ],
      )),
    );
  }
}
