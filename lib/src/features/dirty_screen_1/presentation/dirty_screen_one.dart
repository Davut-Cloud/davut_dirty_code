import 'package:flutter/material.dart';

class DirtyScreenOne extends StatelessWidget {
  const DirtyScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #1"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: const [
            RedBox(boxNumber: 1),
            RedBox(boxNumber: 2),
            RedBox(boxNumber: 3),
            RedBox(boxNumber: 4),
          ],
        ),
      ),
    );
  }
}

class RedBox extends StatelessWidget {
  final int boxNumber;

  const RedBox({super.key, required this.boxNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.redAccent,
      ),
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const Icon(Icons.bug_report),
          const SizedBox(width: 8),
          Text(
            'Box #$boxNumber',
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
