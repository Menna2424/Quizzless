import 'package:flutter/material.dart';

import '../components/result_box.dart';

class ResultsScreen extends StatefulWidget {
int numberOfTrue ;

  ResultsScreen(this.numberOfTrue);

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
backgroundColor:  Color(0x1F1147FF),
      body: Column(

        children: [

          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0x301C7EFF),

                ),
                child: Icon(Icons.arrow_back,color: Colors.white),
              ),

              SizedBox(
                width: 100,
              ),
              Text("Result",style: TextStyle(color: Colors.tealAccent,fontSize: 25),)

            ],
          ),
SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width: 20,),
              Text("Total correct answers",style: TextStyle(color: Colors.white),),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 20,),
              Text("${widget.numberOfTrue} out of 10 Questions",style: TextStyle(color: Colors.tealAccent),),
            ],
          ),
SizedBox(height: 50,),
          ResultBox(widget.numberOfTrue),
SizedBox(height: 80,),
Container(
  height: 55,
  width: 270,
  decoration: BoxDecoration(
    color: Colors.deepPurple,
    borderRadius: BorderRadius.circular(15)
  ),
  child:   MaterialButton(onPressed: (){},child: Row(
mainAxisAlignment: MainAxisAlignment.center,
    children: [

      Icon(Icons.repeat_outlined,color: Colors.white,),
SizedBox(width: 10,),
      Text("Try Again",style: TextStyle(color: Colors.white,fontSize: 20))



    ],

  ),),
)

        ],
      ),



    );
  }
}
