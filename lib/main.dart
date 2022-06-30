import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: Center(child: Text('AMA'),),
          backgroundColor: Colors.blueGrey,
        ),
        body: AnswerPge(),
      ),

    )
  );
}
class AnswerPge extends StatefulWidget {
  const AnswerPge({Key? key}) : super(key: key);

  @override
  State<AnswerPge> createState() => _AnswerPgeState();
}

class _AnswerPgeState extends State<AnswerPge> {
  int imageNum=1;
  // void  ChangeinImage(){
  //   imageNum=Random().nextInt(5)+1;
  // }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: (){
          setState((){
            imageNum=Random().nextInt(5)+1;

          });

          // ChangeinImage();
          print(imageNum);
        },
        child: Center(
          child: Image.asset('images/ball$imageNum.png'),
        ),
      ),
    );
  }
}


