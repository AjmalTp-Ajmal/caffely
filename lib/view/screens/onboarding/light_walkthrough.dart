import 'package:caffely/core/constants/home/home_constants.dart';
import 'package:caffely/core/theme/extensions/space_extensions.dart';
import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Walkthrough extends HookWidget {
  const Walkthrough({super.key});
  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(initialPage: 0);

    // int activepage = 0;

    final List<Widget> pages = [
      const Walkthrough_1(),
      const Walkthrough_2(),
      const Walkthrough_3(),
    ];

    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            onPageChanged: (int page) {},
            itemCount: pages.length,
            itemBuilder: (BuildContext context, int index) {
              return pages[index % pages.length];
            },
          ),
          Positioned(
            bottom: context.space.space_900 * 1.7,
            right: 170,
            child: SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: ExpandingDotsEffect(
                  activeDotColor: context.colors.buttonclr,
                  dotColor: context.colors.subtextclr,
                  dotHeight: 10,
                  dotWidth: 10),
            ),
          )
        ],
      ),
    );
  }
}

class MyClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height - 110;

    final path = Path();
    path.lineTo(0, h);
    path.quadraticBezierTo(w * 0.5, h + 110, w, h);
    path.lineTo(w, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Walkthrough_1 extends StatelessWidget {
  const Walkthrough_1({super.key});

  @override
  Widget build(BuildContext context) {
    var constants = HomeConstants();
    return Column(
      children: [
        ClipPath(
          clipper: MyClip(),
          child: Container(
            height: 470,
            width: double.infinity,
            decoration: BoxDecoration(
                color: context.colors.buttonclr,
                image: const DecorationImage(
                    image: AssetImage("assets/images/mobile1.jpg"))),
          ),
        ),
        Center(
          child: Text("Get Your Coffee-", style: context.typography.h200),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Text("Anytime, Anywhere", style: context.typography.h200),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
            child: Text(
          "Choose the way you want to enjoy your coffee ",
          style: context.typography.body,
        )),
        Center(
            child: Text(
          " with Caffely. Just a few taps on the app, and  ",
          style: context.typography.body,
        )),
        Center(
            child: Text(
          "your coffee is ready for you.",
          style: context.typography.body,
        )),
        const SizedBox(
          height: 50,
        ),
        Divider(
          color: context.colors.subtextclr,
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            const SizedBox(
              width: 25,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: context.colors.subbuttonclr,
                  minimumSize: const Size(170, 50)),
              child: Text(
                constants.txtskip,
                style: TextStyle(color: context.colors.buttonclr),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: context.colors.buttonclr,
                    minimumSize: const Size(170, 50)),
                child: Text(
                  constants.txtbutton,
                  style: context.typography.buttontext,
                )),
          ],
        ),
      ],
    );
  }
}

class Walkthrough_2 extends StatelessWidget {
  const Walkthrough_2({super.key});

  @override
  Widget build(BuildContext context) {
    var constants = HomeConstants();
    return Column(
      children: [
        ClipPath(
          clipper: MyClip(),
          child: Container(
            height: 470,
            width: double.infinity,
            decoration: BoxDecoration(
                color: context.colors.buttonclr,
                borderRadius: const BorderRadiusDirectional.vertical(
                    bottom: Radius.circular(60)),
                image: const DecorationImage(
                    image: AssetImage("assets/images/mobile2.jpg"))),
          ),
        ),
        Center(
          child: Text(
            "Seamless Payments With",
            style: context.typography.h200,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            "Our Secure Wallet",
            style: context.typography.h200,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
            child: Text(
          "Say goodbye to hassle and hello to seamless ",
          style: context.typography.body,
        )),
        Center(
            child: Text(
          " transaction with caffely's secure wallet ",
          style: context.typography.body,
        )),
        Center(
            child: Text(
          "Makeing payments has never been easier",
          style: context.typography.body,
        )),
        const SizedBox(
          height: 50,
        ),
        Divider(
          color: context.colors.subtextclr,
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            const SizedBox(
              width: 25,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: context.colors.subbuttonclr,
                  minimumSize: const Size(170, 50)),
              child: Text(
                constants.txtskip,
                style: TextStyle(color: context.colors.buttonclr),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: context.colors.buttonclr,
                    minimumSize: const Size(170, 50)),
                child: Text(constants.txtbutton,
                    style: context.typography.buttontext)),
          ],
        ),
      ],
    );
  }
}

class Walkthrough_3 extends StatelessWidget {
  const Walkthrough_3({super.key});

  @override
  Widget build(BuildContext context) {
    var constants = HomeConstants();
    return Column(
      children: [
        ClipPath(
          clipper: MyClip(),
          child: Container(
            height: 470,
            width: double.infinity,
            decoration: BoxDecoration(
                color: context.colors.buttonclr,
                borderRadius: const BorderRadiusDirectional.vertical(
                    bottom: Radius.circular(60)),
                image: const DecorationImage(
                    image: AssetImage("assets/images/mobile3.jpg"))),
          ),
        ),
        Center(
          child: Text(
            "Explore the World of",
            style: context.typography.h200,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            "Coffee Right now",
            style: context.typography.h200,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
            child: Text(
          "Dive into the facinating world of coffee with ",
          style: context.typography.body,
        )),
        Center(
            child: Text(
          "Caffely. Discover unique and delightfull coffee ",
          style: context.typography.body,
        )),
        Center(
            child: Text(
          "Flavours. one sip at a time",
          style: context.typography.body,
        )),
        const SizedBox(
          height: 50,
        ),
        Divider(
          color: context.colors.subtextclr,
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: context.colors.buttonclr,
                      minimumSize: const Size(360, 50)),
                  child: Text(constants.txtstarted,
                      style: context.typography.buttontext)),
            ),
          ],
        ),
      ],
    );
  }
}
