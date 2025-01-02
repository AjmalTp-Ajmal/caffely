import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:caffely/view/screens/home/choose_delivary_address.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Delivary extends HookWidget {
  const Delivary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final switchselect = useState(true);

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 240,
                    width: 470,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: context.colors.secondry)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 16,
                            ),
                            Text(
                              "your oder is delivered from",
                              style: context.typography.body,
                            ),
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
                            const CircleAvatar(),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Caffely astromia aromas",
                                  style: context.typography.textfieldbody,
                                ),
                                Text(
                                  "12 the avenue",
                                  style: context.typography.body,
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
                                  "To your address:",
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Home",
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
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const SavedAddressPage(),
                                          ));
                                    },
                                    icon:
                                        const Icon(Icons.chevron_right_rounded))
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
                            "Delivary",
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
                                    "Choose Delivary",
                                    style: context.typography.textfieldbody,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "choose your delivary service",
                                    style: context.typography.body,
                                  )
                                ],
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {},
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
                                  onPressed: () {},
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
                                  onPressed: () {},
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
                  onPressed: () {},
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
