import 'package:flutter/material.dart';
import 'package:mff_futsal_v0/views/apppBar.dart';

import '../constant/listt.dart';
import 'bottomNavBar.dart';
import 'containerBox.dart';

class Match14 extends StatelessWidget {
  const Match14({super.key});

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
            datte: "7-2-2025",
            initialIndex: 5,
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  MatchWidget(
                    teamName1: team[4]["name"],
                    teamImg1: team[4]["img"],
                    teamName2: team[5]["name"],
                    teamImg2: team[5]["img"],
                  ),
                  MatchWidget(
                    teamName1: team[2]["name"],
                    teamImg1: team[2]["img"],
                    teamName2: team[3]["name"],
                    teamImg2: team[3]["img"],
                  ),
                  MatchWidget(
                    teamName1: team[4]["name"],
                    teamImg1: team[4]["img"],
                    teamName2: team[5]["name"],
                    teamImg2: team[5]["img"],
                  ),
                  MatchWidget(
                    teamName1: team[7]["name"],
                    teamImg1: team[7]["img"],
                    teamName2: team[7]["name"],
                    teamImg2: team[7]["img"],
                  ),
                  MatchWidget(
                    teamName1: team[8]["name"],
                    teamImg1: team[8]["img"],
                    teamName2: team[9]["name"],
                    teamImg2: team[9]["img"],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
       bottomNavigationBar: Bottomnavbar());
    
  }
}

class MatchWidget extends StatelessWidget {
  MatchWidget(
      {super.key,
      required this.teamImg1,
      required this.teamName1,
      required this.teamImg2,
      required this.teamName2});
  final String teamName1;
  final String teamName2;
  final String teamImg2;
  final String teamImg1;

  @override
  Widget build(BuildContext context) {
    // final now = DateTime.now();
    return Container(
      child: Center(
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 80,
                height: 80,
                child: Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      teamName1,
                      style: TextStyle(fontWeight: FontWeight.w200),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 80, height: 80, child: Image.asset(teamImg1)),
              // Text(now as String),
              SizedBox(
                width: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("0"),
                    Text("VS"),
                    Text("0"),
                  ],
                ),
              ),
              SizedBox(
                width: 80,
                height: 80,
                child: Image.asset(
                  teamImg2,
                ),
              ),
              SizedBox(
                width: 100,
                child: Center(
                    child: TextButton(
                  onPressed: () {},
                  child: Text(teamName2,
                      style: TextStyle(fontWeight: FontWeight.w200)),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
