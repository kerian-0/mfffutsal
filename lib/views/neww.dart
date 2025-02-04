import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mff_futsal_v0/utils/firebase_service.dart';

class Tablee extends StatelessWidget {
  Tablee({super.key});
  final apiService = ApiService().tableBoard();

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
          var documents = snapshot.data!.docs;
          return ListView.builder(
              itemCount: documents.length,
              itemBuilder: (context, index) {
                var data = documents[index].data()
                    as Map<String, dynamic>; // Cast to Map
                return Container(
                  color: index + 1 == 1 || index + 1 == 2 || index + 1 == 3
                      ? Colors.cyan
                      : index + 1 == 9 || index + 1 == 10
                          ? Colors.orange
                          : Colors.white12,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text("${index + 1}"),
                    ),
                    title: Text(data["team"]),
                    trailing: SizedBox(
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${data["total"]}"),
                          Text("${data["win"]}"),
                          Text("${data["draw"]}"),
                          Text("${data["lose"]}"),
                          Text("${data["points"]}"),
                        ],
                      ),
                    ),
                  ),
                );
              });
        });
  }
}
