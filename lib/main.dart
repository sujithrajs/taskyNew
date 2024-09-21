import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:tutorial_projects/screen/home_page.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle(
    // statusBarColor: Colors.green,
    systemNavigationBarColor: Colors.blueGrey.shade200
  ));
  await Hive.initFlutter();
  var box = await Hive.openBox('mybox');

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor:Colors.blueGrey ,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}


