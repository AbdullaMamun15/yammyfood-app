import 'package:flutter/material.dart';
import 'package:yammyfood/login.dart';
import 'package:yammyfood/register.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: {
          'login':(context)=>MyLogin(),
          'register':(context)=>MyRegister()
        }
    );
  }
}

