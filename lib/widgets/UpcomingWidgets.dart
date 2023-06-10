import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UpcomingWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Upcoming Movies",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w400,
            ),),
                Text("See All",
            style: TextStyle(
              color: Colors.white54,
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),)
          ],
        ),
        ),
        SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for(int i=1;i<4;i++)
              Padding(padding: EdgeInsets.only(left: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("images/up$i.jpg",height: 180,width: 300,
                fit: BoxFit.cover,),
              ),
              )
            ],
          ),
          
        )
      ],
    );
  }
}