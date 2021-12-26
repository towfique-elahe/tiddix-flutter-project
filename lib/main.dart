import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      title: 'Tiddix',
      home: AnimatedSplashScreen(
        duration: 2500,
        splash: "assets/icon/icon.png",
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: Scaffold(
          body: Container(
            color: Colors.black,
            child: SafeArea(
              child: WebView(
                initialUrl: "https://tiddix.com",
                javascriptMode: JavascriptMode.unrestricted,
              ),
            ),
          ),
        ),
      ),
    );
  }
}