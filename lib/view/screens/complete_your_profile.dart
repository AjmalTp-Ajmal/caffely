import 'package:caffely/view/screens/signup_successful.dart';
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
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_backspace)),
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Text(
                  "Complete your profile",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  "👤",
                  style: TextStyle(fontSize: 25),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Text(
                    "Add the finishing touch to your profile.lets\nmake your coffee experiance more social!")
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 120,
              width: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: SvgPicture.asset("assets/images/googe.svg"),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                Text(
                  "Full Name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
                height: 60,
                width: 380,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(5)),
                child: const TextField(
                  decoration: InputDecoration(border: InputBorder.none),
                )),
            const SizedBox(
              height: 16,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                Text(
                  "Phone Number",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
                height: 60,
                width: 380,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  controller: textController,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () async {
                            final pickedDate = await showDatePicker(
                              context: context,
                              initialDate: selectedDate.value ?? DateTime.now(),
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
              height: 16,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                Text(
                  "Date of birth",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
                height: 60,
                width: 380,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(5)),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                )),
            const SizedBox(
              height: 35,
            ),
            const Divider(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(500, 50),
                    backgroundColor: const Color.fromARGB(255, 0, 175, 102)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupSuccessful()));
                },
                child: const Text(
                  " Sign in",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      )),
    );
  }
}
