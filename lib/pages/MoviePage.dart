import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movieappp/widgets/customNavbar.dart';

import '../widgets/MoviePageButton.dart';
import '../widgets/RecommendWidget.dart';

class MoviePage extends StatelessWidget {
  // const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              "images/cover.jpg",
              height: 280,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SafeArea(
                child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                         InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.favorite_outline_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 60,),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10,
                
                
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [BoxShadow(
                          color: Colors.red.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 8,

                        ),
                   ] ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "images/1.jpg",
                          height: 250,
                          width: 180,
                        ),
                      ),
                    ),
                    Container(
                      margin:  EdgeInsets.only(right: 50,top: 70),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.red,
                        boxShadow:[ BoxShadow(
                          color: Colors.red.withOpacity(0.5),
                          blurRadius: 8,
                        )]
                      ),
                      child: Icon(Icons.play_arrow,color: Colors.white,
                      size: 70,),
                    )
                  ],
                ),
                ),
                SizedBox(height: 30,),
                MoviePageButton(),
                Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Doctor Strange 2",style: 
                    TextStyle(color: Colors.white,fontSize: 30,
                    fontWeight: FontWeight.w500,
                    ),),
                    SizedBox(height: 15,),
                      Text("Doctor Strange in the Multiverse of Madness is a 2022 American superhero film based on Marvel Comics featuring the character Doctor Strange. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures, it is the sequel to Doctor Strange (2016) and the 28th film in the Marvel Cinematic Universe (MCU).",style: 
                    TextStyle(color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    
                    ),
                    textAlign: TextAlign.justify,),
                    SizedBox(height: 18,),
                    RecommendWidget(),
                  ],
                ),
                )
                
              ],
              
            )),
            
          ),
          
        ],
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
