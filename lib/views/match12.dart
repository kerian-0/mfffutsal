import 'package:flutter/material.dart';

import '../constant/listt.dart';

import 'matchWidget.dart';

class Match12 extends StatelessWidget {
  const Match12({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MatchWidget(
            matchId:"week13-1" ,
            teamName1: team[0]["name"],
            teamImg1: team[0]["img"],
            teamName2: team[4]["name"],
            teamImg2: team[4]["img"],
          ),
          MatchWidget(
            matchId:"week13-2" ,
            teamName1: team[2]["name"],
            teamImg1: team[2]["img"],
            teamName2: team[3]["name"],
            teamImg2: team[3]["img"],
          ),
          MatchWidget(
            matchId:"week13-3" ,
            teamName1: team[2]["name"],
            teamImg1: team[2]["img"],
            teamName2: team[8]["name"],
            teamImg2: team[8]["img"],
          ),
          MatchWidget(
            matchId:"week13-4" ,
            teamName1: team[1]["name"],
            teamImg1: team[1]["img"],
            teamName2: team[7]["name"],
            teamImg2: team[7]["img"],
          ),
          MatchWidget(
            matchId:"week13-5" ,
            teamName1: team[3]["name"],
            teamImg1: team[3]["img"],
            teamName2: team[9]["name"],
            teamImg2: team[9]["img"],
          ),
        ],
      ),
    );
  }
}


  