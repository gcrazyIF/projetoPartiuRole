import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetalhesPacote extends StatefulWidget {
  const DetalhesPacote({super.key});

  @override
  State<DetalhesPacote> createState() => _DetalhesPacoteState();
}

class _DetalhesPacoteState extends State<DetalhesPacote> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('ViagensApp'),
          bottom: TabBar(
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
    return Text(
      'Visão Geral',
      style: GoogleFonts.inter(
        fontSize: 50,
      ),
    );
  }

  buildAvaliacoesContent(){
    return Text(
      'Avaliações',
      style: GoogleFonts.inter(
        fontSize: 50,
      ),
    );
  }

  buildGaleriaContent(){
    return Text(
      'Galeria de fotos',
      style: GoogleFonts.inter(
        fontSize: 50,
      ),
    );
  }
}
