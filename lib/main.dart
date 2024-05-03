import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:swaraashinetralaya/firebase_options.dart';
import 'package:swaraashinetralaya/screens/homescreen.dart';
import 'package:swaraashinetralaya/screens/phone.dart';
// M4HRXT4LMVQ3Q8B3ET8EHEFL
//36:32:09:0A:65:36:D9:24:A6:C6:5A:F3:40:72:93:F8:11:CE:AC:38 sha1
//93:BA:49:63:97:5A:C0:4D:76:37:F0:A8:99:91:68:79:95:3F:6D:42:EA:01:B4:61:A7:4C:95:78:F6:5D:5D:48 sha256

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseAppCheck.instance.activate();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var isLogin = false;

  checkifLogin() async {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null && mounted) {
        setState(() {
          isLogin = true;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    checkifLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Center(
          child: Image.asset(
            "assets/logo.png",
          ),
        ),
        nextScreen: isLogin ? const HomeScreen() : const PhoneNumber(),
        backgroundColor: Colors.white,
        duration: 5000,
      ),
      title: "Swaraashi Netralaya",
    );
  }
}
