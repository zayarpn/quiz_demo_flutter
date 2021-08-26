import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class QA extends StatelessWidget {
  final Function ansQuesHandler;
  final List<Map<String, Object>> quesNans;
  final int qaIndex;
  const QA(
      {Key? key,
      required this.ansQuesHandler,
      required this.qaIndex,
      required this.quesNans})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyQues(quesNans[qaIndex]['ques'] as String),
        ...(quesNans[qaIndex]['ans'] as List<Map<String, Object>>).map((ans) {
          return MyAns(
              handler: () => ansQuesHandler(ans['score']),
              ansText: ans['name'] as String);
        }).toList(),
      ],
    );
  }
}
