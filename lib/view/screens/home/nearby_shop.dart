import 'package:caffely/core/theme/color_extension.dart';
import 'package:caffely/view_model/nearbyshop_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class NearbyShop extends HookWidget {
  const NearbyShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ListTile(
            leading: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_back_sharp)),
            title: const Text("Nearby Shop"),
          ),
          Expanded(
              child: GridView.builder(
                  itemCount: nearbyshopelist.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        children: [
                          Stack(
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
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                  ),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.star_outlined,
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        "4.1",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(nearbyshopelist[index].name),
                                ],
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 16,
                                  ),
                                   Icon(
                                    Icons.location_on,
                                    color:Theme.of(context).extension<ColorExtension>()!.buttonclr
                                  ),
                                  Text(nearbyshopelist[index].distance),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }))
        ],
      )),
    );
  }
}
