import 'package:flutter/material.dart';

import 'levels_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          )),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 100,
              ),
              Image.asset("images/logo.png"),
              SizedBox(
                height: 25,
              ),
              Text(
                "Quizzles",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.greenAccent),
              ),
              SizedBox(
                height: 40,
              ),
              Text("Let's Play!",
                  style: TextStyle(color: Colors.white, fontSize: 30)),
              SizedBox(
                height: 10,
              ),
              Text(
                "Play now and Level up",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.deepPurpleAccent),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LevelsScreen() ),);
                    },
                    child: Text("Play Now ",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: 250,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepPurpleAccent),
                      borderRadius: BorderRadius.circular(15)),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text("Aboutl ",
                        style: TextStyle(
                            color: Colors.deepPurpleAccent, fontSize: 20)),
                  )),
            ],
          )),
    );
  }
}
