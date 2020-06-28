import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
// import 'package:personel/dashboard.dart';
import 'personel.dart';
void main() { 
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Personel(),
      
    );
  }
}