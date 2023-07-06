import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_app/data/data.dart';

import '../model/category_model.dart';

class CategoryData extends StatefulWidget {
  const CategoryData({super.key});

  @override
  State<CategoryData> createState() => _CategoryDataState();
}

class _CategoryDataState extends State<CategoryData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Data.categoriesList.length,
          itemBuilder: (context, index) {
            var _categoryList = Data.categoriesList[index];
            return Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 120,
                    constraints: const BoxConstraints(
                      minWidth: 90,
                    ),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 3,
                            color: Colors.black12,
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        image: DecorationImage(
                            image: AssetImage(
                              "${_categoryList.image}",
                            ),
                            fit: BoxFit.contain)),
                  ),
                )
              ],
            );
          }),
    );
  }
}
