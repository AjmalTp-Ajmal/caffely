import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AboutCoffeshope extends HookWidget {
  const AboutCoffeshope({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.keyboard_backspace)),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "Caffely Astoria Aromas",
                style: context.typography.h200,
              ),
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
              Text(
                "About",
                style: context.typography.textfieldbody,
              )
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
              Text(
                "Welcome to Caffely Astoria Aromas, a coffee\n haven nestled in the heart of the vibrant\n Astoria neighborhood. Our branch is a\n testament to the fusion of aromatic coffees.\n community warmth, and urban energy. Step\n inside and immerse yourself in an atmosphere\n where every sip tells a story and every visit is\n a memorable journey.",
                style: context.typography.bodybold,
              )
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
              Text(
                "Monday-Friday          : 10.00-22.00",
                style: context.typography.bodybold,
              )
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
              Text(
                "Monday-Friday          : 10.00-22.00",
                style: context.typography.bodybold,
              ),
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
              Text(
                "Address",
                style: context.typography.textfieldbody,
              ),
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
              Icon(
                Icons.location_on,
                color: context.colors.buttonclr,
              ),
              Text(
                "350 50 ave,newyork",
                style: context.typography.body,
              )
            ],
          )
        ],
      ),
    );
  }
}
