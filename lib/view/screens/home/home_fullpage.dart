import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeFullpage extends HookWidget {
  const HomeFullpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              SizedBox(
                width: 16,
              ),
              CircleAvatar(),
              SizedBox(
                width: 16,
              ),
              Column(
                children: [
                  Text(
                    "Good morning ! 🌥️",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  Text(
                    "Andrew Ainsley",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(),
              )
            ],
          ),
        ],
      )),
    );
  }
}
