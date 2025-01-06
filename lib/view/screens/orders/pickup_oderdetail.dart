import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PickupOderdetail extends HookWidget {
  const PickupOderdetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 220,
              width: 470,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: context.colors.secondry)),
              child: Column(
                children: [
                  ListTile(
                    leading: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.alarm_sharp)),
                    title: Text(
                      "Choose pick time",
                      style: context.typography.textfieldbody,
                    ),
                    subtitle: Text(
                      "Take oders directly at the shope",
                      style: context.typography.body,
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.chevron_right)),
                  ),
                  const Divider(),
                  Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Take your oder at:",
                            style: context.typography.body,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 16,
                          ),
                          CircleAvatar(
                            backgroundColor: context.colors.primary,
                            child:
                                const Icon(Icons.vertical_shades_closed_sharp),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            children: [
                              Text(
                                "Cafelly Astoria Aromas",
                                style: context.typography.textfieldbody,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "newyork 35 avenue",
                                    style: context.typography.body,
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Icon(Icons.location_on_outlined),
                                  Text("1.2 km from your location")
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 480,
              width: 470,
              decoration: BoxDecoration(
                  border: Border.all(color: context.colors.subtextclr),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Oder details",
                        style: context.typography.textfieldbody,
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(
                                        color: context.colors.buttonclr)),
                                backgroundColor: context.colors.primary),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  color: context.colors.buttonclr,
                                ),
                                Text(
                                  "Add more",
                                  style: TextStyle(
                                      color: context.colors.buttonclr),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Divider(),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/images/coffee1.png")),
                            borderRadius: BorderRadius.circular(10),
                            color: context.colors.subtextclr),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "1x Classic Brew",
                                style: context.typography.textfieldbody,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.edit,
                                    color: context.colors.buttonclr,
                                  ))
                            ],
                          ),
                          const Text("Hot"),
                          Row(
                            children: [
                              Text(
                                "Base price",
                                style: context.typography.bodybold,
                              ),
                              const SizedBox(
                                width: 150,
                              ),
                              Text(
                                "₹3.50",
                                style: context.typography.bodybold,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              Text(
                                "1x Crumble",
                              ),
                              SizedBox(
                                width: 150,
                              ),
                              Text(
                                "+ ₹0.50",
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              Text(
                                "1x Crumble",
                              ),
                              SizedBox(
                                width: 150,
                              ),
                              Text(
                                "+ ₹0.50",
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              Text(
                                "1x Crumble",
                              ),
                              SizedBox(
                                width: 150,
                              ),
                              Text(
                                "+ ₹0.50",
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              Text(
                                "1x Crumble",
                              ),
                              SizedBox(
                                width: 150,
                              ),
                              Text(
                                "+ ₹0.50",
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              Text(
                                "1x Crumble",
                              ),
                              SizedBox(
                                width: 150,
                              ),
                              Text(
                                "+ ₹0.50",
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "Sub Total",
                                style: context.typography.bodybold,
                              ),
                              const SizedBox(
                                width: 160,
                              ),
                              Text(
                                "₹6.50",
                                style: context.typography.bodybold,
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Divider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Notes",
                          style: context.typography.body,
                        ),
                        Text(
                          "No sugar please",
                          style: context.typography.bodybold,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height: 250,
              width: 470,
            ),
          )
        ],
      ),
    );
  }
}
