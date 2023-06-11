import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Home_screen.dart';
import 'package:google_fonts/google_fonts.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'flutter_application_1',
    options: const FirebaseOptions(
      appId: '1:963251815440:android:37a9ebaf2d5f581468f695' ,
      messagingSenderId: "963251815440",
      apiKey: 'AIzaSyAfT6PwYJKVAG29ktctD4gmT2A1moSYnSE',
      projectId: "myfirstflutterproject-74fc7",
      databaseURL: "https://myfirstflutterproject-74fc7-default-rtdb.firebaseio.com",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
        theme: ThemeData(
        textTheme:
            GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        
        visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const HomeScreen(),
    );
  }
}
