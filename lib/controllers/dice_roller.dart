import 'dart:math';
import 'package:flutter/material.dart';
import 'package:myapp/components/styledText.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  var activeDiceImage = 'assets/images/dice-1.png';
  var choiceNum = '1';
  // ignore: non_constant_identifier_names
  void RollDice(){
    // Rolling the Dice , get random Value

    var diceNum = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage =  'assets/images/dice-$diceNum.png';
      choiceNum = '$diceNum';
    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        GestureDetector(
          onTap: RollDice,
          
          child: Image.asset(
            
            activeDiceImage,
            width: 200,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          
          onPressed: RollDice ,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(20),
            foregroundColor: Colors.white,
            
          ),
          child: const Column(
            children: [
              Styledtext("Roll the Dice",28),
              
              
            ],
          ),
        ),
        const SizedBox(height: 20,),
        
        Styledtext("Lucky Number $choiceNum", 20)
      ]
      );
  }
}