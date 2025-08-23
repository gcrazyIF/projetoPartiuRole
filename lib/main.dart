import 'package:flutter/material.dart';
import 'pages/controladorPaginas.dart';

void main(){
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.green.shade900,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.white70,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: ControlePages(),
    ),
  );
}