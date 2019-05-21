import 'package:flutter/material.dart';
import 'package:whatsapp/Views/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(        
        primarySwatch: Colors.blue,
        primaryIconTheme: IconThemeData(color: Colors.white),
      ),
      home: HomePage(),
    );
  }
}

 