import 'package:flutter/material.dart';

Widget buildGrid() {
  return GridView.extent(
      maxCrossAxisExtent: 200,
      padding: const EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: [gridContainer('cat')] +
          buildGridTileList(7, 'cat') +
          [gridContainer('dog')] +
          buildGridTileList(5, 'dog'));
}

List<Container> buildGridTileList(int count, String element) => List.generate(
    count,
    (i) => Container(child: Image.asset('images/${element}0${i + 1}.jpg')));

Widget gridContainer(String theme) {
  return Container(
    color: Colors.blue.shade200,
    child: Center(
      child: Text(
        theme,
        style: const TextStyle(fontSize: 80),
      ),
    ),
  );
}
