import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mff_futsal_v0/utils/firebase_service.dart';

class MatchWidget extends StatelessWidget {
  MatchWidget({
    super.key,
    required this.matchId,
    required this.teamImg1,
    required this.teamName1,
    required this.teamImg2,
    required this.teamName2,
  });

  final String teamName1;
  final String teamName2;
  final String teamImg2;
  final String teamImg1;
  final String matchId;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Center(
        child: Card(
          color: Colors.cyan,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /// **Team 1 Name**
                Expanded(
                  flex: 2,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      teamName1,
                      style: TextStyle(fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.fade, // Prevent overflow
                    ),
                  ),
                ),

                /// **Team 1 Image**
                Flexible(
                  flex: 2,
                  child: SizedBox(
                    height: 70,
                    child: Image.asset(
                      teamImg1,
                      fit: BoxFit.contain, // Ensure image fits well
                    ),
                  ),
                ),

                /// **Match Score & Timer**
                Expanded(
                  flex: 3,
                  child: StreamBuilder<DocumentSnapshot>(
                    stream: ApiService().getGoalWeek(matchId),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(child: CircularProgressIndicator());
                      }

                      if (!snapshot.hasData ||
                          snapshot.data == null ||
                          !snapshot.data!.exists) {
                        return Text("No data", textAlign: TextAlign.center);
                      }

                      var data = snapshot.data!.data() as Map<String, dynamic>;
                      int team1Score = data['team1Score'] ?? 0;
                      int team2Score = data['team2Score'] ?? 0;

                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            data["text"] == "VS"
                                ? data["time"]
                                : '$team1Score - $team2Score',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("VitaMax"),
                          )
                        ],
                      );
                    },
                  ),
                ),

                /// **Team 2 Image**
                Flexible(
                  flex: 2,
                  child: SizedBox(
                    height: 70,
                    child: Image.asset(
                      teamImg2,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                /// **Team 2 Name**
                Expanded(
                  flex: 2,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      teamName2,
                      style: TextStyle(fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
