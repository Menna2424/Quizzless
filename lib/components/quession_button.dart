


import 'package:flutter/material.dart';

class QuessionButton extends StatefulWidget {
String text;
MaterialPageRoute page;
QuessionButton(this.text,this.page);

  @override
  State<QuessionButton> createState() => _QuessionButtonState();
}

class _QuessionButtonState extends State<QuessionButton> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.purple,

        ),
        child: MaterialButton(onPressed: (){

          Navigator.push(context,
          widget.page

          );


        },child: Text(widget.text,style: TextStyle(color: Colors.white)),));


  }
}
