import 'package:flutter/material.dart';
import 'package:mff_futsal_v0/views/match13.dart';
import 'package:mff_futsal_v0/views/match14.dart';

import 'match.dart';
import 'match10.dart';
import 'match11.dart';
import 'match12.dart';
import 'match15.dart';
import 'match16.dart';
import 'match17.dart';

class Pagee extends StatefulWidget {
  const Pagee({super.key});

  @override
  State<Pagee> createState() => _PageeState();
}

class _PageeState extends State<Pagee> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  final List<String> dates = [
    "16-2-2025",
    "20-2-2025",
    "23-2-2025",
    "27-2-2025",
    "2-3-2025",
    "6-3-2025",
    "9-3-2025",
    "13-3-2025",
    "16-3-2025",
  ];

  void _goToPage(int index) {
    if (index >= 0 && index < dates.length) {
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInCubic,
      );
      setState(() {
        _currentPage = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Arrow Navigation Bar
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          color: Colors.purple[50],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => _goToPage(_currentPage - 1),
                icon: Icon(Icons.arrow_left,
                    color: _currentPage > 0 ? Colors.purple : Colors.grey),
              ),
              Text(
                dates[_currentPage],
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
              IconButton(
                onPressed: () => _goToPage(_currentPage + 1),
                icon: Icon(Icons.arrow_right,
                    color: _currentPage < dates.length - 1
                        ? Colors.purple
                        : Colors.grey),
              ),
            ],
          ),
        ),

        // Page View for Different Matches
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: const [
              MatchG(),
              Match10(),
              Match11(), // Add more match pages as needed
              Match12(),
              Match13(),
              Match14(),
              Match15(),
              Match16(),
              Match17(),
            ],
          ),
        ),
      ],
    );
  }
}
