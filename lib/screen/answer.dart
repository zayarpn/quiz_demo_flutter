import 'package:flutter/material.dart';

class MyAns extends StatelessWidget {
  final VoidCallback handler;
  final String ansText;

  const MyAns({
    Key? key,
    required this.handler,
    required this.ansText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: handler,
      child: Text(ansText),
    );
  }
}
