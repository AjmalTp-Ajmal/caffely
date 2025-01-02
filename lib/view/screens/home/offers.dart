import 'package:caffely/view/widgets/home/vouchers_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OfferScreen extends HookWidget {
  const OfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
            "Special Offers",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          DetailsWidget(
            title: "Early Bird Brews",
            description: "Enjoy 20% off on call orders before 10 Am!",
            validUntil: "Dec 31, 2023",
            minTransaction: "\$2.50",
            buttonSelectedTxt: 'claimed',
            buttonUnSelectedTxt: 'claim',
          ),
          DetailsWidget(
            title: "Caffeine Rush Hour",
            description: "Get a free upgrade to a large size on any espresso..",
            validUntil: "Dec 26, 2023",
            minTransaction: "\$3.00",
            buttonSelectedTxt: 'claimed',
            buttonUnSelectedTxt: 'claim',
          ),
          DetailsWidget(
            title: "Coffee & Cake Combo",
            description:
                "Buy any cofee and get a slice of cake for half price.",
            validUntil: "Dec 29, 2023",
            minTransaction: "\$5.00",
            buttonSelectedTxt: 'claimed',
            buttonUnSelectedTxt: 'claim',
          ),
          DetailsWidget(
            title: "Loyalty Perks ",
            description: "Double points on all purchase for our loyal custom..",
            validUntil: "Dec 24, 2023",
            minTransaction: "\$4.50",
            buttonSelectedTxt: 'claimed',
            buttonUnSelectedTxt: 'claim',
          ),
          DetailsWidget(
            title: "Weekend Refuel ",
            description: "15% off on all drinks every Saturday and Sunday.",
            validUntil: "Dec 28, 2023",
            minTransaction: "\$3.50",
            buttonSelectedTxt: 'claimed',
            buttonUnSelectedTxt: 'claim',
          ),
        ],
      ),
    );
  }
}
