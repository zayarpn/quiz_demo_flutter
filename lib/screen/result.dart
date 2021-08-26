import 'package:flutter/material.dart';

class MyResult extends StatelessWidget {
  final VoidCallback reset;
  final int totalscore;
  const MyResult({
    Key? key,
    required this.totalscore,
    required this.reset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(totalscore);
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Center(
        child: Column(
          children: [
            Text("Done $totalscore"),
            OutlinedButton(
                onPressed: reset,
                style: OutlinedButton.styleFrom(
                    primary: Colors.red, side: BorderSide(color: Colors.blue)),
                child: Text('Retry'))
          ],
        ),
      ),
    );
  }
}
