import 'package:first_project/pageone.dart';
import 'package:first_project/pagetwo.dart';
import 'package:flutter/material.dart';

class MyAds extends StatelessWidget {
  const MyAds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "My Adds",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(228, 220, 220, 1),
          bottom: TabBar(tabs: [
            Tab(
              text: "My Ads",
              icon: Icon(Icons.shopping_basket_outlined),
            ),
            Tab(
              text: "My Favorite",
              icon: Icon(Icons.favorite_border_outlined),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Pageone(),
          Pagetwo(),
        ]),
      ),
    );
  }
}
