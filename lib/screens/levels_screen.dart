import 'package:flutter/material.dart';

import '../components/level_card.dart';

class LevelsScreen extends StatefulWidget {
  const LevelsScreen({super.key});

  @override
  State<LevelsScreen> createState() => _LevelsScreenState();
}

class _LevelsScreenState extends State<LevelsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x1F1147FF),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0x331D7DFF)),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ))),
              SizedBox(
                width: 80,
              ),
              Text(
                "Levels",
                style: TextStyle(color: Colors.tealAccent, fontSize: 20),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(8),
              children: [
                Row(
                  children: [
                    Expanded(
                        child: LevelCard(
                      cardColor: Colors.deepPurple,
                      starColor1: Colors.orange,
                      starColor2: Colors.orange,
                      starColor3: Colors.orange,
                      levelNumber: "01",
                      locked: true,
                    )),
                    Expanded(
                        child: LevelCard(
                      cardColor: Colors.blueAccent,
                      starColor1: Colors.orange,
                      starColor2: Colors.orange,
                      starColor3: Colors.orange,
                      levelNumber: "02",
                      locked: true,
                    )),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                        child: LevelCard(
                      cardColor: Colors.orange,
                      starColor1: Colors.orange,
                      starColor2: Colors.brown,
                      starColor3: Colors.brown,
                      levelNumber: "03",
                      locked: true,
                    )),
                    Expanded(
                        child: LevelCard(
                      cardColor: Colors.greenAccent,
                      starColor1: Colors.orange,
                      starColor2: Colors.orange,
                      starColor3: Colors.brown,
                      levelNumber: "04",
                      locked: true,
                    )),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                        child: LevelCard(
                      cardColor: Colors.pinkAccent,
                      starColor1: Colors.orange,
                      starColor2: Colors.orange,
                      starColor3: Colors.orange,
                      levelNumber: "05",
                      locked: false,
                    )),
                    Expanded(
                        child: LevelCard(
                      cardColor: Colors.purple,
                      starColor1: Colors.orange,
                      starColor2: Colors.orange,
                      starColor3: Colors.orange,
                      levelNumber: "06",
                      locked: false,
                    )),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                        child: LevelCard(
                      cardColor: Colors.deepPurple,
                      starColor1: Colors.orange,
                      starColor2: Colors.orange,
                      starColor3: Colors.orange,
                      levelNumber: "07",
                      locked: false,
                    )),
                    Expanded(
                        child: LevelCard(
                      cardColor: Colors.blueAccent,
                      starColor1: Colors.orange,
                      starColor2: Colors.orange,
                      starColor3: Colors.orange,
                      levelNumber: "08",
                      locked: false,
                    )),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                        child: LevelCard(
                      cardColor: Colors.pinkAccent,
                      starColor1: Colors.orange,
                      starColor2: Colors.orange,
                      starColor3: Colors.orange,
                      levelNumber: "09",
                      locked: false,
                    )),
                    Expanded(
                        child: LevelCard(
                      cardColor: Colors.purple,
                      starColor1: Colors.orange,
                      starColor2: Colors.orange,
                      starColor3: Colors.orange,
                      levelNumber: "10",
                      locked: false,
                    )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
