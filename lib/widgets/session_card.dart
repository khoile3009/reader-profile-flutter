import 'package:flutter/material.dart';
import 'package:reader_profile/utilities/types.dart';

class SessionCard extends StatelessWidget {
  final String color;
  final String bookName;
  final String bookId;
  final int startPage;
  final int endPage;
  final String startTime;
  final int readSeconds;

  const SessionCard({
    super.key,
    required this.color,
    required this.bookName,
    required this.bookId,
    required this.startPage,
    required this.endPage,
    required this.startTime,
    required this.readSeconds,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            bookName,
          ),
          Text(startTime)
        ],
      ),
    ));
  }
}
