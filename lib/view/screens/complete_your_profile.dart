import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Completeprofile extends HookWidget {
  const Completeprofile({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime Selecteddate = DateTime.now();
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
                "Complete your profile",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                "👤",
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const Row(
            children: [
              SizedBox(
                width: 16,
              ),
              Text(
                  "Add the finishing touch to your profile.lets\nmake your coffee experiance more social!")
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 120,
            width: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: SvgPicture.asset("assets/images/googe.svg"),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Row(
            children: [
              SizedBox(
                width: 12,
              ),
              Text(
                "Full Name",
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
                decoration: InputDecoration(border: InputBorder.none),
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
                "Phone Number",
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
                decoration: InputDecoration(border: InputBorder.none),
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
                "Date of birth",
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
                
                decoration: InputDecoration(border: InputBorder.none,),
              )),
          const SizedBox(
            height: 16,
          ),
        ],
      )),
    );
  }
}
