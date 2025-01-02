import 'package:caffely/view/widgets/home/review_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RatingReviewsScreen extends HookWidget {
  RatingReviewsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
            child: Text(
          "Rating & Reviews",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Average Rating
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "4.8",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "(2.4k reviews)",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Container(
                  width: 1,
                  height: 120,
                  color: Colors.black12,
                ),
                SizedBox(width: 20),
                // Rating Bars
                Expanded(
                  child: Column(
                    children: List.generate(5, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3.0),
                        child: Row(
                          children: [
                            Text(
                              "${5 - index}",
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: Stack(
                                children: [
                                  Container(
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  FractionallySizedBox(
                                    widthFactor: [
                                      0.9,
                                      0.7,
                                      0.1,
                                      0.2,
                                      0.05
                                    ][index],
                                    child: Container(
                                      height: 5,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black12,
            indent: 20,
            endIndent: 20,
            thickness: 0.7,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buttonTExt(
                  "Sort by",
                  Icon(
                    Icons.swap_vert,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                buttonTExt(
                  "5",
                  Icon(
                    Icons.star_border_rounded,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                buttonTExt(
                  "4",
                  Icon(
                    Icons.star_border_rounded,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                buttonTExt(
                  "3",
                  Icon(
                    Icons.star_border_rounded,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                buttonTExt(
                  "2",
                  Icon(
                    Icons.star_border_rounded,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                buttonTExt(
                  "1",
                  Icon(
                    Icons.star_border_rounded,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          ReviewCard(
            imageUrl:
                'https://images.unsplash.com/photo-1494790108377-be9c29b29330?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGdpcmwlMjBwcm9maWxlfGVufDB8fDB8fHww',
            name: 'Augustina Midgett',
            days: '5 days ago',
            content:
                "I absolutely love the cozy ambiance and friendly \n staff at this coffee shop. The 'Berry Bliss' coffee is \n my favorite! Perfect spot to unwind and enjoy a cup  \n of happiness 🥰🥰",
          ),
          ReviewCard(
              imageUrl:
                  "https://static.vecteezy.com/system/resources/thumbnails/047/462/770/small_2x/positive-man-on-clean-background-photo.jpg",
              name: "Tanner Stafford",
              days: "2 days ago",
              content:
                  "Great coffee selection! i tried the 'Turquoise Cup - \n Ocean Breeze Iced Coffee.'and it was refreshing.\n Service was quick and efficient too 🔥"),
          ReviewCard(
            imageUrl:
                'https://images.unsplash.com/photo-1494790108377-be9c29b29330?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGdpcmwlMjBwcm9maWxlfGVufDB8fDB8fHww',
            name: 'Krishna Barbe',
            days: '3 days ago',
            content:
                "I absolutely love the cozy ambiance and friendly \n staff at this coffee shop. The 'Berry Bliss' coffee is \n my favorite! Perfect spot to unwind and enjoy a cup  \n of happiness 🥰🥰",
          ),
        ],
      ),
    );
  }
}

Widget buttonTExt(String text, Icon icon) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
      ),
      onPressed: () {},
      label: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
      icon: icon,
    ),
  );
}
