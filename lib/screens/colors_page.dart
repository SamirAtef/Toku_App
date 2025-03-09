import 'package:flutter/material.dart';
import '../components/item.dart';
import '../models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<ItemModels> itemModels = const [
    ItemModels(
        sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'ichi',
        enName: 'one'),
    ItemModels(
        sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Ni',
        enName: 'two'),
    ItemModels(
        sound: 'sounds/colors/dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'San',
        enName: 'three'),
    ItemModels(
        sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Shi',
        enName: 'four'),
    ItemModels(
        sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Go',
        enName: 'five'),
    ItemModels(
        sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Roku',
        enName: 'six'),
    ItemModels(
        sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Sebun',
        enName: 'seven'),
    ItemModels(
        sound: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'hichi',
        enName: 'eight'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text("Numbers"),
      ),
      body: ListView.builder(
          itemCount: itemModels.length,
          itemBuilder: (context, index) {
            return Item(
              item_models: itemModels[index],
              color: Color(0xff20bfa2),
            );
          }),
    );
  }
}
