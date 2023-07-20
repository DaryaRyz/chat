import 'package:chat/gen/fonts.gen.dart';
import 'package:chat/presentation/home/home_page.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: FontFamily.inter,
      ),
      home: const HomePage(),
    );
  }
}
