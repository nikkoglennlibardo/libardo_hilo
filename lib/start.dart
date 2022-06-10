import 'package:firstapp/homepage.dart';
import 'package:flutter/material.dart';

import 'cards.dart';

class StartGame extends StatefulWidget {
  @override
  _StartGame createState() => _StartGame();
}

class _StartGame extends State<StartGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('lib/images/start.png'),
                    fit: BoxFit.cover)),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text('',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 13, 33, 50),
                            )),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Center(
                          child: TextButton(
                            child: Text(
                              'START THE GAME',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                minimumSize: Size(180, 50)),
                            onPressed: () {
                              setState(() {
                                guessimg = "joker.png";
                                initiateCard();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              });
                            },
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}
