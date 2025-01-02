// import 'package:caffely/core/theme/color_extension.dart';
// import 'package:caffely/core/theme/extensions/space_extensions.dart';
// import 'package:caffely/core/theme/extensions/theme_extension.dart';
// import 'package:caffely/core/theme/extensions/typography.dart';
// import 'package:caffely/view/screens/home/nearby_shop.dart';
// import 'package:caffely/view/widgets/home/offerview_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class HomeFullpage extends HookWidget {
//   const HomeFullpage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final PageController pageController = PageController(initialPage: 0);

//     final List<Widget> pages = [
//       const offerview(),
//       const offerview2(),
//       const offerview3(),
//     ];

//     // Sample data for nearby shops
//     final List<NearByShop> nearbyshoplist = [
//       NearByShop(
//         img: 'assets/images/shop1.png', // Replace with actual image paths
//         name: 'Shop 1',
//         rating: 4.5,
//         distance: '1.2 km',
//       ),
//       NearByShop(
//         img: 'assets/images/shop2.png',
//         name: 'Shop 2',
//         rating: 4.2,
//         distance: '0.8 km',
//       ),
//       // Add more shop objects as needed
//     ];

//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 16,
//             ),
//             const Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   width: 16,
//                 ),
//                 CircleAvatar(),
//                 SizedBox(
//                   width: 16,
//                 ),
//                 Column(
//                   children: [
//                     Text(
//                       "Good morning ! 🌥️",
//                       style: TextStyle(color: Colors.black, fontSize: 14),
//                     ),
//                     Text(
//                       "Andrew Ainsley",
//                       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: CircleAvatar(),
//                 ),
//                 SizedBox(
//                   width: 16,
//                 ),
//               ],
//             ),
//             const offerview(),
//             // ... (Optional) PageView and SmoothPageIndicator code

//             Row(
//               children: [
//                 const SizedBox(
//                   width: 16,
//                 ),
//                 Text(
//                   "Nearby Shops",
//                   style: context.typography.textfieldbody,
//                 ),
//                 const Spacer(),
//                 TextButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const NearbyShop(),
//                       ),
//                     );
//                   },
//                   child: Text(
//                     "view all",
//                     style: context.typography.buttonsubtext,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const NearbyShop(),
//                       ),
//                     );
//                   },
//                   icon: Icon(
//                     Icons.chevron_right_rounded,
//                     color: context.colors.buttonclr,
//                   ),
//                 ),
//               ],
//             ),

//             SizedBox(
//               height: 150, // Adjust height as needed
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: nearbyshoplist.length,
//                 itemBuilder: (context, index) {
//                   final shop = nearbyshoplist[index];
//                   return Padding(
//                     padding: const EdgeInsets.all(6.0),
//                     child: Column(
//                       children: [
//                         Stack(
//                           children: [
//                             Container(
//                               height: 145,
//                               width: 145,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                                 color: Colors.amber,
//                                 image: DecorationImage(
//                                   image: AssetImage(shop.img),
//                                   fit: BoxFit.fill,
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Container(
//                                 height: 24,
//                                 width: 50,
//                                 decoration: const BoxDecoration(
//                                   color: Colors.black,
//                                 ),
//                                 child: Row(
//                                   children: [
//                                     Icon(
//                                       Icons.star_outlined,
//                                       color: Colors.amber,
//                                     ),
//                                     Text(
//                                       shop.rating.toString(),
//                                       style: const TextStyle(color: Colors.white),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Row(
//                               children: [
//                                 const SizedBox(
//                                   width: 20,
//                                 ),
//                                 Text(shop.name),
//                               ],
//                             ),
//                             Row(
//                               children: [
//                                 const SizedBox(
//                                   width: 16,
//                                 ),
//                                 Icon(Icons.location_on,
//                                     color: context.colors.buttonclr),
//                                 Text(shop.distance),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// class NearByShop {
//   final String img;
//   final String name;
//   final double rating;
//   final String distance;

//   NearByShop({
//     required this.img,
//     required this.name,
//     required this.rating,
//     required this.distance,
//   });
// }