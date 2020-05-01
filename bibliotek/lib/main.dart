import 'package:bibliotek/views/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BiblioteK',

      //TEMA CLARITO
      //  theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   primaryColor: Colors.indigo,
      //   accentColor: Colors.indigoAccent,
      // ),

      //TEMA OSCURITO
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        primaryColor: Colors.black,
        accentColor: Colors.indigoAccent,
      ),


      
      // TEMA VERDECITO...
      // theme: ThemeData(
      //   brightness: Brightness.light,
      //   primarySwatch: Colors.teal,
      //   primaryColor: Colors.teal,
      //   accentColor: Colors.teal,
      //   cardColor: Colors.teal[100],
      //   cardTheme: CardTheme(
      //    shadowColor: Colors.teal,
      //    elevation: 9.0,
      //   ),
        
      // ),
      home: Login(),
    );
  }
}



