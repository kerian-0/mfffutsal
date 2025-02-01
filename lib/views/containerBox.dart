import 'package:flutter/material.dart';
import 'package:mff_futsal_v0/constant/viewList.dart';

class Containerbox extends StatefulWidget {
  final String datte;
  final int initialIndex;

  const Containerbox(
      {super.key, required this.datte, required this.initialIndex});

  @override
  _ContainerboxState createState() => _ContainerboxState();
}

class _ContainerboxState extends State<Containerbox> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = widget.initialIndex; // Initialize index
  }

  void navigateTo(int newIndex) {
    if (newIndex >= 0 && newIndex < viewList.length) {
      setState(() {
        index = newIndex;
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => viewList[index]),
      );
      print("Navigated to index: $index");
    } else {
      print("Index out of range: $newIndex");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            child: index == 0
                ? Icon(Icons.arrow_back_ios_rounded)
                : IconButton(
                    icon: Icon(Icons.arrow_back_ios_rounded),
                    onPressed: () => navigateTo(index - 1),
                  ),
          ),
          TextButton(
            onPressed: () => print("Date Selected: ${widget.datte}"),
            child: Text(widget.datte, style: TextStyle(fontSize: 16)),
          ),
          CircleAvatar(
            child: IconButton(
              icon: Icon(Icons.arrow_forward_ios_rounded),
              onPressed: () => navigateTo(index + 1),
            ),
          ),
        ],
      ),
    );
  }
}
