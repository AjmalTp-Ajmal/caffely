import 'package:caffely/view/widgets/home/vouchers_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class VoucherScreen extends HookWidget {
  const VoucherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.keyboard_backspace)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              ))
        ],
        title: const Center(
          child: Text(
            "Vouchers Available",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          DetailsWidget(
            title: "30% Off - Limited Time Offer!",
            description:
                "Wake up and smell the savings! Enjoy a fantastic 30...",
            validUntil: "Dec 31, 2023",
            minTransaction: "\$2.50",
            buttonSelectedTxt: 'Used',
            buttonUnSelectedTxt: 'Use',
          ),
          DetailsWidget(
            title: "Early Bird Brews",
            description: "Enjoy 20% off on call orders before 10 Am!",
            validUntil: "Dec 31, 2023",
            minTransaction: "\$2.50",
            buttonSelectedTxt: 'Used',
            buttonUnSelectedTxt: 'Use',
          ),
          DetailsWidget(
            title: "Coffee Delights Await!",
            description:
                "Embark on a coffee journey like no other! Introducing exclusive rewards.",
            validUntil: "Dec 24, 2023",
            minTransaction: "\$4.50",
            buttonSelectedTxt: 'Used',
            buttonUnSelectedTxt: 'Use',
          ),
          DetailsWidget(
            title: "Weekend Coffee Fiesta!",
            description:
                "Kick off the weekend with our Coffee Fiesta! Enjoy limited-time discounts.",
            validUntil: "Dec 26, 2023",
            minTransaction: "\$3.00",
            buttonSelectedTxt: 'Used',
            buttonUnSelectedTxt: 'Use',
          ),
        ],
      ),

      //
      //
      //
      bottomSheet: Container(
        decoration: const BoxDecoration(
            border:
                Border(top: BorderSide(width: 0.4, style: BorderStyle.solid))),
        child: BottomAppBar(
          color: Colors.white,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 61, 172, 80),
            ),
            child: const Center(
              child: Text(
                "OK",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
