import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'controladorPaginas.dart';
import 'detalhesPacote.dart';
import 'package:projeto_appviagens/db/cardsPacotesAtb_dao.dart';
import 'package:projeto_appviagens/widgets/cardPacote.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  List cardsPacotesList = [];

  @override
  void initState(){
    super.initState();
    loadData();
  }

  loadData() async {
    cardsPacotesList = await CardsPacotesAtbDao().ToListCardsPacotes();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: buildHomeBody(),
      ),
    );
  }

  buildHomeBody(){
    return Padding(
      padding: EdgeInsets.all(6.5),
      child: ListView(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children:[
                    Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.grey.shade200,
                      child: Image.network(
                        'https://wallpaperaccess.com/full/902489.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 5,
                      child:
                      Text('Destaques da Semana', style: GoogleFonts.aBeeZee(color: Colors.white)),
                    ),
                    SizedBox(height: 8),
                    Positioned(
                      bottom: 6,
                      child:
                      Row(
                        children: [
                          Icon(Icons.circle, size: 10.0, color: Colors.white70),
                          SizedBox(width: 3),
                          Icon(Icons.circle, size: 10.0, color: Colors.white70),
                          SizedBox(width: 3),
                          Icon(Icons.circle, size: 10.0, color: Colors.white70),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 100),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemCount: cardsPacotesList.length,
            itemBuilder: (context, i) {
              return CardPacote(
                cardPacoteAtb: cardsPacotesList[i],
              );
            },
          ),
        ],
      ),
    );
  }

  buildCard(String imageLink){
    return Card(
      color: Colors.white70,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17.0)
      ),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_) => DetalhesPacote()));
        },
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageLink, fit: BoxFit.cover,
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                buildText(text: 'Professional Host', fontSize: 10.0),
                buildText(text: '18 - 23 Dec', fontSize: 10.0),
                buildText(
                  text: '\$1,065 total',
                  color: Colors.black,
                  fontSize: 10.0,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
        ],
        ),
    )
    );
  }

  buildText({required text, color, fontSize, fontWeight}) {
    return Text(
      text,
      style: GoogleFonts.inter(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }

}
