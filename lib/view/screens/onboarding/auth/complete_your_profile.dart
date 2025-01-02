import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:caffely/view/screens/onboarding/auth/signup_successful.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class Completeprofile extends HookWidget {
  const Completeprofile({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    final selectedDate = useState<DateTime?>(null);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.keyboard_backspace)),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Text("Complete your profile",
                          style: context.typography.h200),
                      Text("👤", style: context.typography.h200)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Add the finishing touch to your profile.lets\nmake your coffee experiance more social!",
                        style: context.typography.body,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        height: 120,
                        width: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: SvgPicture.asset("assets/images/googe.svg"),
                        ),
                      ),
                      Positioned(
                        top: 90,
                        left: 90,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: context.colors.buttonclr),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.edit,
                                color: context.colors.primary,
                              )),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Text("Full Name",
                          style: context.typography.textfieldbody),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 60,
                      width: 380,
                      decoration: BoxDecoration(
                          color: context.colors.subtextclr,
                          borderRadius: BorderRadius.circular(5)),
                      child: const TextField(
                        decoration: InputDecoration(border: InputBorder.none),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Text("Phone Number",
                          style: context.typography.textfieldbody),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 60,
                      width: 380,
                      decoration: BoxDecoration(
                          color: context.colors.subtextclr,
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        controller: textController,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () async {
                                  final pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate:
                                        selectedDate.value ?? DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2100),
                                  );

                                  if (pickedDate != null) {
                                    selectedDate.value = pickedDate;
                                    textController.text = DateFormat('''
                      dd/MM/yyyy''').format(pickedDate);
                                  }
                                },
                                icon: const Icon(Icons.calendar_month)),
                            border: InputBorder.none),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Text("Date of birth",
                          style: context.typography.textfieldbody),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 60,
                      width: 380,
                      decoration: BoxDecoration(
                          color: context.colors.subtextclr,
                          borderRadius: BorderRadius.circular(5)),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      )),
                ],
              ),
            ),
          ),
          Container(
            height: 60,
            color: context.colors.subtextclr,
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(500, 50),
                    backgroundColor: const Color.fromARGB(255, 0, 175, 102)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupSuccessful()));
                },
                child: Text(" Sign in", style: context.typography.buttontext)),
          )
        ],
      )),
    );
  }
}
