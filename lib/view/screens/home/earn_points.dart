import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EarnPoints extends HookWidget {
  const EarnPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                      child: Image(
                          image:
                              AssetImage("assets/images/congartulation.png"))),
                  Text(
                    "Congartulations!",
                    style: context.typography.h200,
                  ),
                  Text(
                    "You eam 25 points from this order. You can see ",
                    style: context.typography.body,
                  ),
                  Text(
                    "the points on the Caffely Points menu",
                    style: context.typography.body,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: double.infinity,
                color: context.colors.primary,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: context.colors.buttonclr),
                      child: Text(
                        "OK",
                        style: context.typography.buttontext,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
