import 'package:flutter/material.dart';
import 'package:tictactoe/screens/create_room_screen.dart';
import 'package:tictactoe/screens/join_room_screen.dart';
import 'package:tictactoe/screens/main_screen.dart';
import 'package:tictactoe/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      color: Color.fromRGBO(26, 30, 35, 0),
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: bgColor, backgroundColor: bgColor),
      routes: {
        MainScreen.routeName: (context) => const MainScreen(),
        JoinRoom.routeName: (context) => const JoinRoom(),
        CreateRoom.routeName: (context) => const CreateRoom(),
      },
      home: MainScreen(),
    );
  }
}
