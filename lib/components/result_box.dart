import 'package:flutter/material.dart';

class ResultBox extends StatelessWidget {
  int numberOfTrue ;

  ResultBox(this.numberOfTrue);

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 350,
      width: 270,
      decoration: BoxDecoration(
        color: Colors.deepPurple,borderRadius: BorderRadius.circular(20),

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Text("Your final score is ",style: TextStyle(color: Colors.white,fontSize: 30),),
          SizedBox(height: 50,),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(

              shape: BoxShape.circle,
              color: Colors.amber,
            ),
            child: Center(child: Text("${numberOfTrue*10}",style: TextStyle(color: Colors.white,fontSize: 60,fontWeight: FontWeight.bold))),

          ),
          
        ],
      ),
    );
  }
}
