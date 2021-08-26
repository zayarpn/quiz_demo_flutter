import 'package:flutter/material.dart';

class MyQues extends StatelessWidget {
  // const MyQues({ Key? key }) : super(key: key);
  final String question;
  MyQues(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(10),
      child: Text(
        question,
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}
