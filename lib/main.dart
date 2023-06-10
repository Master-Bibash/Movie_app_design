import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movieappp/pages/Categorypage.dart';
import 'package:movieappp/pages/homepage.dart';

import 'pages/MoviePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFF0111)),
      routes: {
        "/": (context) => Home(),
        "categoryPage": (context) => Categorypage(),
        "moviePage":(context) => MoviePage(),
      },
    );
  }
}
