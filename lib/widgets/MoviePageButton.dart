import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MoviePageButton extends StatelessWidget {
  const MoviePageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: EdgeInsets.symmetric(horizontal: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
Container(
  padding: EdgeInsets.all(10),
  decoration: BoxDecoration(
    color: Color(0xFF292B37),
    borderRadius: BorderRadius.circular(10),
    boxShadow:[
       BoxShadow(
      color: Color(0xFF292B37).withOpacity(0.5),
      spreadRadius: 1,
      blurRadius: 4,
    )]
  ),
  child: Icon(Icons.add,color: Colors.white,size: 35,),
),
Container(
  padding: EdgeInsets.all(10),
  decoration: BoxDecoration(
    color: Color(0xFF292B37),
    borderRadius: BorderRadius.circular(10),
    boxShadow:[
       BoxShadow(
      color: Color(0xFF292B37).withOpacity(0.5),
      spreadRadius: 1,
      blurRadius: 4,
    )]
  ),
  child: Icon(Icons.download,color: Colors.white,size: 35,),
),
Container(
  padding: EdgeInsets.all(10),
  decoration: BoxDecoration(
    color: Color(0xFF292B37),
    borderRadius: BorderRadius.circular(10),
    boxShadow:[
       BoxShadow(
      color: Color(0xFF292B37).withOpacity(0.5),
      spreadRadius: 1,
      blurRadius: 4,
    )]
  ),
  child: Icon(Icons.favorite,color: Colors.white,size: 35,),
),
Container(
  padding: EdgeInsets.all(10),
  decoration: BoxDecoration(
    color: Color(0xFF292B37),
    borderRadius: BorderRadius.circular(10),
    boxShadow:[
       BoxShadow(
      color: Color(0xFF292B37).withOpacity(0.5),
      spreadRadius: 1,
      blurRadius: 4,
    )]
  ),
  child: Icon(Icons.share,color: Colors.white,size: 35,),
)
        ],
      ),

    );
  }
}