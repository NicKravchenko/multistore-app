import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:multistore_app/views/buyers/auth/register_screen.dart';
import 'package:multistore_app/views/buyers/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid ? await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyD2gXOP43Vcir5QhM4j6fwxsDk3qe2NteA",
          appId: "1:527460858473:android:d75fc4b0b99dc6a3e340f8",
          messagingSenderId: "527460858473",
          projectId: "desmobil-9f202",
          storageBucket: "desmobil-9f202.appspot.com"
      )
  ) : await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Brand-Bold',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow.shade900),
        useMaterial3: false,
      ),
      home: RegisterScreen(), // MainScreen(),
    );
  }
}