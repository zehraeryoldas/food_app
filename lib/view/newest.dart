import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_app/data/data.dart';
import 'package:food_app/model/newest.dart';

class Newest extends StatefulWidget {
  const Newest({super.key});

  @override
  State<Newest> createState() => _NewestState();
}

class _NewestState extends State<Newest> {
  Icon? _selectedIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: Data.newestList.length,
          itemBuilder: (context, index) {
            var _categoryList = Data.newestList[index];

            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      constraints: const BoxConstraints(minWidth: 200),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: Offset(0, 3),
                            color: Colors.grey.withOpacity(0.5),
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("${_categoryList.image}")),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              height: 120,
                              width: 150,
                            ),
                          ),
                          Container(
                              width: 190,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "${_categoryList.bigText}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                                  _myText(
                                      _categoryList,
                                      "${_categoryList.smallText}",
                                      Colors.black),
                                  RatingBar.builder(
                                      initialRating: _categoryList.score ??
                                          0.0, //ilk derecelendirmeyi temsil eder
                                      minRating: 1, //en düşük derecelendirme
                                      direction: Axis.horizontal,
                                      allowHalfRating:
                                          true, //yarım derecelendirme desteği
                                      itemCount: 5, //kaç yıldız olacak
                                      itemSize:
                                          18, //Çubuktaki her derecelendirme öğesinin boyutlarını tanımlar.

                                      itemBuilder: (context, _) =>
                                          _selectedIcon ??
                                          Icon(
                                            Icons.star,
                                            color: Colors.red,
                                          ),
                                      onRatingUpdate: (rating) {
                                        //değişiklikleri günceller takip eder
                                        _categoryList.score = rating;
                                        setState(() {});
                                      }),
                                  _myText(_categoryList,
                                      "\$${_categoryList.money}", Colors.red)
                                ],
                              )),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                  size: 26,
                                ),
                                Icon(
                                  CupertinoIcons.cart,
                                  color: Colors.red,
                                  size: 26,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            );
          }),
    );
  }

  Text _myText(NewestModel _categoryList, String text, Color colors) {
    return Text(
      text,
      style: TextStyle(fontSize: 15, color: colors),
    );
  }
}
