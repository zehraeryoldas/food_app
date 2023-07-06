import 'package:flutter/material.dart';

import '../data/data.dart';

class PopularFood extends StatefulWidget {
  const PopularFood({super.key});

  @override
  State<PopularFood> createState() => _PopularFoodState();
}

class _PopularFoodState extends State<PopularFood> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Data.popularFoodList.length,
          itemBuilder: (context, index) {
            var popularFoodList = Data.popularFoodList[index];
            return Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Stack(children: [
                    Container(
                      height: 225,
                      constraints: BoxConstraints(
                        minWidth: 170,
                      ),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 2,
                              color: Colors.grey.withOpacity(0.5),
                              offset: Offset(0, 3))
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("${popularFoodList.image}")),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              height: 130,
                              width: 160,
                            ),
                            Text(
                              "${popularFoodList.bigText}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                            Text(
                              "${popularFoodList.smallText}",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$${popularFoodList.money}",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                  size: 26,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            );
          }),
    );
  }
}
