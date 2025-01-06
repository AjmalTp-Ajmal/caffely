import 'package:caffely/core/theme/color_extension.dart';
import 'package:caffely/core/theme/extensions/space_extensions.dart';
import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:caffely/view/screens/home/nearby_shop.dart';
import 'package:caffely/view/screens/home/popular_menu.dart';
import 'package:caffely/view/widgets/home/bottom_navigationbar_widget.dart';
import 'package:caffely/view/widgets/home/offerview_widget.dart';
import 'package:caffely/view_model/nearbyshop_controller.dart';
import 'package:caffely/view_model/popularmenu_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeFullpage extends HookWidget {
  const HomeFullpage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(initialPage: 0);

    final List<Widget> pages = [
      const offerview(),
      const offerview2(),
      const offerview3(),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 16,
                ),
                CircleAvatar(),
                SizedBox(
                  width: 16,
                ),
                Column(
                  children: [
                    Text(
                      "Good morning ! 🌥️",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    Text(
                      "Andrew Ainsley",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(),
                ),
                SizedBox(
                  width: 16,
                ),
              ],
            ),
            // const offerview(),
            SizedBox(
              height: 220,
              child: Stack(children: [
                PageView.builder(
                  controller: pageController,
                  onPageChanged: (int page) {},
                  itemCount: pages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return pages[index % pages.length];
                  },
                ),
                Positioned(
                  bottom: context.space.space_300,
                  right: 190,
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: ExpandingDotsEffect(
                        activeDotColor: context.colors.buttonclr,
                        dotColor: Colors.grey,
                        dotHeight: 10,
                        dotWidth: 10),
                  ),
                )
              ]),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                Text(
                  "Nearby Shope",
                  style: context.typography.textfieldbody,
                ),
                const Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NearbyShop(),
                          ));
                    },
                    child: Text(
                      "view all",
                      style: context.typography.buttonsubtext,
                    )),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NearbyShop(),
                          ));
                    },
                    icon: Icon(
                      Icons.chevron_right_rounded,
                      color: context.colors.buttonclr,
                    ))
              ],
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: nearbyshopelist.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Container(
                              height: 145,
                              width: 145,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.amber,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          nearbyshopelist[index].img),
                                      fit: BoxFit.fill)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 24,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey[850],
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star_outlined,
                                      size: 20,
                                      color: Colors.yellow[800],
                                    ),
                                    Text("4.1",
                                        style: context.typography.smallboldbody)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                nearbyshopelist[index].name,
                                style: context.typography.bodybold,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on,
                                  color: context.colors.buttonclr),
                              Text(nearbyshopelist[index].distance),
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                Text(
                  "Popular menu",
                  style: context.typography.textfieldbody,
                ),
                const Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PopularMenu(),
                          ));
                    },
                    child: Text(
                      "view all",
                      style: context.typography.buttonsubtext,
                    )),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PopularMenu(),
                          ));
                    },
                    icon: Icon(
                      Icons.chevron_right_rounded,
                      color: context.colors.buttonclr,
                    ))
              ],
            ),
            Expanded(
              child: GridView.builder(
                itemCount: popularlist.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 142,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: context.colors.subtextclr,
                              image: DecorationImage(
                                  image: AssetImage(popularlist[index].img))),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  popularlist[index].name,
                                  style: context.typography.bodybold,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  popularlist[index].price,
                                  style: context.typography.buttonsubtext,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const bottom_navigationbar(),
          ],
        ),
      ),
    );
  }
}


//  ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: nearbyshopelist.length,
//             itemBuilder: (context, index) {
//               return Padding(
//                 padding: const EdgeInsets.all(6.0),
//                 child: Column(
//                   children: [
//                     Stack(
//                       children: [
//                         Container(
//                           height: 145,
//                           width: 145,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               color: Colors.amber,
//                               image: DecorationImage(
//                                   image: AssetImage(nearbyshopelist[index].img),
//                                   fit: BoxFit.fill)),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Container(
//                             height: 24,
//                             width: 50,
//                             decoration: const BoxDecoration(
//                               color: Colors.black,
//                             ),
//                             child: const Row(
//                               children: [
//                                 Icon(
//                                   Icons.star_outlined,
//                                   color: Colors.amber,
//                                 ),
//                                 Text(
//                                   "4.1",
//                                   style: TextStyle(color: Colors.white),
//                                 )
//                               ],
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         Row(
//                           children: [
//                             const SizedBox(
//                               width: 20,
//                             ),
//                             Text(nearbyshopelist[index].name),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             const SizedBox(
//                               width: 16,
//                             ),
//                             Icon(Icons.location_on,
//                                 color: context.colors.buttonclr),
//                             Text(nearbyshopelist[index].distance),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               );
//             },
//           )