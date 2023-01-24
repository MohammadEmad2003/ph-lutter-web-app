import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:ultimatekmkfinal/screens/home/pages/graph.dart';
import 'pages/predict.dart';
import '../../constants.dart';
import 'pages/home_page.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'pages/maingraph.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final screens = const [
    HomePage(),
    predict(),
    mainGraph(),
    graphs(),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.01,
        title: const Text(
          'pH-lutter',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: kDarkBlack,
        
      ),
      // bottomNavigationBar: _buildBottomBar(),
      body: Stack(children: [
        IndexedStack(
          index: _currentIndex,
          children: screens,
        ),
        Align(alignment: Alignment.bottomCenter, child: _buildBottomBar())
      ]),
    );
  }

  Widget _buildBottomBar() {
    return Container(
      height: 76,
      margin: const EdgeInsets.all(12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          iconSize: 28,
          backgroundColor: kBlack,
          selectedItemColor: kGreen,
          selectedLabelStyle:
              const TextStyle(fontFamily: "MYRIADPRO", fontSize: 15),
          unselectedItemColor: kGrey,
          unselectedLabelStyle:
              const TextStyle(fontFamily: "MYRIADPRO", fontSize: 13),
          items: [
            BottomNavigationBarItem(
              icon: Icon(TernavIcons.bold.home_2),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.online_prediction,
              ),
              label: "Prediction",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.auto_graph),
              label: 'Live Data',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.graphic_eq_outlined),
              label: "Graph",
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
