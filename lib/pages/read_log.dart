import 'package:flutter/material.dart';
import 'package:reader_profile/utilities/fakeData.dart';
import 'package:reader_profile/utilities/types.dart';
import 'package:reader_profile/widgets/session_card.dart';

class ReadLog extends StatelessWidget {
  // final List<SessionData> sessions;
  // const ReadLog({super.key, required this.sessions});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView(
        children: defaultSessionCards,
      ),
    );
  }
}
