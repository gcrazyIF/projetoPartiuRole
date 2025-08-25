import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:projeto_appviagens/domain/cardsPacotesAtb.dart';
import 'discoverPage.dart';

class DetalhesPacote extends StatefulWidget {
  CardsPacotesAtb cardPacoteAtb;

  DetalhesPacote({
    required this.cardPacoteAtb,
    super.key
  });

  @override
  State<DetalhesPacote> createState() => _DetalhesPacoteState();
}

class _DetalhesPacoteState extends State<DetalhesPacote> {
  CardsPacotesAtb get cardPacoteAtb => widget.cardPacoteAtb;

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
              Navigator.pop(context, MaterialPageRoute(builder: (_) => DiscoverPage()));
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
            buildGeralContent(imageLink: cardPacoteAtb.imageLink, nomePacote: cardPacoteAtb.nomePacote, nota: cardPacoteAtb.nota, preco: cardPacoteAtb.preco),
            buildAvaliacoesContent(nota: cardPacoteAtb.nota),
            buildGaleriaContent(),
          ],
        ),
      ),
    );
  }

  buildGeralContent({required String imageLink, required String nomePacote, required double nota, required String preco}){
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
                  imageLink,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Text(nomePacote, style: TextStyle(fontSize: 20), textAlign: TextAlign.start),
              SizedBox(height: 2),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
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
                  Text('100 avaliações', style: TextStyle(fontSize: 8)),
                ],
              ),
              SizedBox(height: 5),
              Text('[Descrição do Pacote]'),
              SizedBox(height: 50),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(preco, style: TextStyle(fontSize: 25), textAlign: TextAlign.end),
                  SizedBox(width: 5),
                  Text('à vista', style: TextStyle(fontSize: 8)),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text('R\$206,57 em 10x sem juros', style: TextStyle(fontSize: 10)),
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

  buildAvaliacoesContent({required double nota}){
    return Padding(
      padding: EdgeInsetsGeometry.all(7.0),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Avaliação Geral', style: TextStyle(fontSize: 20)),
              RatingStars(
                maxValue: 5,
                value: nota,
                starColor: Colors.green,
                starOffColor: Colors.white10,
                starCount: 5,
                starSize: 20,
                starSpacing: 2,
                maxValueVisibility: true,
                valueLabelVisibility: false,
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsetsGeometry.all(15.0),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.0,
                color: Colors.lightGreen,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    ClipRRect(
                      clipBehavior: Clip.hardEdge,
                      borderRadius: BorderRadiusGeometry.circular(50.0),
                      child: Image.network(
                        'https://i.pinimg.com/originals/cd/97/bb/cd97bb29e1c019e4de5bb9d5a895fa14.jpg',
                        fit: BoxFit.cover,
                        width: 30,
                        height: 30,
                      ),
                    ),
                    SizedBox(width: 3),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Usuário qualquer', style: TextStyle(fontSize: 8)),
                        RatingStars(
                          value: 5,
                          starColor: Colors.green,
                          starOffColor: Colors.white10,
                          starCount: 5,
                          starSize: 8,
                          maxValue: 5,
                          starSpacing: 2,
                          maxValueVisibility: true,
                          valueLabelVisibility: false,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: TextStyle(fontSize: 8),
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Achou essa avaliação útil?', style: TextStyle(fontSize: 5)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.thumb_up_alt_outlined, size: 5.0),
                        SizedBox(width: 3),
                        Text('Sim', style: TextStyle(fontSize: 10)),
                        SizedBox(width: 10),
                        Icon(Icons.thumb_down_alt_outlined, size: 5.0),
                        SizedBox(width: 3),
                        Text('Não', style: TextStyle(fontSize: 10)),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Divider(
            color: Colors.black,
            height: 35,
            thickness: 2,
            indent: 80,
            endIndent: 80,
          ),
          buildAva(),
          SizedBox(height: 30),
          buildAva(),
          SizedBox(height: 30),
          buildAva(),
          SizedBox(height: 30),
          buildAva(),
          SizedBox(height: 30),
        ],
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

  buildAva(){
    return Container(
      padding: EdgeInsetsGeometry.all(7.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: Colors.lightGreen,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                clipBehavior: Clip.hardEdge,
                borderRadius: BorderRadiusGeometry.circular(50.0),
                child: Image.network(
                  'https://i.pinimg.com/originals/cd/97/bb/cd97bb29e1c019e4de5bb9d5a895fa14.jpg',
                  fit: BoxFit.cover,
                  width: 30,
                  height: 30,
                ),
              ),
              SizedBox(width: 3),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Usuário qualquer', style: TextStyle(fontSize: 10)),
                  RatingStars(
                    value: 5,
                    starColor: Colors.green,
                    starOffColor: Colors.white10,
                    starCount: 5,
                    starSize: 10,
                    maxValue: 5,
                    starSpacing: 2,
                    maxValueVisibility: true,
                    valueLabelVisibility: false,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            style: TextStyle(fontSize: 10),
            softWrap: true,
            overflow: TextOverflow.fade,
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Achou essa avaliação útil?', style: TextStyle(fontSize: 10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.thumb_up_alt_outlined, size: 10.0),
                  SizedBox(width: 3),
                  Text('Sim', style: TextStyle(fontSize: 15.0)),
                  SizedBox(width: 10),
                  Icon(Icons.thumb_down_alt_outlined, size: 10.0),
                  SizedBox(width: 3),
                  Text('Não', style: TextStyle(fontSize: 15.0)),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
