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
            bottom: 150,
            right: 170,
            child: SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: const ExpandingDotsEffect(
                  activeDotColor: Color.fromARGB(
                    255,
                    0,
                    175,
                    102,
                  ),
                  dotColor: Colors.grey,
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
    double h = size.height - 100;

    final path = Path();
    path.lineTo(0, h);
    path.quadraticBezierTo(w * 0.5, h + 100, w, h);
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
    return Column(
      children: [
        ClipPath(
          clipper: MyClip(),
          child: Container(
            height: 440,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 0, 175, 102),
                image: DecorationImage(
                    image: AssetImage("assets/images/mobile1.jpg"))),
          ),
        ),
        const Center(
          child: Text(
            "Get Your Coffee-",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Center(
          child: Text(
            "Anytime, Anywhere",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Center(
            child: Text(
          "Choose the way you want to enjoy your coffee ",
          style: TextStyle(fontSize: 16),
        )),
        const Center(
            child: Text(
          " with Caffely. Just a few taps on the app, and  ",
          style: TextStyle(fontSize: 16),
        )),
        const Center(
            child: Text(
          "your coffee is ready for you.",
          style: TextStyle(fontSize: 16),
        )),
        const SizedBox(
          height: 50,
        ),
        const Divider(),
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
                  backgroundColor: Colors.green.shade100,
                  minimumSize: const Size(170, 50)),
              child: const Text(
                "Skip",
                style: TextStyle(color: Color.fromARGB(255, 0, 175, 102)),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 175, 102),
                    minimumSize: const Size(170, 50)),
                child: const Text(
                  "Continue",
                  style: TextStyle(color: Colors.white),
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
    return Column(
      children: [
        ClipPath(
          clipper: MyClip(),
          child: Container(
            height: 440,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 0, 175, 102),
                borderRadius: BorderRadiusDirectional.vertical(
                    bottom: Radius.circular(60)),
                image: DecorationImage(
                    image: AssetImage("assets/images/mobile2.jpg"))),
          ),
        ),
        const Center(
          child: Text(
            "Seamless Payments With",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Center(
          child: Text(
            "Our Secure Wallet",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Center(
            child: Text(
          "Say goodbye to hassle and hello to seamless ",
          style: TextStyle(fontSize: 16),
        )),
        const Center(
            child: Text(
          " transaction with caffely's secure wallet ",
          style: TextStyle(fontSize: 16),
        )),
        const Center(
            child: Text(
          "Makeing payments has never been easier",
          style: TextStyle(fontSize: 16),
        )),
        const SizedBox(
          height: 50,
        ),
        const Divider(),
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
                  backgroundColor: Colors.green.shade100,
                  minimumSize: const Size(170, 50)),
              child: const Text(
                "Skip",
                style: TextStyle(color: Color.fromARGB(255, 0, 175, 102)),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 175, 102),
                    minimumSize: const Size(170, 50)),
                child: const Text(
                  "Continue",
                  style: TextStyle(color: Colors.white),
                )),
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
    return Column(
      children: [
        ClipPath(
          clipper: MyClip(),
          child: Container(
            height: 440,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 0, 175, 102),
                borderRadius: BorderRadiusDirectional.vertical(
                    bottom: Radius.circular(60)),
                image: DecorationImage(
                    image: AssetImage("assets/images/mobile3.jpg"))),
          ),
        ),
        const Center(
          child: Text(
            "Explore the World of",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Center(
          child: Text(
            "Coffee Right now",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Center(
            child: Text(
          "Dive into the facinating world of coffee with ",
          style: TextStyle(fontSize: 16),
        )),
        const Center(
            child: Text(
          "Caffely. Discover unique and delightfull coffee ",
          style: TextStyle(fontSize: 16),
        )),
        const Center(
            child: Text(
          "Flavours. one sip at a time",
          style: TextStyle(fontSize: 16),
        )),
        const SizedBox(
          height: 50,
        ),
        const Divider(),
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
                      backgroundColor: const Color.fromARGB(255, 0, 175, 102),
                      minimumSize: const Size(360, 50)),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(color: Color(0xFFFFFFFF)),
                  )),
            ),
          ],
        ),
      ],
    );
  }
}
