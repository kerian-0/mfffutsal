import 'package:flutter/material.dart';
import '../constant/listt.dart';
import 'matchWidget.dart';

class Match16 extends StatelessWidget {
  const Match16({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              MatchWidget(
                matchId:"week17-1" ,
                teamName1: team[0]["name"],
                teamImg1: team[0]["img"],
                teamName2: team[2]["name"],
                teamImg2: team[2]["img"],
              ),
              MatchWidget(
                matchId:"week17-2" ,
                teamName1: team[2]["name"],
                teamImg1: team[2]["img"],
                teamName2: team[3]["name"],
                teamImg2: team[3]["img"],
              ),
              MatchWidget(
                matchId:"week17-3" ,
                teamName1: team[4]["name"],
                teamImg1: team[4]["img"],
                teamName2: team[3]["name"],
                teamImg2: team[3]["img"],
              ),
              MatchWidget(
                matchId:"week17-4" ,
                teamName1: team[9]["name"],
                teamImg1: team[9]["img"],
                teamName2: team[6]["name"],
                teamImg2: team[6]["img"],
              ),
              MatchWidget(
                matchId:"week17-5" ,
                teamName1: team[1]["name"],
                teamImg1: team[1]["img"],
                teamName2: team[8]["name"],
                teamImg2: team[8]["img"],
              ),
            ],
          ),
        ),
      
    );
  }
}
