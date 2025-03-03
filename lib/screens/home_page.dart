import 'package:flutter/material.dart';

import '../components/category_item.dart';
import 'numbers_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text("Toku"),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context , MaterialPageRoute(builder: (context) => NumbersPage()));
            },
            text: 'Number',
            color: Color(0xffEF9235),
          ),
          Category(
            text: 'Family Members',
            color: Color(0xff2eca5f),
          ),
          Category(
            text: 'Colors',
            color: Color(0xff20bfa2),
          ),
          Category(
            text: 'Phrases',
            color: Color(0xff2d6ac5),
          ),
        ],
      ),
    );
  }
}
