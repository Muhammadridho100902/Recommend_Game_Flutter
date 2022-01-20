// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:card_horizontal/body.dart';
import 'package:card_horizontal/constants.dart';
import 'package:flutter/material.dart';

class Morebest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  child: Image.asset(
                    "images/tomb.jpg",
                    fit: BoxFit.cover,
                    height: 400,
                  ),
                ),
                Positioned(
                  bottom: 1,
                  child: Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Colors.grey.withOpacity(0.0),
                          Colors.black54.withOpacity(0.1),
                          Colors.black
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 30,
                    left: 20,
                    child: RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "Tomb Riders\n",
                            style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1)),
                        TextSpan(
                            text: " Square Enix",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1.5,
                                color: Colors.white.withOpacity(0.8))),
                      ]),
                    )),
                Padding(
                  padding: EdgeInsets.only(
                      top: kDefaultPadding * 2, right: kDefaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          Navigator.pop(context,
                              MaterialPageRoute(builder: (context) => Body()));
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 22,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(1, 1),
                                  color: Colors.black54.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 3),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        child: Image.asset(
                          "images/heart.png",
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(1, 1),
                                color: Colors.black54.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 3),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      left: kDefaultPadding,
                      top: kDefaultPadding / 2,
                      right: kDefaultPadding),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                              fontSize: 14,
                              color: kSecondTextColor.withOpacity(0.8),
                              height: 2),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Release    : 2021\n",
                            ),
                            TextSpan(
                              text:
                                  "Genre        : Action, Advanture, Puzzle\n",
                            ),
                            TextSpan(
                              text:
                                  "Available on  : Playstation 5, Xbox One, PC\n",
                            ),
                            TextSpan(
                              text: "Rate           : 10/10\n\n",
                            ),
                            TextSpan(text: "Description          :\n"),
                            TextSpan(
                                text:
                                    "Tomb Raider explores the intense and gritty origin story of Lara Croft and her ascent from a young woman to a hardened survivor. Armed only with raw instincts and the ability to push beyond the limits of human endurance, Lara must fight to unravel the dark history of a forgotten island to escape its relentless hold."),
                          ]),
                    ),
                  ),
                ),
                Column(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: kDefaultPadding * 1.5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 75,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: kDefaultPadding * 1.5,
                            right: kDefaultPadding),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                "images/cart.png",
                                alignment: Alignment.center,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            Container(
                              height: 50,
                              width: 250,
                              child: Center(
                                child: Text(
                                  "Buy Now",
                                  style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500)
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(20)),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: kSecondBackgroundColor,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, -3),
                                color: Colors.black54.withOpacity(0.3),
                                blurRadius: 5),
                          ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          )),
                    ),
                  ),
                ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
