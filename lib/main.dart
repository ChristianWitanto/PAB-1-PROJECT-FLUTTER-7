import 'package:flutter/material.dart';
import 'package:flutter_wisata_candi_34/data/candi_data.dart';
import 'package:flutter_wisata_candi_34/providers/favorite_provider.dart' show FavoriteProvider;
import 'package:flutter_wisata_candi_34/screens/detail.screen.dart';
import 'package:flutter_wisata_candi_34/screens/profil.screen.dart';
import 'package:flutter_wisata_candi_34/screens/sign_in.screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
        //ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: const MyApp(),
    ),
  );
}
  


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi 34',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.deepPurple),
          titleTextStyle: TextStyle(
            color: Colors.deepPurple,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ).copyWith(primary: Colors.deepPurple, surface: Colors.deepPurple[50]),
        useMaterial3: true,
      ),
      home: DetailScreen(candi: candiList[0]),
    );
  }
}
