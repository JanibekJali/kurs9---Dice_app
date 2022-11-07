import 'dart:developer' as dev;
import 'dart:math' as math;

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int solDice = 1;
  int onDice = 3;
  Color color = Colors.blue;
  dicetyOzgort() {
    setState(() {
      solDice = math.Random().nextInt(6) + 1;
      onDice = math.Random().nextInt(6) + 1;
      // 0 + 1 = 1
      // 1 + 1 = 2
      // 2 + 1 = 3
      // 3 + 1 = 4
      // 4 + 1 = 5
      // 5 + 1 = 6
    });
    dev.log('solDice basildy $solDice');
    dev.log('onDice basildy $onDice');
  }

  // dicetyOzgortOn() {
  //   setState(() {
  //     onDice = math.Random().nextInt(6) + 1;
  //     solDice = math.Random().nextInt(6) + 1;
  //     // 0 + 1 = 1
  //     // 1 + 1 = 2
  //     // 2 + 1 = 3
  //     // 3 + 1 = 4
  //     // 4 + 1 = 5
  //     // 5 + 1 = 6
  //   });
  //   dev.log('solDice basildy $solDice');
  //   dev.log('onDice basildy $onDice');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: InkWell(
                    onTap: dicetyOzgort,
                    //  () {
                    //   setState(() {});
                    //   solDice = math.Random().nextInt(6) + 1;
                    //   dev.log('solDice basildy $solDice');
                    // },
                    child: Image.asset(
                      'assets/images/dice$solDice.png',
                    )),
              ),
            ),
            Expanded(
                child: TextButton(
              onPressed: dicetyOzgort,
              //  () {
              //   setState(() {});
              //   onDice = math.Random().nextInt(6) + 1;
              //   // solDice = Random().nextInt(6) + 1;

              //   dev.log('onDice basildy $onDice');
              // },
              child: Image.asset(
                'assets/images/dice$onDice.png',
                color: Colors.white,
              ),
            )),
          ],
        ),
      ),
    );
  }
}

 // DRY  - Do not repeat yourself  - ozunu kaitalaba
