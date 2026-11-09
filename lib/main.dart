import 'package:flutter/material.dart';
import 'package:flutter_wisata_candi_34/data/candi_data.dart';
import 'package:flutter_wisata_candi_34/screens/detail.screen.dart';
import 'package:flutter_wisata_candi_34/screens/profil.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi 34',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ProfileScreen(),
    );
  }
}

