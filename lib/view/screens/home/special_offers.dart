import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:caffely/view/screens/actionpagemenu/coffeeshope_all.dart';
import 'package:caffely/view/widgets/home/offerview_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SpecialOffers extends HookWidget {
  const SpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ListTile(
            leading: IconButton(
                onPressed: () {}, icon: const Icon(Icons.keyboard_backspace)),
            title: Text(
              "Special Offers",
              style: context.typography.textfieldbody,
            ),
          ),
          const offerview(),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "30% Off-Limited Time offer!",
                style: context.typography.textfieldbody,
              )
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
              Text(
                  "Wake up and smell the savings!Enjoy a fantastic\n30% discount on all our coffee creations.")
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: context.colors.subtextclr),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "XGZ9V2",
                        style: context.typography.buttontext,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.copy,
                            color: context.colors.primary,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(color: context.colors.subtextclr)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.alarm,
                            color: context.colors.buttonclr,
                          )),
                      Text(
                        "Valid until",
                        style: context.typography.body,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 32,
                      ),
                      Text(
                        "Dec 31,2023",
                        style: context.typography.textfieldbody,
                      ),
                      const VerticalDivider()
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "Terms and Conditions:",
                style: context.typography.textfieldbody,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "1. Promotion Period: The Caffely 30% discount\npromotionis valid from December 30,2023\n to december31,2023.All eligible oder must be",
                style: context.typography.body,
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: const Color.fromARGB(255, 0, 175, 102)),
                child: const Text(
                  "Claim Discount",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
