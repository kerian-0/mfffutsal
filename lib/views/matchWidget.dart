import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mff_futsal_v0/utils/firebase_service.dart';

class MatchWidget extends StatelessWidget {
  MatchWidget(
      {super.key,
      required this.matchId,
      required this.teamImg1,
      required this.teamName1,
      required this.teamImg2,
      // required this.text,
      required this.teamName2});
  // final String text;
  final String teamName1;
  final String teamName2;
  final String teamImg2;
  final String teamImg1;
  final String matchId;

  @override
  Widget build(BuildContext context) {
    // final now = DateTime.now();

    return Container(
      child: Center(
        child: Card(
          color: Colors.cyan,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 76,
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
                child: SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      StreamBuilder<DocumentSnapshot>(
                          stream: ApiService().getGoalWeek(matchId),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return CircularProgressIndicator(); // Show loading indicator
                            }
        
                            if (!snapshot.hasData ||
                                snapshot.data == null ||
                                !snapshot.data!.exists) {
                              return Text("No data"); // Handle null case
                            }
                            var data =
                                snapshot.data!.data() as Map<String, dynamic>;
        
                            // var data = snapshot.data!.data() as Map<String, dynamic>;
                            int team1Score = data['team1Score'] ?? 0;
                            int team2Score = data['team2Score'] ?? 0;
        
                            // Display goal scores
                            return Column(
                              children: [
                                data["text"] == "VS"
                                    ? Text(data["time"])
                                    : Text(
                                        '$team1Score - $team2Score',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                SizedBox(
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text("VitaMax")),
                                )
                              ],
                            );
                          })
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 76,
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
              ),SizedBox(width:10)
            ],
          ),
        ),
      ),
    );
  }
}
