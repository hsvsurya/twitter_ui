import 'package:flutter/material.dart';
import 'package:twitter_ui/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: ThemeData(
        backgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.blue,
          ),
        ),
        primarySwatch: Colors.blue,
        // dividerColor: Colors.blueGrey,
        dividerTheme: DividerThemeData(
          color: Colors.grey,
          thickness: 0.5,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.black12,
        appBarTheme: AppBarTheme(
          // brightness: Brightness.dark,
          elevation: 0,
          // color: Colors.black,
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.blue,
              fontSize: 20,
            ),
          ),
          iconTheme: IconThemeData(
            color: Colors.blue,
          ),
        ),
        primarySwatch: Colors.blue,
        dividerColor: Colors.blueGrey,
        dividerTheme: DividerThemeData(
          color: Colors.grey,
          thickness: 0.5,
        ),
      ),
      home: Home(),
    );
  }
}
