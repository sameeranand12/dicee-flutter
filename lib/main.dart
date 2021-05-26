import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;

  @override

  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            //flex :1,

            child: TextButton(
              onPressed:() {
                setState(() {
                  leftDiceNumber =4;
                  print('dice number = $leftDiceNumber');
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),

            ),
          ),
          SizedBox(width: 20.0,),
          Expanded(
            // flex:2,

            child: TextButton(
                onPressed: (){
                  print('Right got pressed');
                } ,
                child: Image.asset('images/dice1.png')),
          ),
        ],
      ),
    );
  }
  }

