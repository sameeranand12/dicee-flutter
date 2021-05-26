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

class DicePage extends StatelessWidget {


  @override

  Widget build(BuildContext context) {
    var leftDiceNumber = 5;
    return Center(
      child: Row(
        children: [
          Expanded(
            //flex :1,

        child: TextButton(
          onPressed:() {
            print('Left got pressed');
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
