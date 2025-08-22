import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'homePage.dart';
import 'detalhesPacote.dart';

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
        BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Cronograma'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favoritos"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
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

  buildCard({required String imageLink, required String nomePacote, required double nota,required String dataEstadia, required String preco}){
    return Card(
      color: Colors.white70,
      child: GestureDetector(
        onTap:(){
          Navigator.push(context, MaterialPageRoute(builder: (_) => DetalhesPacote()));
        },
        child: Column(
          children: [
            ClipRRect(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                imageLink,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsetsGeometry.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(nomePacote, style: TextStyle(fontSize: 10)),
                      SizedBox(width: 5),
                      RatingStars(
                        value: nota,
                        starColor: Colors.green,
                        starOffColor: Colors.white10,
                        starCount: 5,
                        starSize: 20,
                        maxValue: 5,
                        starSpacing: 2,
                        maxValueVisibility: true,
                        valueLabelVisibility: false,
                      ),
                    ],
                  ),
                  Text(dataEstadia),
                  Text(preco, style: TextStyle(fontWeight: FontWeight.w700)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}