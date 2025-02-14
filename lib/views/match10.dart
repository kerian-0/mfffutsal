import 'package:flutter/material.dart';
import '../constant/listt.dart';
import 'matchWidget.dart';

class Match10 extends StatelessWidget {
  const Match10({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            MatchWidget(
              matchId: "week11-1",
              //  text:"text" ,
              teamName1: team[1]["name"],
              teamImg1: team[1]["img"],
              teamName2: team[4]["name"],
              teamImg2: team[4]["img"],
            ),
            MatchWidget(
              matchId: "week11-2",
              //  text:"text" ,
              teamName1: team[6]["name"],
              teamImg1: team[6]["img"],
              teamName2: team[5]["name"],
              teamImg2: team[5]["img"],
            ),
            MatchWidget(
              matchId: "week11-3",
              //  text:"text" ,
              teamName1: team[7]["name"],
              teamImg1: team[7]["img"],
              teamName2: team[0]["name"],
              teamImg2: team[0]["img"],
            ),
            MatchWidget(
              matchId: "week11-4",
              //  text:"text" ,
              teamName1: team[2]["name"],
              teamImg1: team[2]["img"],
              teamName2: team[3]["name"],
              teamImg2: team[3]["img"],
            ),
            MatchWidget(
              matchId: "week11-5",
              //  text:"text" ,
              teamName1: team[5]["name"],
              teamImg1: team[5]["img"],
              teamName2: team[9]["name"],
              teamImg2: team[9]["img"],
            ),
          ],
        ),
      ),
    );
  }
}
