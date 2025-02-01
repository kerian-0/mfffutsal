import 'package:flutter/material.dart';
import 'package:mff_futsal_v0/views/apppBar.dart';
import 'package:mff_futsal_v0/views/bottomNavBar.dart';
import 'package:mff_futsal_v0/views/match.dart';

import 'views/containerBox.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 3, 158, 167),
          title: AnimateText(),
        ),
        body: Column(
          children: [
            Containerbox(
              datte: "2-2-2025",
              initialIndex: 0,
            ),
            MatchG()
          ],
        ),
        bottomNavigationBar: Bottomnavbar());
  }
}
