import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'homePage.dart';

class DetalhesPacote extends StatefulWidget {
  const DetalhesPacote({super.key});

  @override
  State<DetalhesPacote> createState() => _DetalhesPacoteState();
}

class _DetalhesPacoteState extends State<DetalhesPacote> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded),
            onPressed:(){
              Navigator.pop(context, MaterialPageRoute(builder: (_) => HomePage()));
            },
          ),
          title: Text(''),
          bottom: TabBar(
            labelColor: Colors.green,
            indicatorColor: Colors.lightGreen,
            tabs: <Widget> [
              Tab(text: 'Pacote/Guia/Viagem'),
              Tab(text: 'Avaliações'),
              Tab(text: 'Galeria'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buildGeralContent(),
            buildAvaliacoesContent(),
            buildGaleriaContent(),
          ],
        ),
      ),
    );
  }

  buildGeralContent(){
    return Padding(
      padding: EdgeInsetsGeometry.all(6.0),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                clipBehavior: Clip.hardEdge,
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  'https://a0.muscache.com/im/pictures/miso/Hosting-1175454379947905292/original/1873def9-5710-403f-b1f1-b2c766f61e31.jpeg?im_w=1200',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Text('Pacote Guia Nova York', style: TextStyle(fontSize: 20), textAlign: TextAlign.start),
              SizedBox(height: 2),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  RatingStars(
                    value: 4.5,
                    starColor: Colors.green,
                    starOffColor: Colors.white10,
                    starCount: 5,
                    starSize: 20,
                    maxValue: 5,
                    starSpacing: 2,
                    maxValueVisibility: true,
                    valueLabelVisibility: false,
                  ),
                  Text('100 avaliações', style: TextStyle(fontSize: 8)),
                ],
              ),
              SizedBox(height: 5),
              Text('[Descrição do Pacote]'),
              SizedBox(height: 50),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('R\$2.065,70', style: TextStyle(fontSize: 25), textAlign: TextAlign.end),
                  SizedBox(width: 5),
                  Text('à vista', style: TextStyle(fontSize: 8)),
                ],
              ),
              Row(
                children:[
                  SizedBox(width: 20),
                  Text('R\$189,39 em 10x sem juros', style: TextStyle(fontSize: 10)),
                ],
              ),
              SizedBox(height: 30),
              Center(
                child:
                  TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: (){},
                    child:
                      Text('Comprar/Alugar', style: TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(height: 20),
              Divider(
                color: Colors.black,
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(height: 20),
              Text('Recomendados', style: TextStyle(fontSize: 20)),
            ],
          ),
        ],
      ),
    );
  }

  buildAvaliacoesContent(){
    return Center(
      child: Text(
        'Avaliações',
        style: GoogleFonts.inter(
          fontSize: 50,
        ),
      ),
    );
  }

  buildGaleriaContent(){
    return Center(
      child: Text(
        'Galeria de fotos',
        style: GoogleFonts.inter(
          fontSize: 50,
        ),
      ),
    );
  }
}
