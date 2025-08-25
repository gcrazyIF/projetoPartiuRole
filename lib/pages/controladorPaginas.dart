import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'discoverPage.dart';
import 'detalhesPacote.dart';

class ControlePages extends StatefulWidget{
  const ControlePages({super.key});

  @override
  State<ControlePages> createState() => _ControlePagesState();
}

class _ControlePagesState extends State<ControlePages> {
  bool mostrarAcoes = false;
  int selectedIndex = 0;

  var pages = [
    DiscoverPage(),
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
        body: Stack(
         children: [
           pages[selectedIndex],
           if(mostrarAcoes)
             GestureDetector(
              onTap:(){
                setState(() {
                  mostrarAcoes = false;
                });
              },
              child: Container(
                color: Colors.black.withOpacity(0.5),
                child: Column(
                  spacing: 25.0,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      spacing: 25.0,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: (){},
                          child: Icon(Icons.edit_calendar_rounded, color: Colors.white),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(50, 50),
                            shape: CircleBorder(),
                            backgroundColor: Colors.green[600],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: (){},
                          child: Icon(Icons.attach_money_rounded, color: Colors.white),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(50, 50),
                            shape: CircleBorder(),
                            backgroundColor: Colors.green[600],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      spacing: 25.0,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: (){},
                          child: Icon(Icons.comment_rounded, color: Colors.white),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(50, 50),
                            shape: CircleBorder(),
                            backgroundColor: Colors.green[600],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: (){},
                          child: Icon(Icons.search_rounded, color: Colors.white),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(50, 50),
                            shape: CircleBorder(),
                            backgroundColor: Colors.green[600],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: (){},
                          child: Icon(Icons.account_circle_rounded, color: Colors.white),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(50, 50),
                            shape: CircleBorder(),
                            backgroundColor: Colors.green[600],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 55),
                  ],
                ),
              ),
             ),
         ],
        ),
        bottomNavigationBar: buildBottomNavBar(),
        floatingActionButton: new FloatingActionButton(
          onPressed: (){
            setState(() {
              mostrarAcoes = true;
            });
          },
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
      backgroundColor: Colors.green.shade900,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Cronograma'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favoritos"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.white70,
      onTap: (index){
        setState((){
          selectedIndex = index;
        });
      },
    );
  }

}