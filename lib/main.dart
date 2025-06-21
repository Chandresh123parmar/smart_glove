import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Screen/Home_Screen.dart';

late Size mq;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(systemNavigationBarColor: Colors.white));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((value) async {
    if (Platform.isAndroid) {

      await Firebase.initializeApp(
        options: const FirebaseOptions(
          apiKey: "AIzaSyCUZj6FJvAfljkF4yD5-zOSECdM6sst_8I",
          appId: "1:238987226029:web:112e2f53aae8a665844f24",
          messagingSenderId: '238987226029',
          projectId: 'test-11-31253',
        ),
      );
    } else {
      await Firebase.initializeApp();
    }
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Glove',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 25
          ),
          backgroundColor: Colors.deepPurple.shade800,
          //centerTitle: true,
          titleTextStyle: TextStyle(color:Colors.white,fontSize: 23,fontWeight: FontWeight.w500)
        )

      ),
      home: HomeScreen(),
    );
  }
}