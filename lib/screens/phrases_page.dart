import 'package:flutter/material.dart';
import '../components/item.dart';
import '../models/number.dart';



class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<ItemModels> itemModels = const [
    ItemModels(
        sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'ichi',
        enName: 'one'),
    ItemModels(
        sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Ni',
        enName: 'two'),
    ItemModels(
        sound: 'sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'San',
        enName: 'three'),
    ItemModels(
        sound: 'sounds/family_members/grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Shi',
        enName: 'four'),
    ItemModels(
        sound: 'sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Go',
        enName: 'five'),
    ItemModels(
        sound: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Roku',
        enName: 'six'),
    ItemModels(
        sound: 'sounds/family_members/older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Sebun',
        enName: 'seven'),
    ItemModels(
        sound: 'sounds/family_members/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'hichi',
        enName: 'eight'),
    ItemModels(
        sound: 'sounds/family_members/younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Kyu',
        enName: 'nine'),
    ItemModels(
        sound: 'sounds/family_members/younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Ju',
        enName: 'ten'),

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
          itemBuilder: (context, index){
            return PhrasesItem(item: itemModels[index],color: Color(0xff2d6ac5), );
          }),
    );
  }
}
