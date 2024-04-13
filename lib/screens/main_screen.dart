import 'package:flutter/material.dart';
import 'package:tictactoe/responsive/responsive.dart';
import 'package:tictactoe/screens/create_room_screen.dart';
import 'package:tictactoe/screens/join_room_screen.dart';
import 'package:tictactoe/widgets/custom_button.dart';

class MainScreen extends StatelessWidget {
  static String routeName = '/main-menu';
  const MainScreen({super.key});

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoom.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoom.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: responsive(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(onTap: () => joinRoom(context), text: "Join Room"),
          const SizedBox(
            height: 20,
          ),
          CustomButton(onTap: () => createRoom(context), text: "Create Room"),
        ],
      ),
    ));
  }
}
