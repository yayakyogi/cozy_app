import 'package:cozy_app/pages/404.dart';
import 'package:cozy_app/pages/Detail.dart';
import 'package:cozy_app/pages/Home.dart';
import 'package:cozy_app/pages/Splash.dart';
import 'package:cozy_app/provider/recommended_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RecommendedProvider(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(fontFamily: 'Poppins'),
          home: const Splash()),
    );
  }
}
