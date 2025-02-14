import 'package:flutter/material.dart';
import '../constant/listt.dart';

import 'matchWidget.dart';

class Match11 extends StatelessWidget {
  const Match11({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              MatchWidget(
                matchId:"week12-1" ,
                //  text:"text" ,
                teamName1: team[2]["name"],
                teamImg1: team[2]["img"],
                teamName2: team[7]["name"],
                teamImg2: team[7]["img"],
              ),
              MatchWidget(
                matchId:"week12-2" ,
                //  text:"text" ,
                teamName1: team[0]["name"],
                teamImg1: team[0]["img"],
                teamName2: team[8]["name"],
                teamImg2: team[8]["img"],
              ),
              MatchWidget(
                matchId:"week12-3" ,
                //  text:"text" ,
                teamName1: team[6]["name"],
                teamImg1: team[6]["img"],
                teamName2: team[1]["name"],
                teamImg2: team[1]["img"],
              ),
              MatchWidget(
                matchId:"week12-4" ,
                //  text:"text" ,
                teamName1: team[9]["name"],
                teamImg1: team[9]["img"],
                teamName2: team[4]["name"],
                teamImg2: team[4]["img"],
              ),
              MatchWidget(
                matchId:"week12-5" ,
                //  text:"text" ,
                teamName1: team[6]["name"],
                teamImg1: team[6]["img"],
                teamName2: team[3]["name"],
                teamImg2: team[3]["img"],
              ),
            ],
          ),
        ),
      
    );
  }
}
