import 'package:flutter/material.dart';

Widget buildList() {
  return ListView(
    children:
    [listContainer('cat')] +
        buildTileList(7, 'cat') +
        [listContainer('dog')] +
        buildTileList(5, 'dog'),
  );
}

Container imageTile(String element, Image image) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: image,
        ),
        Text(element,
            style: const TextStyle(
              fontSize: 25,
            )),
      ],
    ),
  );
}

List<Container> buildTileList(int count, String element) {
  return List.generate(
      count,
      (i) => imageTile(
            element,
            Image.asset('images/${element}0${i + 1}.jpg'),
          ));
}

Widget listContainer(String theme) {
  return Container(
    color: Colors.blue.shade200,
    child: Center(
      child: Text(
        theme,
        style: const TextStyle(fontSize: 20),
      ),
    ),
  );
}
