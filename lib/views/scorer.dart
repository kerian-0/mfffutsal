import 'package:flutter/material.dart';

class Scorer extends StatelessWidget {
  const Scorer({super.key,required this.gocount,required this.name,required this.teamName});
  final String name;
  final int gocount;
  final String teamName;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Row(
          children: [Text(name), Text("$gocount"), Text(teamName)],
        ),
      ),
    );
  }
}
