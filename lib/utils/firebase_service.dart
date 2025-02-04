import 'package:cloud_firestore/cloud_firestore.dart';

class ApiService {
  CollectionReference dbGoal = FirebaseFirestore.instance.collection("goal");

  Stream<DocumentSnapshot<Object?>> getGoalWeek(String id) {
    final getGoal = dbGoal.doc(id).snapshots();
    return getGoal;
  }

  CollectionReference score = FirebaseFirestore.instance.collection("scorers");

  Stream<QuerySnapshot> scoreBoard() {
    final getGoal = score.orderBy("goal", descending: true).snapshots();
    return getGoal;
  }

  CollectionReference table = FirebaseFirestore.instance.collection("tables");
  
 

  Stream<QuerySnapshot> tableBoard() {
    final tableBoard = table.orderBy("points", descending: true).snapshots();
    return tableBoard;
  }
}
