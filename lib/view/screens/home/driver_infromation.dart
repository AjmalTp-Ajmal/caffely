import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

class DriverInfromation extends HookWidget {
  const DriverInfromation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.keyboard_backspace)),
        title: Text(
          "Driver Information",
          style: context.typography.textfieldbody,
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 150,
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        height: 120,
                        width: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: SvgPicture.asset("assets/images/googe.svg"),
                        ),
                      ),
                      Positioned(
                        top: 90,
                        left: 90,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: context.colors.buttonclr),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.edit,
                                color: context.colors.primary,
                              )),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Reynold jhone",
                    style: context.typography.textfieldbody,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "+918078785245",
                    style: context.typography.textfieldbody,
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.copy_outlined))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: context.colors.subtxtclrbold)),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(),
                          CircleAvatar(),
                          CircleAvatar(),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "4.9",
                            style: context.typography.bodybold,
                          ),
                          Text(
                            "627",
                            style: context.typography.bodybold,
                          ),
                          Text(
                            "5",
                            style: context.typography.bodybold,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "rateings",
                            style: context.typography.bodynormal,
                          ),
                          Text(
                            "rateings",
                            style: context.typography.bodynormal,
                          ),
                          Text(
                            "rateings",
                            style: context.typography.bodynormal,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 130,
                    decoration: BoxDecoration(
                        border: Border.all(color: context.colors.subtxtclrbold),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "Member Since",
                                style: context.typography.body,
                              ),
                              const Spacer(),
                              Text(
                                "july 25,2022",
                                style: context.typography.bodybold,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "Member Since",
                                style: context.typography.body,
                              ),
                              const Spacer(),
                              Text(
                                "july 25,2022",
                                style: context.typography.bodybold,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "Member Since",
                                style: context.typography.body,
                              ),
                              const Spacer(),
                              Text(
                                "july 25,2022",
                                style: context.typography.bodybold,
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              )
            ],
          )),
          Container(
            height: 80,
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: context.colors.subtxtclrbold))),
            child: Row(
              children: [
                const SizedBox(
                  width: 130,
                ),
                CircleAvatar(
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.cancel_outlined)),
                ),
                const SizedBox(
                  width: 10,
                ),
                const CircleAvatar(),
                const SizedBox(
                  width: 10,
                ),
                const CircleAvatar(),
              ],
            ),
          )
        ],
      )),
    );
  }
}
