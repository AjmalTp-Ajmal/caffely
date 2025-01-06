import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:caffely/view/widgets/home/active_oders_widget.dart';
import 'package:caffely/view/widgets/home/cancel_oder_widget.dart';
import 'package:caffely/view/widgets/home/complete_oder_widget.dart';
import 'package:caffely/view_model/canceled_controller.dart';
import 'package:caffely/view_model/completed.controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActiveOders extends HookWidget {
  const ActiveOders({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedOption = useState('Active');
    final switchselect = useState(true);
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset("assets/images/Vector (1).svg"),
        title: Row(
          children: [
            const SizedBox(
              width: 100,
            ),
            Text(
              "Oders",
              style: context.typography.textfieldbody,
            ),
          ],
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              CupertinoSegmentedControl<String>(
                selectedColor: context.colors.buttonclr,
                unselectedColor: context.colors.primary,
                children: {
                  'Active': Container(
                      width: 250,
                      height: 40,
                      padding: const EdgeInsets.all(8),
                      child: Center(
                        child: Text(
                          "Active",
                          style: context.typography.buttontext,
                          selectionColor: selectedOption.value == 'Active'
                              ? context.colors.primary
                              : context.colors.secondry,
                        ),
                      )),
                  'Completed': Container(
                      width: 250,
                      height: 40,
                      padding: const EdgeInsets.all(8),
                      child: Center(
                        child: Text(
                          "Completed",
                          style: context.typography.buttontext,
                          selectionColor: selectedOption.value == 'Completed'
                              ? context.colors.primary
                              : context.colors.secondry,
                        ),
                      )),
                  'Canceled': Container(
                      width: 250,
                      height: 40,
                      padding: const EdgeInsets.all(8),
                      child: Center(
                        child: Text(
                          "Canceled",
                          style: context.typography.buttontext,
                          selectionColor: selectedOption.value == 'Canceled'
                              ? context.colors.primary
                              : context.colors.secondry,
                        ),
                      )),
                },
                onValueChanged: (String newValue) {
                  selectedOption.value = newValue;
                },
                groupValue: selectedOption.value,
              ),
              const SizedBox(height: 20),
              Expanded(
                  child: selectedOption.value == 'Active'
                      ? activeoders(switchselect: switchselect)
                      : selectedOption.value == 'Completed'
                          ? const completeoders()
                          : const canceloder()),
            ],
          ))
        ],
      )),
    );
  }
}
