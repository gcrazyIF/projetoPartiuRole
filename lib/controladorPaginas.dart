import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homePage.dart';

class ControlePages extends StatefulWidget{
  const ControlePages({super.key});

  @override
  State<ControlePages> createState() => _ControlePagesState();
}

class _ControlePagesState extends State<ControlePages> {
  int selectedIndex = 0;

  var pages = [
    HomePage(),
    Center(child: Text('Página 2', style: TextStyle(fontSize: 30))),
    Center(child: Text('Página 3', style: TextStyle(fontSize: 30))),
    Center(child: Text('Página 4', style: TextStyle(fontSize: 30))),
  ];

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(),
        body: pages[selectedIndex],
        bottomNavigationBar: buildBottomNavBar(),
        floatingActionButton: new FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add, color: Colors.white),
          backgroundColor: Colors.green,
          elevation: 3.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  buildAppBar(){
    return AppBar(
      actions: [
        Icon(
          Icons.settings,
          color: Colors.white,
        ),
        SizedBox(width: 20),
      ],
      centerTitle: false,
      backgroundColor: Colors.green,
      title: Text(
        'ViagensApp',
        style: GoogleFonts.lato(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }

  buildBottomNavBar(){
    return BottomNavigationBar(
      backgroundColor: Colors.green[900],
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      onTap: (index){
        setState((){
          selectedIndex = index;
        });
      },
    );
  }
}