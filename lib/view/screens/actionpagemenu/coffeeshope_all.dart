import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:caffely/view/widgets/home/allshope_widget.dart';
import 'package:caffely/view/widgets/home/favorites_widgets.dart';
import 'package:caffely/view_model/coffeeshope_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoffeeshopeAll extends HookWidget {
  const CoffeeshopeAll({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedOption = useState('All');
    const isSelected = true;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  height: 50,
                  width: 50,
                  child: SvgPicture.asset("assets/images/Vector.svg")),
              Text(
                "Shope",
                style: context.typography.textfieldbody,
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.location_on)),
              Text(
                "Your Location",
                style: context.typography.bodybold,
              ),
              const Spacer(),
              Text(
                "New York",
                style: context.typography.bodybold,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_drop_down_rounded,
                    color: context.colors.buttonclr,
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          CupertinoSegmentedControl<String>(
            selectedColor: context.colors.buttonclr,
            unselectedColor: context.colors.primary,
            children: {
              'All': Container(
                  width: 250,
                  height: 40,
                  padding: const EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "All",
                      style: context.typography.buttontext,
                      selectionColor: selectedOption.value == 'All'
                          ? context.colors.primary
                          : context.colors.secondry,
                      // TextStyle(

                      //   color: selectedOption.value == 'pickup'
                      //       ? context.colors.primary
                      //       : context.colors.secondry,
                      // ),
                    ),
                  )),
              'Favorites': Container(
                width: 250,
                height: 40,
                padding: const EdgeInsets.all(8),
                child: Center(
                  child: Text(
                    "Favorites",
                    style: context.typography.buttontext,
                    selectionColor: selectedOption.value == 'Favorites'
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
            child: selectedOption.value == 'All'
                ? const allshope()
                : const favorites(),
          ),
        ],
      )),
    );
  }
}
