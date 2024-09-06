import 'package:flutter/material.dart';
import 'package:quizzles/screens/levels_screen.dart';
import 'package:quizzles/screens/results_screen.dart';

import '../components/choose.dart';
import '../components/quession_button.dart';
import '../model/choose.dart';

class QuestionScreen extends StatefulWidget {
  int numOfLevel = 5;

  QuestionScreen(this.numOfLevel);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int numOfQuestion= 07;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x1F1147FF),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Level ${widget.numOfLevel}",
                  style: TextStyle(color: Colors.cyanAccent, fontSize: 25)),
              SizedBox(
                width: 100,
              ),
              Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0x331D7DFF),
                  ),
                  child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu_open,
                            color: Colors.grey,
                            size: 20,
                          )))),
              SizedBox(
                width: 20,
              ),
            ],
          ),
SizedBox(height: 50,),
          Row(
            children: [
              SizedBox(width: 20,),
              Text("${numOfQuestion} /10",style: TextStyle(color: Colors.tealAccent,fontSize: 10),),

            ],



          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 7,),
                  Text("What is the 6th planet in ",style: TextStyle(color: Colors.white,fontSize: 25)),
                 SizedBox(height: 5,),
                  Text("the solar system ?",style: TextStyle(color: Colors.white,fontSize: 25)),
               
               
               
                ],
              ),
            ],
          ),
          SizedBox(height: 25,),
          Card(
            
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              
            ),
            child: Container(
              width: 300,
              child: Image.asset("images/planets.png"),
              
            ),
          ),
           for(int i =1 ;i<5;i++)
             choose(i,chooses[i-1]),

          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 2,),
              QuessionButton("Previous",MaterialPageRoute(builder: (context)=>ResultsScreen(7))),


    QuessionButton("Next",MaterialPageRoute(builder: (context)=>ResultsScreen(7))),


              SizedBox(width: 2,),

          ],)
          

          
          

        ],
      ),
    );
  }
}
