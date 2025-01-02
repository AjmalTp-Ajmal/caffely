import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ChatDriver extends HookWidget {
  const ChatDriver({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back))),
              const SizedBox(
                width: 40,
              ),
              Text(
                "REynfold diagsree",
                style: context.typography.textfieldbody,
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.call))
            ],
          )
        ],
      )),
    );
  }
}
