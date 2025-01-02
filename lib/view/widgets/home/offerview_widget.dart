import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:flutter/material.dart';

class offerview extends StatelessWidget {
  const offerview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: context.colors.buttonclr),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      "30% OFF",
                      style: context.typography.offertext,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Limited time offer!",
                      style: context.typography.smalloffertext,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      "enjoy a fantastic 30% discount on\n all our coffee creation",
                      style: context.typography.smallbody,
                    ),
                  ],
                )
              ],
            ),
            const Image(
                image: AssetImage("assets/images/hand coffee.png"))
          ],
        ),
      ),
    );
  }
}



class offerview2 extends StatelessWidget {
  const offerview2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: context.colors.buttonclr),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      "30% OFF",
                      style: context.typography.offertext,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Limited time offer!",
                      style: context.typography.smalloffertext,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      "enjoy a fantastic 30% discount on\n all our coffee creation",
                      style: context.typography.smallbody,
                    ),
                  ],
                )
              ],
            ),
            const Image(
                image: AssetImage("assets/images/hand coffee.png"))
          ],
        ),
      ),
    );
  }
}



class offerview3 extends StatelessWidget {
  const offerview3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: context.colors.buttonclr),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      "30% OFF",
                      style: context.typography.offertext,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Limited time offer!",
                      style: context.typography.smalloffertext,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      "enjoy a fantastic 30% discount on\n all our coffee creation",
                      style: context.typography.smallbody,
                    ),
                  ],
                )
              ],
            ),
            const Image(
                image: AssetImage("assets/images/hand coffee.png"))
          ],
        ),
      ),
    );
  }
}
