import 'package:firstapp/cards.dart';
import 'package:flutter/material.dart';
import 'gameover.dart';

List<CardIdentity> cardlist = [];

int score = 0;
int cardCount = 1;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      body: Center(
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      right: 17, left: 17, bottom: 10, top: 10),
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 35),
                  color: Color.fromARGB(60, 0, 0, 0),
                  child: Text(
                    'Score: ' + score.toString(),
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 35),
                  color: Color.fromARGB(60, 0, 0, 0),
                  child: Text(
                    'Cards: ' + getCardLeft(),
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [MyCardsGuest(), MyCards()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 15, left: 15, right: 15),
                    child: TextButton(
                      child: Text(
                        'High >=',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: Size(150, 30)),
                      onPressed: () {
                        setState(() {
                          if (getCard(true, false)) {
                            score++;
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GameOver()));
                          }
                          cardCount++;
                        });
                      },
                    )),
                Container(
                  padding: const EdgeInsets.only(
                      top: 5, bottom: 15, left: 15, right: 15),
                  child: TextButton(
                    child: Text(
                      '< LOW',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: Size(150, 30)),
                    onPressed: () {
                      setState(() {
                        if (getCard(false, false)) {
                          score++;
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GameOver()));
                        }
                        cardCount++;
                      });
                    },
                  ),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.white,
                    height: 80,
                    width: 55,
                    child: Image.asset('lib/images/' +
                        (cardGuess.length > 0
                            ? cardGuess[cardGuess.length - 1].img
                            : 'joker.png')),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.white,
                    height: 80,
                    width: 55,
                    child: Image.asset('lib/images/' +
                        (cardGuess.length > 1
                            ? cardGuess[cardGuess.length - 2].img
                            : 'joker.png')),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.white,
                    height: 80,
                    width: 55,
                    child: Image.asset('lib/images/' +
                        (cardGuess.length > 2
                            ? cardGuess[cardGuess.length - 3].img
                            : 'joker.png')),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.white,
                    height: 80,
                    width: 55,
                    child: Image.asset('lib/images/' +
                        (cardGuess.length > 3
                            ? cardGuess[cardGuess.length - 4].img
                            : 'joker.png')),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.white,
                    height: 80,
                    width: 55,
                    child: Image.asset('lib/images/' +
                        (cardGuess.length > 4
                            ? cardGuess[cardGuess.length - 5].img
                            : 'joker.png')),
                  ),
                ),
              )
            ])
          ]),
        ),
      ),
    );
  }
}
