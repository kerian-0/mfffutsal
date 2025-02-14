import 'package:flutter/material.dart';
import '../constant/listt.dart';
import 'matchWidget.dart';

class MatchG extends StatelessWidget {
  const MatchG({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            MatchWidget(
              // text:"text" ,
              matchId: "5YVUrPUMwHKPtqYS5vc9",
              teamName1: team[9]["name"],
              teamImg1: team[9]["img"],
              teamName2: team[7]["name"],
              teamImg2: team[7]["img"],
            ),
            MatchWidget(
              //  text:"text" ,
              matchId: "Ib580DUGlbgsvTdFmeoU",
              teamName1: team[2]["name"],
              teamImg1: team[2]["img"],
              teamName2: team[1]["name"],
              teamImg2: team[1]["img"],
            ),
            MatchWidget(
              //  text:"text" ,
              matchId: "VxznamGtIsBucT0exHYE",
              teamName1: team[8]["name"],
              teamImg1: team[8]["img"],
              teamName2: team[5]["name"],
              teamImg2: team[5]["img"],
            ),
            MatchWidget(
              matchId: "fdj3PGG5RwOVQXn8GRxA",
              //  text:"text" ,
              teamName1: team[4]["name"],
              teamImg1: team[4]["img"],
              teamName2: team[6]["name"],
              teamImg2: team[6]["img"],
            ),
            MatchWidget(
              matchId: "gmEMq1dhUeRfP7yvdMk1",
              //  text:"text" ,
              teamName1: team[0]["name"],
              teamImg1: team[0]["img"],
              teamName2: team[3]["name"],
              teamImg2: team[3]["img"],
            ),
          ],
        ),
      ),
    );
  }
}
