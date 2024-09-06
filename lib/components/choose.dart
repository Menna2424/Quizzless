import 'package:flutter/material.dart';

class choose extends StatefulWidget {
int number ;
String choose1;

choose(this.number,this.choose1);

  @override
  State<choose> createState() => _chooseState();
}

class _chooseState extends State<choose> {
  late Color pressedColor;


  bool pressed=false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          pressed=!pressed;

        });
      },
      child: Container(

        height: 50,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: pressed?Colors.tealAccent:Color(0x1F1147FF),
        ),
        child: Row(
          children: [
            SizedBox(width: 5,),
            Container(
                width: 25,
                height:25,
                decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.purple

            ),
            child: Center(child: Text("${widget.number}",style: TextStyle(color: Colors.white),))),
           SizedBox(width: 10,),
            Text(widget.choose1,style: TextStyle(color: !pressed?Colors.white:Colors.black,fontSize: 20))
          ],

        ),

      ),
    );
    
  }
}
