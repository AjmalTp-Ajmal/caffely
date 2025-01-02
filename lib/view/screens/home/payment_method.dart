import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentMethod extends HookWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: ListTile(
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.keyboard_backspace)),
              title: const Text(
                "Choose Payment method",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              trailing:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 85,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white),
              child: Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: SvgPicture.asset("assets/images/googe.svg"),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text(
                    "Google pay",
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 85,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white),
              child: Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: SvgPicture.asset("assets/images/googe.svg"),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text(
                    "Google pay",
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 85,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white),
              child: Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: SvgPicture.asset("assets/images/googe.svg"),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text(
                    "Google pay",
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 85,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white),
              child: Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: SvgPicture.asset("assets/images/googe.svg"),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text(
                    "Google pay",
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 85,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white),
              child: Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: SvgPicture.asset("assets/images/googe.svg"),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text(
                    "Google pay",
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 75,
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: context.colors.subtextclr)),
              color: Colors.white,
            ),
            // width: double.infinity,

            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(371, 50),
                        backgroundColor: context.colors.buttonclr),
                    child: const Text(
                      "BUY NOW",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
