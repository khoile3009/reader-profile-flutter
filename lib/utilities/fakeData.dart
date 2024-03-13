import 'package:reader_profile/utilities/types.dart';
import 'package:reader_profile/widgets/session_card.dart';

const List<SessionCard> defaultSessionCards = [
  SessionCard(
    color: "FFFF00",
    bookName: "The design of everyday things",
    bookId: "1",
    startPage: 150,
    endPage: 170,
    startTime: "2024-03-20 06:00:00",
    readSeconds: 1700,
  ),
  SessionCard(
    color: "FFFF00",
    bookName: "The design of everyday things",
    bookId: "1",
    startPage: 130,
    endPage: 150,
    startTime: "2024-03-19 06:00:00",
    readSeconds: 3601,
  ),
  SessionCard(
      color: "000000",
      bookName: "Code",
      bookId: "2",
      startPage: 1,
      endPage: 150,
      startTime: "2024-03-05 06:00:00",
      readSeconds: 300),
];
