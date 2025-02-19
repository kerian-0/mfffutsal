import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mff_futsal_v0/views/apppBar.dart';
import 'package:mff_futsal_v0/views/page.dart';
import 'package:mff_futsal_v0/views/splash_screen.dart';
import 'firebase_options.dart';
import 'views/neww.dart';
import 'views/scorer.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  // Function to change index when a tab is tapped
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Pagee(),
    Tablee(),
    Scorer(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 206, 32, 44),
            title: AnimateText()),
        // body: Column(
        //   children: [
        //     Containerbox(
        //       datte: "2-2-2025",
        //       initialIndex: 0,
        //     ),
        //     MatchG()
        //   ],
        // ),
        body: IndexedStack(
          index: _selectedIndex,
          children: _pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            backgroundColor: Colors.red,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.sports_bar_outlined), label: "Matchs"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.newspaper), label: "Table"),
              // BottomNavigationBarItem(
              //     icon: Icon(Icons.table_chart_sharp), label: "Table"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.score_rounded), label: "Top Scorer"),
            ]));
  }
}
