import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:caffely/view/widgets/home/address_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SavedAddressPage extends HookWidget {
  const SavedAddressPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context,);
            },
            icon: const Icon(Icons.keyboard_backspace_outlined)),
        title: const Center(
            child: Text("Saved Address",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black))),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: const [
                AddressCard(
                  title: "Work Office",
                  isMainAddress: true,
                  name: "Andrew Ainsley",
                  phone: "+1 111 467 378 399",
                  address: "75 9th Ave, New York, NY 10011, USA",
                ),
                AddressCard(
                  title: "Home",
                  isMainAddress: false,
                  name: "Andrew Ainsley",
                  phone: "+1 111 467 378 399",
                  address: "701 7th Ave, New York, NY 10036, USA",
                ),
                AddressCard(
                  title: "Apartment",
                  isMainAddress: false,
                  name: "Andrew Ainsley",
                  phone: "+1 111 467 378 399",
                  address: "Liberty Island, New York, NY 10004, USA",
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            color: context.colors.primary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(400, 50),
                        backgroundColor: context.colors.buttonclr),
                    child: Text(
                      "Cancel",
                      style: context.typography.buttontext,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
