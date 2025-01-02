import 'package:caffely/view_model/favoritecoffe_controller.dart';

import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

class Favoritecoffe extends HookWidget {
  const Favoritecoffe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ListTile(
            leading: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_back)),
            title: const Text(
              "Favorite coffee",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              child: GridView.builder(
                  itemCount: favoritelist.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                                        AssetImage(favoritelist[index].img))),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(favoritelist[index].name),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(favoritelist[index].price),
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
