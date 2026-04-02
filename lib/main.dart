import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Leitura',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Define a tela inicial como a tela de Login
      home: const LoginScreen(),
    );
  }
}