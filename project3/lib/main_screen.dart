import 'package:flutter/material.dart';
import 'package:project2_layout_part2/done_tourism_list.dart';
import 'package:project2_layout_part2/tourism_list.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text('Wisata Surabaya'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                return const DoneTourismList();
              }),);
            },
          ),
        ],
      ),
      body: TourismList(),
    );
  }
}
