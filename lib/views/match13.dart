import 'package:flutter/material.dart';


import '../constant/listt.dart';
import 'matchWidget.dart';

class Match13 extends StatelessWidget {
  const Match13({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              MatchWidget(
                matchId:"week14-1" ,
                teamName1: team[4]["name"],
                teamImg1: team[4]["img"],
                teamName2: team[5]["name"],
                teamImg2: team[5]["img"],
              ),
              MatchWidget(
                matchId:"week14-2" ,
                teamName1: team[2]["name"],
                teamImg1: team[2]["img"],
                teamName2: team[3]["name"],
                teamImg2: team[3]["img"],
              ),
              MatchWidget(
                matchId:"week14-3" ,
                teamName1: team[4]["name"],
                teamImg1: team[4]["img"],
                teamName2: team[5]["name"],
                teamImg2: team[5]["img"],
              ),
              MatchWidget(
                matchId:"week14-4" ,
                teamName1: team[7]["name"],
                teamImg1: team[7]["img"],
                teamName2: team[7]["name"],
                teamImg2: team[7]["img"],
              ),
              MatchWidget(
                matchId:"week14-5" ,
                teamName1: team[8]["name"],
                teamImg1: team[8]["img"],
                teamName2: team[9]["name"],
                teamImg2: team[9]["img"],
              ),
            ],
          ),
        ),
      
    );
  }
}
