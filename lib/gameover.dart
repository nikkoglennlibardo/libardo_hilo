import 'package:firstapp/homepage.dart';
import 'package:flutter/material.dart';
import 'cards.dart';
import 'start.dart';

class GameOver extends StatefulWidget {
  @override
  _GameOver createState() => _GameOver();
}

class _GameOver extends State<GameOver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('lib/images/end.png'), fit: BoxFit.cover)),
      child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 4, top: 20, left: 10),
              child: Text(
                '',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.yellow[900],
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8, left: 10),
              child: Text(
                'Your score is : ' + score.toString(),
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: TextButton(
                child: Text(
                  'Play again',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white, minimumSize: Size(180, 50)),
                onPressed: () {
                  setState(() {
                    initiateCard();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  });
                },
              ),
            ),
          ],
        ),
      ])),
    ));
  }
}
