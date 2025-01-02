import 'dart:developer';

import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:caffely/view/screens/home/payment_method.dart';
import 'package:caffely/view/screens/home/vouchers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class pickup extends HookWidget {
  const pickup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final switchselect = useState(true);
    final selectedTime = useState(DateTime.now());

    void showDatePicker() {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext builder) {
          // Create the modal bottom sheet widget containing the time picker and close button
          return SizedBox(
            height: 300,
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Set your pick up time",
                  style: context.typography.textfieldbody,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(),
                ),
                Text(
                  "Today, Dec 22 2024",
                  style: context.typography.bodybold,
                ),
                // Time picker
                Expanded(
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.time,
                    initialDateTime: DateTime.now(),
                    onDateTimeChanged: (newTime) {
                      selectedTime.value = newTime;
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // Close button
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: context.colors.buttonclr,
                        minimumSize: const Size(400, 50)),
                    child: Text(
                      'Set time',
                      style: context.typography.buttontext,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
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
                              onPressed: () {},
                              icon: const Icon(Icons.alarm_sharp)),
                          title: Text(
                            "Choose pick time",
                            style: context.typography.textfieldbody,
                          ),
                          subtitle: Text(
                            "Take oders directly at the shope",
                            style: context.typography.body,
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) => Container(
                                    height: 370,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: context.colors.primary,
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Choose pickup time',
                                          style:
                                              context.typography.textfieldbody,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Divider(),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 80,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                    color: context
                                                        .colors.buttonclr)),
                                            child: Row(
                                              children: [
                                                const SizedBox(
                                                  width: 16,
                                                ),
                                                const CircleAvatar(),
                                                const SizedBox(
                                                  width: 16,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const SizedBox(
                                                      width: 16,
                                                      height: 16,
                                                    ),
                                                    Text(
                                                      "Pick up now",
                                                      style: context
                                                          .typography.bodybold,
                                                    ),
                                                    const Text(
                                                      "Estimated ready in 15min",
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
                                            height: 80,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                    color: context
                                                        .colors.buttonclr)),
                                            child: Row(
                                              children: [
                                                const SizedBox(
                                                  width: 16,
                                                ),
                                                const CircleAvatar(),
                                                const SizedBox(
                                                  width: 16,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const SizedBox(
                                                      width: 16,
                                                      height: 16,
                                                    ),
                                                    Text(
                                                      "Pick up later",
                                                      style: context
                                                          .typography.bodybold,
                                                    ),
                                                    const Text(
                                                      "Set your pickup time",
                                                    )
                                                  ],
                                                ),
                                                const Spacer(),
                                                IconButton(
                                                    onPressed: () {
                                                      showDatePicker();
                                                    },
                                                    icon: const Icon(Icons
                                                        .chevron_right_rounded))
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                  minimumSize: const Size(
                                                      double.infinity, 50),
                                                  backgroundColor:
                                                      context.colors.buttonclr),
                                              child: Text(
                                                "Confirm",
                                                style: context
                                                    .typography.buttontext,
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
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
                                  child: const Icon(
                                      Icons.vertical_shades_closed_sharp),
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
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                                      image: AssetImage(
                                          "assets/images/coffee1.png")),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 250,
                    width: 470,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: context.colors.secondry)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Oder Discount",
                            style: context.typography.textfieldbody,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Divider(),
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                height: 16,
                              ),
                              const CircleAvatar(),
                              const SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Use vouchers",
                                    style: context.typography.textfieldbody,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Saved oders with promo",
                                    style: context.typography.body,
                                  )
                                ],
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const VoucherScreen(),
                                        ));
                                  },
                                  icon: const Icon(Icons.chevron_right_rounded))
                            ],
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const CircleAvatar(),
                              const SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "200 points",
                                    style: context.typography.textfieldbody,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "100 points equals ₹1.00",
                                    style: context.typography.body,
                                  )
                                ],
                              ),
                              const Spacer(),
                              Switch(
                                value: switchselect.value,
                                activeColor: context.colors.buttonclr,
                                onChanged: (value) =>
                                    switchselect.value = value,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: 470,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: context.colors.subtextclr)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Payment Method",
                            style: context.typography.textfieldbody,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const CircleAvatar(),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Choose payment",
                                    style: context.typography.textfieldbody,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "choose your payment method",
                                    style: context.typography.body,
                                  )
                                ],
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const PaymentMethod(),
                                        ));
                                  },
                                  icon:
                                      const Icon(Icons.chevron_right_outlined))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 470,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: context.colors.subtextclr)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Payment Details",
                            style: context.typography.textfieldbody,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "Grand sub total",
                                style: context.typography.body,
                              ),
                              const Spacer(),
                              Text(
                                "₹6.00",
                                style: context.typography.bodybold,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "Service fee",
                                style: context.typography.body,
                              ),
                              const Spacer(),
                              Text(
                                "₹1.00",
                                style: context.typography.bodybold,
                              )
                            ],
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "Total payment",
                                style: context.typography.body,
                              ),
                              const Spacer(),
                              Text(
                                "₹7.00",
                                style: context.typography.bodybold,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                  width: 400,
                )
              ],
            ),
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
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                            child: Container(
                          height: 450,
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 200,
                                width: 200,
                                child: Image(
                                    image: AssetImage(
                                        "assets/images/cancel alert.png")),
                              ),
                              const Text(
                                "Oder sucessfull",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 175, 102),
                                    fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                  "Step into the world of coffee bliss with"),
                              const Text("our hand craffted brews"),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(150, 50),
                                      backgroundColor:
                                          context.colors.subbuttonclr),
                                  child: Text("view my oder",
                                      style: context.typography.buttontext)),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(150, 50),
                                      backgroundColor:
                                          context.colors.buttonclr),
                                  child: Text("back to home",
                                      style: context.typography.buttontext)),
                            ],
                          ),
                        ));
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: context.colors.buttonclr),
                  child: Text(
                    "Place oder",
                    style: context.typography.buttontext,
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
