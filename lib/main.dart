import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_and_grid/widgets/grid_view.dart';
import 'package:list_and_grid/widgets/list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const showGrid = true; // Set to false to show ListView

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter layout demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showGrid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: showGrid ? const Text('Grid View') : const Text('List View'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Grid', style: TextStyle(fontSize: 20),),
              const SizedBox(width: 20,),
              CupertinoSwitch(
                value: showGrid,
                onChanged: (value) {
                  setState(() {
                    showGrid = value;
                  });
                },
              ),
            ],
          ),
          showGrid
              ? Expanded(child: buildGrid())
              : Expanded(child: buildList())
        ],
      ),
    );
  }
}
