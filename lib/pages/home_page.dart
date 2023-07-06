import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/view/drawer_menu.dart';
import 'package:food_app/view/newest.dart';

import '../view/category.dart';
import '../view/popular_food.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
            child: Column(
          children: [
            appbarwidget(),
            _sizedBox(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: _searchContainer("What would you like to have?"),
            ),
            _sizedBox(),
            _bigText("Categories"),
            _sizedBox(),
            CategoryData(),
            _sizedBox(),
            _bigText("Popular"),
            _sizedBox(),
            PopularFood(),
            _sizedBox(),
            _bigText("Newest"),
            _sizedBox(),
            Newest()
          ],
        )),
      ),
      drawer: DrawerMenu(),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(0, 3))
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CartPage()));
          },
          backgroundColor: Colors.white,
          child: Icon(
            CupertinoIcons.cart,
            size: 20,
            color: Colors.red,
          ),
        ),
      ),
    );
  }

  Padding appbarwidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              child: _myContainer(50, 50, Icon(CupertinoIcons.bars))),
          InkWell(
              onTap: () {},
              child: _myContainer(50, 50, Icon(Icons.notifications)))
        ],
      ),
    );
  }

  Container _searchContainer(String text) {
    return Container(
        width: double.infinity,
        height: 50,
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.red,
              ),
              label: Text(text),
              suffixIcon: Icon(
                Icons.filter_list,
              ),
              border: InputBorder.none),
        ),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, 3))
        ], color: Colors.white, borderRadius: BorderRadius.circular(18)));
  }

  Padding _bigText(String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 280),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }

  SizedBox _sizedBox() {
    return SizedBox(
      height: 8,
    );
  }

  Container _myContainer(double en, double boy, Icon icon) {
    return Container(
      width: en,
      height: boy,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, 3) //gölgenin kooordinatlarını belirtiyor
              )
        ],
      ),
      child: icon,
    );
  }
}
