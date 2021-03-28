import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tt_diary/screens/my_home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TT_DIARY',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        accentColor: Colors.amberAccent,
        buttonTheme: ButtonThemeData(
            textTheme: ButtonTextTheme.primary,
            shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(11)))),
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
