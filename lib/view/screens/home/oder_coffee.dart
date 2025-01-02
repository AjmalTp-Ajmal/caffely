import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OderCoffee extends HookWidget {
  const OderCoffee({super.key});

  @override
  Widget build(BuildContext context) {
    final count = useState(0);
    final radio = useState("option 1");
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.cancel)),
                const Spacer(),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.favorite_border)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.share))
              ],
            ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber,
                  image: const DecorationImage(
                      image: AssetImage("assets/images/coffee2.png"))),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                const Text(
                  "Classic Brew\n₹3.50",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.green),
                  ),
                  child: IconButton(
                      onPressed: () {
                        count.value++;
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.green,
                      )),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text("${count.value}"),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.green),
                  ),
                  child: IconButton(
                      onPressed: () {
                        count.value--;
                      },
                      icon: const Icon(
                        Icons.minimize,
                        color: Colors.green,
                      )),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
            const Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Text(
                  "Available in",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
            const Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Text(
                  "Size",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 85,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Image(image: AssetImage("")),
                      Text(
                        "Tall",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "free",
                      )
                    ],
                  ),
                ),
                Container(
                  height: 85,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Image(image: AssetImage("")),
                      Text(
                        "Grande",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "+0.50",
                      )
                    ],
                  ),
                ),
                Container(
                  height: 85,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Image(image: AssetImage("")),
                      Text(
                        "venti",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "+1.00",
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                const Text(
                  "Milk",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text("(Optional)"),
                const Spacer(),
                const Text(
                  "Max",
                  style: TextStyle(color: Color.fromARGB(255, 0, 175, 102)),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_up,
                      color: Color.fromARGB(255, 0, 175, 102),
                    ))
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Text("Whole milk"),
                Spacer(),
                Text("+ ₹1.00"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Text("Skim milk")
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Text("soya Milk")
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Text("Almond milk")
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                const Text(
                  "Milk",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text("(Optional)"),
                const Spacer(),
                const Text(
                  "Max",
                  style: TextStyle(color: Color.fromARGB(255, 0, 175, 102)),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_up,
                      color: Color.fromARGB(255, 0, 175, 102),
                    ))
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Text("Whole milk"),
                Spacer(),
                Text("+ ₹1.00"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Text("Skim milk"),
                Spacer(),
                Text("+ ₹1.00"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Text("soya Milk"),
                Spacer(),
                Text("+ ₹1.00"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Text("Almond milk"),
                Spacer(),
                Text("+ ₹1.00"),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                const Text(
                  "Milk",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text("(Optional)"),
                const Spacer(),
                const Text(
                  "Max",
                  style: TextStyle(color: Color.fromARGB(255, 0, 175, 102)),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_up,
                      color: Color.fromARGB(255, 0, 175, 102),
                    ))
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Text("Whole milk"),
                Spacer(),
                Text("+ ₹1.00"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(children: [
              const SizedBox(
                width: 16,
              ),
              const Text("Skim milk"),
              const Spacer(),
              const Text("+ ₹1.00"),
              Radio<String>(
                value: "option 1",
                groupValue: radio.value,
                onChanged: (String? value) {
                  if (value != null) {
                    radio.value = value;
                  }
                },
              )
            ]),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Text("soya Milk"),
                Spacer(),
                Text("+ ₹1.00"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Text("Almond milk"),
                Spacer(),
                Text("+ ₹1.00"),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
            const Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Text(
                  "Notes",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green),
                child: const TextField(
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                const Column(
                  children: [
                    Text("total price"),
                    Text(
                      "₹0",
                      style: TextStyle(fontSize: 25),
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
                          backgroundColor:
                              const Color.fromARGB(255, 0, 175, 102)),
                      child: const Text(
                        "Add to Basket",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
