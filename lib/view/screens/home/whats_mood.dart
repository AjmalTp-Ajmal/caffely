import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:caffely/view_model/emoji_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WhatsMood extends HookWidget {
  const WhatsMood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.keyboard_backspace))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Whats your Mood!",
            style: context.typography.h200,
          ),
          Text(
            "about this oder?",
            style: context.typography.body,
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: emojilist.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: context.colors.buttonclr),
                      image: DecorationImage(
                          image: AssetImage(emojilist[index].img))),
                );
              },
            ),
          ),
          Container(
            height: 100,
            color: context.colors.primary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(160, 50),
                        backgroundColor: context.colors.subbuttonclr),
                    child: Text(
                      "Cancel",
                      style: context.typography.buttontext,
                    )),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(160, 50),
                        backgroundColor: context.colors.buttonclr),
                    child: Text(
                      "Submit",
                      style: context.typography.buttontext,
                    )),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
