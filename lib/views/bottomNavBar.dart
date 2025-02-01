import 'package:flutter/material.dart';

class Bottomnavbar extends StatelessWidget {
  const Bottomnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(backgroundColor: Colors.cyan, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.sports_bar_outlined), label: "Match"),
        BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
        // BottomNavigationBarItem(
        //     icon: Icon(Icons.table_chart_sharp), label: "Table"),
        BottomNavigationBarItem(
            icon: Icon(Icons.score_rounded), label: "Top Scorer"),
      ]);
  }
}