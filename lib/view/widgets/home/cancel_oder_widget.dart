
import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:caffely/core/theme/extensions/typography.dart';
import 'package:caffely/view_model/canceled_controller.dart';
import 'package:flutter/material.dart';

class canceloder extends StatelessWidget {
  const canceloder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Expanded(
                child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: GridView.builder(
                    itemCount: cancellist.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.all(8.0),
                            child: Container(
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius
                                          .circular(10),
                                  border: Border.all(
                                      color: context
                                          .colors
                                          .subtxtclrbold)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets
                                            .all(8.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment
                                              .start,
                                      children: [
                                        Container(
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      10),
                                              color: context
                                                  .colors
                                                  .subtextclr),
                                          child: Image(
                                              image: AssetImage(
                                                  cancellist[index]
                                                      .img)),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start,
                                          children: [
                                            Row(
                                              children: [
                                                const SizedBox(
                                                  width:
                                                      10,
                                                ),
                                                Text(
                                                  cancellist[index]
                                                      .name,
                                                  style: context
                                                      .typography
                                                      .textfieldbody,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                const SizedBox(
                                                  width:
                                                      10,
                                                ),
                                                Text(
                                                  cancellist[index]
                                                      .subname,
                                                  style: context
                                                      .typography
                                                      .body,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                const SizedBox(
                                                  width:
                                                      10,
                                                ),
                                                Container(
                                                  height:
                                                      30,
                                                  width:
                                                      50,
                                                  decoration: BoxDecoration(
                                                      border:
                                                          Border.all(color: context.colors.buttonclr),
                                                      borderRadius: BorderRadius.circular(5)),
                                                  child:
                                                      Center(
                                                    child:
                                                        Text(
                                                      cancellist[index].text,
                                                      style:
                                                          context.typography.subsmallbody,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        IconButton(
                                            onPressed:
                                                () {},
                                            icon: const Icon(
                                                Icons
                                                    .chevron_right_rounded))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                )
              ],
            )),
            Container(
              height: 50,
              color: Colors.amber,
              child: const Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home),
                  Icon(Icons.home),
                  Icon(Icons.home),
                  Icon(Icons.home)
                ],
              ),
            )
          ],
        ),
      );
  }
}