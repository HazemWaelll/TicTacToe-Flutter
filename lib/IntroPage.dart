import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  static var pressStart2pFont = TextStyle(
    fontFamily: "PressStart2P",
    color: Colors.white,
    letterSpacing: 3,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 120.0),
                child: Text(
                  "Tic Tac Toe",
                  style: pressStart2pFont.copyWith(fontSize: 30),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: AvatarGlow(
                duration: Duration(seconds: 2),
                glowColor: Colors.white,
                repeat: true,
                startDelay: Duration(milliseconds: 500),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[900],
                  radius: 80.0,
                  child: ClipOval(
                    // ClipOval is used to make the image fit the CircleAvatar
                    child: Image.asset(
                      "assets/images/tictactoelogo.png",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 80.0),
                child: Text(
                  "@MADEBYHAZEMWAEL",
                  style: pressStart2pFont.copyWith(fontSize: 20),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(left: 40, right: 40, bottom: 60),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(30),
                  child: Center(
                    child: Text(
                      'PLAY GAME',
                      style: pressStart2pFont.copyWith(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
