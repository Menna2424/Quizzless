import 'dart:math';

import 'package:flutter/material.dart';

import '../screens/questions_screen.dart';

class LevelCard extends StatefulWidget {


  @override
  Color cardColor ;

  Color starColor1;
  Color starColor2;

  Color starColor3;

  String levelNumber;
bool locked;

  LevelCard({required this.cardColor,required this.starColor1,required this.starColor2,required this.starColor3,required this.levelNumber,required this.locked});

  @override
  State<LevelCard> createState() => _LevelCardState();
}

class _LevelCardState extends State<LevelCard> {
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,

      children: [
        Icon(widget.locked?Icons.star:Icons.star_border_rounded,color: widget.starColor2),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            //SizedBox(width: 20,),
            Icon(widget.locked?Icons.star:Icons.star_border_rounded,color: widget.starColor1),
            SizedBox(width: 40,),
            Icon(widget.locked?Icons.star:Icons.star_border_rounded,color: widget.starColor3),


          ],


        ),


        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionScreen(5) ),);



          },

          child: Container(

            height: 90,
            width: 2*50,

            child: ClipPath(
              clipper: HexagonPainter(),
              child: Container(
                decoration: BoxDecoration(
                  color: widget.cardColor,


                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Level",style: TextStyle(color: Colors.white, fontSize: 22)),
                    Text(widget.levelNumber,style: TextStyle(color: Colors.white,fontSize: 22)),

                  ],
                ),

              ),

            )


          ),
        ),
      ],
    );
  }
}

class HexagonPainter extends CustomClipper<Path>{


  @override
  Path getClip(Size size) {

    final path =Path();
    double width = size.width;
    double height = size.height;
    double sidelength = width/2;

    path.moveTo(width*0.5, height*0);
    path.lineTo(width*1, height*1/4);
    path.lineTo(width *0.9, height);
    path.lineTo(width *0.1, height);
    path.lineTo(width *0, height *1/4);

    path.close();


    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }




}
