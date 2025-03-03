import 'package:flutter/material.dart';

import '../models/number.dart';
class Item extends StatelessWidget {
  const Item({Key? key, required this.number}) : super(key: key);
  final Number number ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xffEF9235),
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF6DC),
            child: Image.asset(
              number.image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                number.jpName,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                number.enName,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ]),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),

        ],
      ),
    );
  }
}
