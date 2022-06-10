import 'dart:math';
import 'package:flutter/material.dart';
import 'homepage.dart';

int previous = 0;
List<CardIdentity> cardlist = [];
List<CardIdentity> cardGuess = [];
String img = "";
String guessimg = "joker.png";
var children = <Container>[];
void initiateCard() {
  children = <Container>[];
  cardGuess = [];
  cardlist = [];
  int counter = 1;
  for (int i = 0; i < 52; i++) {
    var data = CardIdentity();
    data.id = i + 1;
    data.img = (i + 1).toString() + ".png";

    if (counter <= 13) {
      data.value = counter;
      counter++;
    } else {
      counter = 1;
      data.value = counter;
      counter++;
    }
    cardlist.add(data);
  }
  getCard(false, true);
  score = 0;
  cardCount = 1;
}

String getCardLeft() {
  return cardlist.length.toString();
}

bool getCard(bool isHigh, bool isIntitiate) {
  int result = 0;
  int newCard = 0;

  if (!isIntitiate) {
    guessimg = img;
  } else {
    guessimg = "joker.png";
  }
  while (result == 0) {
    Random r = new Random();
    int low = 1;
    int high = cardlist.length;
    result = r.nextInt(high - low) + low;
    bool isExist = false;
    for (int i = 0; i < cardlist.length; i++) {
      if (result == cardlist[i].id) {
        isExist = true;
        img = cardlist[i].img;
        newCard = cardlist[i].value;
        if (!isIntitiate) {
          cardGuess.add(cardlist[i]);
        }
        cardlist.remove(cardlist[i]);
      }
    }
    if (!isExist) {
      result = 0;
    }
  }
  if (isHigh) {
    if (newCard >= previous) {
      previous = newCard;
      return true;
    } else {
      previous = newCard;
      return false;
    }
  } else {
    if (newCard < previous) {
      previous = newCard;
      return true;
    } else {
      previous = newCard;
      return false;
    }
  }
}

class MyCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40, left: 40, bottom: 5, top: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.white,
          height: 130,
          width: 90,
          child: Image.asset('lib/images/joker.png'),
        ),
      ),
    );
  }
}

class MyCardsGuest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40, left: 40, bottom: 5, top: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.white,
          height: 130,
          width: 90,
          child: Image.asset('lib/images/' + img),
        ),
      ),
    );
  }
}

class CardIdentity {
  int id = 0;
  String img = "";
  int value = 0;
}
