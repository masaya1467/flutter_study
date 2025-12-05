import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


//メイン関数
void main() {
  const a = MyApp();
  runApp(a);
}

//アプリ本体
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '株式会社NOE',
          style: GoogleFonts.hachiMaruPop(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
          )
      )
    );
  }
}
