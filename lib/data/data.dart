import 'package:food_app/model/category_model.dart';

import '../model/newest.dart';
import '../model/popular_food.dart';

class Data {
  static final categoriesList = [
    Categoryy(image: "assets/images/drink.png"),
    Categoryy(image: "assets/images/biryani.png"),
    Categoryy(image: "assets/images/burger.png"),
    Categoryy(image: "assets/images/pizza.png"),
    Categoryy(image: "assets/images/salan.png"),
  ];
  static final popularFoodList = [
    PopularFoodModel(
        image: "assets/images/burger.png",
        bigText: "Hot Burger",
        smallText: "Taste Our hot Burger",
        money: 10),
    PopularFoodModel(
        image: "assets/images/biryani.png",
        bigText: "Biryani",
        smallText: "Taste Our Biryani",
        money: 10),
    PopularFoodModel(
        image: "assets/images/drink.png",
        bigText: "Drink",
        smallText: "Taste Cold Drink",
        money: 10),
    PopularFoodModel(
        image: "assets/images/pizza.png",
        bigText: "Big Pizza",
        smallText: "Taste Our hot Pizza",
        money: 10),
    PopularFoodModel(
        image: "assets/images/salan.png",
        bigText: "Chicken Salan",
        smallText: "Taste Our Chicken Salan",
        money: 10),
  ];
  static final newestList = [
    NewestModel(
        image: "assets/images/burger.png",
        bigText: "Hot Burger",
        smallText: "Taste Our hot Pizza,"
            "We Provide Our Great Foods",
        money: 10,
        score: 5),
    NewestModel(
        image: "assets/images/biryani.png",
        bigText: "Biryani",
        smallText: "Taste Our hot Pizza,"
            " We Provide Our Great Foods",
        money: 10,
        score: 4),
    NewestModel(
        image: "assets/images/drink.png",
        bigText: "Drink",
        smallText: "Taste Our hot Pizza, "
            "We Provide Our Great Foods",
        money: 10,
        score: 3),
    NewestModel(
        image: "assets/images/pizza.png",
        bigText: "Big Pizza",
        smallText: "Taste Our hot Pizza, "
            "We Provide Our Great Foods",
        money: 10,
        score: 3),
    NewestModel(
        image: "assets/images/salan.png",
        bigText: "Chicken Salan",
        smallText: "Taste Our hot Pizza,"
            " We Provide Our Great Foods",
        money: 10,
        score: 1),
  ];
}
