import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mff_futsal_v0/utils/firebase_service.dart';

class Scorer extends StatelessWidget {
  Scorer({super.key});

  final Stream<QuerySnapshot> apiService = ApiService().scoreBoard();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: apiService,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Center(child: Text('No data available'));
        }

        // Extract data from the snapshot
        var documents = snapshot.data!.docs;

        return ListView.builder(
          itemCount: documents.length,
          itemBuilder: (context, index) {
            var data =
                documents[index].data() as Map<String, dynamic>; // Cast to Map
            return Card(
              color: data["team"] == "VUC"
                  ? Colors.amber
                  : data["team"] == "MIU"
                      ? const Color.fromARGB(255, 8, 72, 125)
                      : data["team"] == "YRG"
                          ? const Color.fromARGB(255, 9, 91, 11)
                          : data["team"] == "MH Dream Team"
                              ? Colors.red
                              : data["team"] == "Generations Fc"
                                  ? const Color.fromARGB(255, 68, 2, 112)
                                  : data["team"] == "SGF Fc"
                                      ? Colors.white
                                      : data["team"] == "Winner Soccer"
                                          ? const Color.fromARGB(
                                              255, 113, 154, 237)
                                          : data["team"] == "YCDC Marga"
                                              ? const Color.fromARGB(
                                                  144, 209, 161, 18)
                                              : data["team"] == "M2K"
                                                  ? Colors.brown
                                                  : data["team"] ==
                                                          "Futsal Chit Thu"
                                                      ? Colors.pink
                                                      : Colors.blueGrey,
              child: ListTile(
                leading: CircleAvatar(
                  child: index == 0 ? Text("1") : Text("${index + 1}"),
                ),
                title: Text(data["name"],style: TextStyle(color: data["name"] == "SGF" ? Colors.black : Colors.white),), // Display the team
                subtitle: Text(
                  data["team"],
                  style: TextStyle(
                      color:
                          data["team"] == "SGF" ? Colors.black : Colors.white),
                ),
                trailing: Text("${data["goal"]}",
                    style: TextStyle(
                        fontSize: 20,
                        color: data["team"] == "SGF"
                            ? Colors.black
                            : Colors.white)),
              ),
            );
          },
        );
      },
    );
  }
}
