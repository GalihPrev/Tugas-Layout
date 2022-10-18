// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:tugas/test.dart';
import 'package:tugas/testpage3.dart';

class scrollview extends StatefulWidget {
  const scrollview({Key? key}) : super(key: key);

  @override
  State<scrollview> createState() => _scrollviewState();
}

class _scrollviewState extends State<scrollview> {
  int _selectedIndex = 0;

  static const List _wlistWidget = [
    // lIST PAGE SING PENGEN PINDAH
    Home(),
    test(),
    test3(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Akses page
        child: _wlistWidget.elementAt(_selectedIndex),
        // ----
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 4, 92, 255),
        onTap: _onItemTapped,
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 150,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(

                    // lek butuh Gambar
                    // image: const DecorationImage(
                    //     image: AssetImage('assets/images/Donactive.jpg'),
                    //     fit: BoxFit.cover),
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(100)),
                margin: const EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    "Page $index",
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: 10,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/Donactive.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    "Page $index",
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
