import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CancelOder extends HookWidget {
  const CancelOder({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedOption = useState<String?>(null);

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.keyboard_backspace)),
              const SizedBox(
                width: 100,
              ),
              Text(
                "Cancel Oder",
                style: context.typography.textfieldbody,
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "choose a reason for cancelation:",
                style: context.typography.bodynormal,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    leading: Radio<String?>(
                      value: 'Change of mind',
                      groupValue: selectedOption.value,
                      hoverColor: context.colors.primary,
                      activeColor: context.colors.buttonclr,
                      onChanged: (String? value) {
                        selectedOption.value = value;
                      },
                    ),
                    title: Text(
                      "Change of mind",
                      style: context.typography.bodybold,
                    ),
                  ),
                  ListTile(
                    leading: Radio<String?>(
                      groupValue: selectedOption.value,
                      hoverColor: context.colors.primary,
                      activeColor: context.colors.buttonclr,
                      value: 'Long wait time',
                      onChanged: (String? value) {
                        selectedOption.value = value;
                      },
                    ),
                    title: Text(
                      "Long wait time",
                      style: context.typography.bodybold,
                    ),
                  ),
                  ListTile(
                    leading: Radio<String?>(
                      groupValue: selectedOption.value,
                      hoverColor: context.colors.primary,
                      activeColor: context.colors.buttonclr,
                      value: 'technical issue',
                      onChanged: (String? value) {
                        selectedOption.value = value;
                      },
                    ),
                    title: Text(
                      "technical issue",
                      style: context.typography.bodybold,
                    ),
                  ),
                  ListTile(
                    leading: Radio<String?>(
                      groupValue: selectedOption.value,
                      hoverColor: context.colors.primary,
                      activeColor: context.colors.buttonclr,
                      value: 'other',
                      onChanged: (String? value) {
                        selectedOption.value = value;
                      },
                    ),
                    title: Text(
                      "other",
                      style: context.typography.bodybold,
                    ),
                  ),
                  ListTile(
                    leading: Radio<String?>(
                      groupValue: selectedOption.value,
                      hoverColor: context.colors.primary,
                      activeColor: context.colors.buttonclr,
                      value: 'place concern',
                      onChanged: (String? value) {
                        selectedOption.value = value;
                      },
                    ),
                    title: Text(
                      "place concern",
                      style: context.typography.bodybold,
                    ),
                  ),
                  ListTile(
                    leading: Radio<String?>(
                      groupValue: selectedOption.value,
                      hoverColor: context.colors.primary,
                      activeColor: context.colors.buttonclr,
                      value: 'incorrect oder',
                      onChanged: (String? value) {
                        selectedOption.value = value;
                      },
                    ),
                    title: Text(
                      "Incorrect oder",
                      style: context.typography.bodybold,
                    ),
                  ),
                  ListTile(
                    leading: Radio<String?>(
                      groupValue: selectedOption.value,
                      hoverColor: context.colors.primary,
                      activeColor: context.colors.buttonclr,
                      value: 'temperature prefernce',
                      onChanged: (String? value) {
                        selectedOption.value = value;
                      },
                    ),
                    title: Text(
                      "temperature prefernce",
                      style: context.typography.bodybold,
                    ),
                  ),
                  ListTile(
                    leading: Radio<String?>(
                      groupValue: selectedOption.value,
                      hoverColor: context.colors.primary,
                      activeColor: context.colors.buttonclr,
                      value: 'unfavorable review',
                      onChanged: (String? value) {
                        selectedOption.value = value;
                      },
                    ),
                    title: Text(
                      "unfavorable review",
                      style: context.typography.bodybold,
                    ),
                  ),
                  ListTile(
                    leading: Radio<String?>(
                      groupValue: selectedOption.value,
                      hoverColor: context.colors.primary,
                      activeColor: context.colors.buttonclr,
                      value: 'Price concerns',
                      onChanged: (String? value) {
                        selectedOption.value = value;
                      },
                    ),
                    title: Text(
                      "Price concerns",
                      style: context.typography.bodybold,
                    ),
                  ),
                  ListTile(
                    leading: Radio<String?>(
                      groupValue: selectedOption.value,
                      hoverColor: context.colors.primary,
                      activeColor: context.colors.buttonclr,
                      value: 'Unavialabilty',
                      onChanged: (String? value) {
                        selectedOption.value = value;
                      },
                    ),
                    title: Text(
                      "Unavialabilty",
                      style: context.typography.bodybold,
                    ),
                  ),
                  ListTile(
                    leading: Radio<String?>(
                      groupValue: selectedOption.value,
                      hoverColor: context.colors.primary,
                      activeColor: context.colors.buttonclr,
                      value: 'Sudden urgency',
                      onChanged: (String? value) {
                        selectedOption.value = value;
                      },
                    ),
                    title: Text(
                      "Sudden urgency",
                      style: context.typography.bodybold,
                    ),
                  ),
                  ListTile(
                    leading: Radio<String?>(
                      groupValue: selectedOption.value,
                      focusColor: context.colors.buttonclr,
                      hoverColor: context.colors.primary,
                      activeColor: context.colors.buttonclr,
                      value: 'Incorrect oder',
                      onChanged: (String? value) {
                        selectedOption.value = value;
                      },
                    ),
                    title: Text(
                      "Incorrect oder",
                      style: context.typography.bodybold,
                    ),
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
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => Container(
                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: context.colors.primary,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Cancel Oder',
                                style: context.typography.textfieldbody,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Divider(),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Are you sure you want to cancelthe oder?",
                                style: context.typography.textfieldbody,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Only 90% of your fund will be reffund to your ",
                                style: context.typography.body,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Account based on our ",
                                    style: context.typography.body,
                                  ),
                                  Text("terms and condition",
                                      style: TextStyle(
                                          color: context.colors.buttonclr))
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          minimumSize: const Size(150, 50),
                                          backgroundColor:
                                              context.colors.subbuttonclr),
                                      child: Text("No don't cancel",
                                          style:
                                              context.typography.buttontext)),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Dialog(
                                                child: Container(
                                              height: 400,
                                              padding:
                                                  const EdgeInsets.all(8.0),
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
                                                    "Oder sucessfully",
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 0, 175, 102),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "canceled",
                                                    style: TextStyle(
                                                        color: context
                                                            .colors.buttonclr,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const Text(
                                                      "90% of the funds have been returned"),
                                                  const Text("to your account"),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  ElevatedButton(
                                                      onPressed: () {},
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              minimumSize:
                                                                  const Size(
                                                                      150, 50),
                                                              backgroundColor:
                                                                  context.colors
                                                                      .buttonclr),
                                                      child: Text("OK",
                                                          style: context
                                                              .typography
                                                              .buttontext)),
                                                ],
                                              ),
                                            ));
                                          },
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                          minimumSize: const Size(150, 50),
                                          backgroundColor:
                                              context.colors.buttonclr),
                                      child: Text(
                                        "Yes cancel",
                                        style: context.typography.buttontext,
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: context.colors.buttonclr),
                    child: Text(
                      "Cancel oder",
                      style: context.typography.buttontext,
                    )),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
