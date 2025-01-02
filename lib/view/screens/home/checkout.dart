
import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:caffely/view/widgets/home/delivary.dart';
import 'package:caffely/view/widgets/home/pickup_checkout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


class Checkout extends HookWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedOption = useState('pickup');
    const isSelected = true;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: IconButton(
                onPressed: () {
                  // Handle back button press (e.g., Navigator.pop(context))
                },
                icon: const Icon(Icons.arrow_back),
              ),
              title: Text(
                "Checkout",
                style: context.typography.textfieldbody,
              ),
            ),
            const SizedBox(height: 20),
            CupertinoSegmentedControl<String>(
              selectedColor: context.colors.buttonclr,
              unselectedColor: context.colors.primary,
              children: {
                'pickup': Container(
                    width: 250,
                    height: 40,
                    padding: const EdgeInsets.all(8),
                    child: Center(
                      child: Text(
                        "Pickup",
                        style: context.typography.buttontext,
                        selectionColor: selectedOption.value == 'pickup'
                            ? context.colors.primary
                            : context.colors.secondry,
                        // TextStyle(

                        //   color: selectedOption.value == 'pickup'
                        //       ? context.colors.primary
                        //       : context.colors.secondry,
                        // ),
                      ),
                    )),
                'Delivery': Container(
                  width: 250,
                  height: 40,
                  padding: const EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "Delivery",
                      style: context.typography.buttontext,
                      selectionColor: selectedOption.value == 'Delivary'
                          ? context.colors.primary
                          : context.colors.secondry,
                    ),
                  ),
                ),
              },
              onValueChanged: (String newValue) {
                selectedOption.value = newValue;
              },
              groupValue: selectedOption.value,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: selectedOption.value == 'pickup'
                  ? const pickup()
                  : const Delivary(),
            ),
          ],
        ),
      ),
    );
  }
}
