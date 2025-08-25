import 'package:flutter/material.dart';
import 'package:projeto_appviagens/domain/cardsPacotesAtb.dart';
import 'package:projeto_appviagens/pages/detalhesPacote.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class CardPacote extends StatefulWidget {
  CardsPacotesAtb cardPacoteAtb;

  CardPacote({
    required this.cardPacoteAtb,
    super.key
  });

  @override
  State<CardPacote> createState() => _CardPacoteState();
}

class _CardPacoteState extends State<CardPacote> {
  CardsPacotesAtb get cardPacoteAtb => widget.cardPacoteAtb;

  @override
  Widget build(BuildContext context) {
    return buildCard(imageLink: cardPacoteAtb.imageLink, nomePacote: cardPacoteAtb.nomePacote, nota: cardPacoteAtb.nota, dataEstadia: cardPacoteAtb.dataEstadia, preco: cardPacoteAtb.preco);
  }

  buildCard({required String imageLink, required String nomePacote, required double nota, required String dataEstadia, required String preco}){
    return Card(
      color: Colors.white70,
      child: GestureDetector(
        onTap:(){
          Navigator.push(context, MaterialPageRoute(builder: (_) => DetalhesPacote(cardPacoteAtb: cardPacoteAtb)));
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
                        starSize: 7.5,
                        maxValue: 5,
                        starSpacing: 2,
                        maxValueVisibility: true,
                        valueLabelVisibility: false,
                      ),
                    ],
                  ),
                  Text(dataEstadia, style: TextStyle(fontSize: 10)),
                  Text(preco, style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
