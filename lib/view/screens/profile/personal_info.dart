import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class PersonalInfo extends HookWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    final selectedDate = useState<DateTime?>(null);
    return Scaffold(
        appBar: AppBar(
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          title: Text(
            "Personal Info",
            style: context.typography.textfieldbody,
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
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
                      "Email",
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
                        backgroundColor:
                            const Color.fromARGB(255, 0, 175, 102)),
                    onPressed: () {},
                    child: const Text(
                      " Sign in",
                      style: TextStyle(color: Colors.white),
                    )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 50),
                          backgroundColor:
                              const Color.fromARGB(255, 0, 175, 102)),
                      child: const Text(
                        "Claim Discount",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
