import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:caffely/view/screens/home/about_coffeshope.dart';
import 'package:caffely/view/screens/home/offers.dart';
import 'package:caffely/view/screens/home/rateings_reviews.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../view_model/popularmenu_controller.dart';

class CoffeeshopeDetails extends HookWidget {
  const CoffeeshopeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(initialPage: 0);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 350,
                  decoration: const BoxDecoration(color: Colors.amber),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 45,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                    Icons.arrow_back_ios_new_rounded)),
                          ),
                          const Spacer(),
                          CircleAvatar(
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.favorite_border)),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          CircleAvatar(
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.share)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 170,
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: 5,
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
                ),
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
                const Text(
                  "Caffely Astoria Aromas",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutCoffeshope(),
                          ));
                    },
                    icon: const Icon(Icons.keyboard_arrow_right))
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Divider(),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.star,
                      color: Colors.amber,
                    )),
                const Text(
                  "4.8",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 16,
                ),
                const Text("(2.4k reviews)"),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RatingReviewsScreen(),
                          ));
                    },
                    icon: const Icon(Icons.keyboard_arrow_right))
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Divider(),
            ),
            const Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Icon(
                      Icons.location_on_rounded,
                      color: Color.fromARGB(255, 0, 175, 102),
                    ),
                    Text(
                      "4.8 Km",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 43,
                    ),
                    Text("Available for pick-up and delivary"),
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Divider(),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                const Icon(
                  Icons.percent_rounded,
                  color: Color.fromARGB(255, 0, 175, 102),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "5 promos available",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OfferScreen(),
                          ));
                    },
                    icon: const Icon(Icons.keyboard_arrow_right))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent),
                  child: const Text("Coffee"),
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Baked")),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Sandwitch")),
                ElevatedButton(onPressed: () {}, child: const Text("Cakes"))
              ],
            ),
            SizedBox(
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: popularlist.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 145,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.amber,
                                  image: DecorationImage(
                                      image:
                                          AssetImage(popularlist[index].img))),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(popularlist[index].name,style: context.typography.textfieldbody,),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(popularlist[index].price),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
