import 'package:flutter/material.dart';
import 'profile_card.dart';

const String kNama = 'Ahmad Faishal Baihaqi';
const String kNim = '20240801192';
const String kHobi = 'Belajar';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final int lastDigit = int.parse(kNim[kNim.length - 1]);

  @override
  Widget build(BuildContext context) {
    final bool ganjil = lastDigit % 2 != 0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:
        ganjil ? Colors.tealAccent[100] : Colors.amber[100],
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final int skor = int.parse(kNim.substring(kNim.length - 2)) + 50;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ProfileCard(
            nama: kNama,
            nim: kNim,
            hobi: kHobi,
            skorAktivitas: skor,
          ),
        ],
      ),
    );
  }
}