import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/number.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.item_models, required this.color,}) : super(key: key);
  final ItemModels item_models;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF6DC),
            child: Image.asset(
              item_models.image!,
            ),
          ),
          Expanded(child: ItemInfo(item_models: item_models)),
        ],
      ),
    );
  }
}


class ItemInfo extends StatelessWidget {
  const ItemInfo({Key? key, required this.item_models}) : super(key: key, );
  final ItemModels item_models;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child:
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              item_models.jpName,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(
              item_models.enName,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ]),
        ),
        Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: () {
            final player = AudioPlayer();
            player.play(AssetSource(item_models.sound));
          },
          icon: Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }
}





class PhrasesItem extends StatelessWidget {
  const PhrasesItem({Key? key, required this.item, required this.color}) : super(key: key);
final ItemModels item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: ItemInfo(item_models: item),
    );
  }
}
