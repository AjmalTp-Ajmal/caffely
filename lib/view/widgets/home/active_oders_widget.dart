
import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:flutter/material.dart';

class activeoders extends StatelessWidget {
  const activeoders({
    super.key,
    required this.switchselect,
  });

  final ValueNotifier<bool> switchselect;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(10),
                          border: Border.all(
                              color: context
                                  .colors.subtxtclrbold)),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius
                                              .circular(10),
                                      color: context
                                          .colors.subtextclr,
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/coffee2.png"))),
                                ),
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment
                                          .start,
                                  children: [
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Classic Brew",
                                          style: context
                                              .typography
                                              .bodybold,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Castoria Aromas",
                                          style: context
                                              .typography
                                              .smallbody,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: context
                                                      .colors
                                                      .buttonclr),
                                              borderRadius:
                                                  BorderRadius
                                                      .circular(
                                                          5)),
                                          child: Center(
                                            child: Text(
                                              "Pick up",
                                              style: context
                                                  .typography
                                                  .subsmallbody,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons
                                        .chevron_right_rounded))
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Divider(),
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Remind me 30 min earlier",
                                style:
                                    context.typography.body,
                              ),
                              const Spacer(),
                              Switch(
                                value: switchselect.value,
                                activeColor:
                                    context.colors.buttonclr,
                                activeTrackColor:
                                    context.colors.buttonclr,
                                inactiveThumbColor:
                                    context.colors.primary,
                                onChanged: (value) =>
                                    switchselect.value =
                                        value,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(10),
                          border: Border.all(
                              color: context
                                  .colors.subtxtclrbold)),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius
                                              .circular(10),
                                      color: context
                                          .colors.subtextclr,
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/coffee2.png"))),
                                ),
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment
                                          .start,
                                  children: [
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Classic Brew",
                                          style: context
                                              .typography
                                              .bodybold,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Castoria Aromas",
                                          style: context
                                              .typography
                                              .smallbody,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: context
                                                      .colors
                                                      .buttonclr),
                                              borderRadius:
                                                  BorderRadius
                                                      .circular(
                                                          5)),
                                          child: Center(
                                            child: Text(
                                              "Pick up",
                                              style: context
                                                  .typography
                                                  .subsmallbody,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons
                                        .chevron_right_rounded))
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Divider(),
                          ),
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius
                                                  .circular(
                                                      20),
                                          side: BorderSide(
                                              color: context
                                                  .colors
                                                  .buttonclr)),
                                      backgroundColor: context
                                          .colors.primary,
                                      foregroundColor: context
                                          .colors.buttonclr),
                                  child: const Text(
                                      "Cancel oder")),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton
                                      .styleFrom(
                                          backgroundColor:
                                              context.colors
                                                  .buttonclr),
                                  child: Text(
                                    "track Driver",
                                    style: context.typography
                                        .buttontext,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              color: Colors.amber,
              child: const Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home),
                  Icon(Icons.home),
                  Icon(Icons.home),
                  Icon(Icons.home)
                ],
              ),
            )
          ],
        ),
      );
  }
}
