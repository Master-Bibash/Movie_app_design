import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/NewMoviesWidget.dart';
import '../widgets/UpcomingWidgets.dart';
import '../widgets/customNavbar.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(child: Column(
          children: [
            Padding(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Hello Alex",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                         Text(
                        "What To Watch",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(90),
                    child: Image.asset("images/profile.jpg",height: 60,width: 50,),
                  ),
                  
                ],
              ),
              padding: EdgeInsets.symmetric(vertical: 18,horizontal: 10,
            
            ),
            
            
            ),
  Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.symmetric(horizontal: 10),
    height: 60,
    decoration: BoxDecoration(
      color: Color(0xFF292B37),

    ),
    child: Row(
      children: [
        Icon
        (Icons.search,color: Colors.white54,size: 30,),
        Container(
          width: 300,
          margin: EdgeInsets.only(left: 5),
          child: TextFormField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.white54)
            ),

          ),
        )
        
      ],
    ),
  ),  
  SizedBox(height: 31,),
  UpcomingWidget(), 
  SizedBox(height: 40,),
  NewMoviesWidget(),     
          ],
        )),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}


