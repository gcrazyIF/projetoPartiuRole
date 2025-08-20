import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'controladorPaginas.dart';
import 'detalhesPacote.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  child: Image.network(
                    'https://static.vecteezy.com/system/resources/previews/019/879/186/large_2x/user-icon-on-transparent-background-free-png.png', width: 40, height: 40,
                  ),
                ),
                Text('Username'),
                SizedBox(width: 7),
                Icon(Icons.circle, color: Color(0xFF21D375), size: 4),
              ],
            ),
          ),
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
          SizedBox(height: 30),
          GridView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 5,
            ),
            children: [
              Card(
                color: Colors.white70,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => DetalhesPacote()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://a0.muscache.com/im/pictures/miso/Hosting-1175454379947905292/original/1873def9-5710-403f-b1f1-b2c766f61e31.jpeg?im_w=1200', fit: BoxFit.cover,
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Row(
                              children: [
                                buildText(text: 'Pacote Guia Nova York', fontSize: 10.0),
                                SizedBox(width: 6),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star_half, size: 8, color: Colors.green),
                              ],
                            ),
                            buildText(text: 'Estadia 18 - 23 Dec', fontSize: 10.0),
                            buildText(
                              text: 'R\$2.065,70 total',
                              color: Colors.black,
                              fontSize: 10.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white70,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => DetalhesPacote()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://th.bing.com/th/id/R.5121e3f0dc3b2a23ad51b0caec4658e2?rik=aqoJVDtpUyLEsg&pid=ImgRaw&r=0', fit: BoxFit.cover,
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Row(
                              children: [
                                buildText(text: 'Pacote Resort Paris', fontSize: 10.0),
                                SizedBox(width: 6),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star_border, size: 8, color: Colors.green),
                              ],
                            ),
                            buildText(text: 'Estadia 14 - 21 Fev 26', fontSize: 10.0),
                            buildText(
                              text: 'R\$3.564,80 total',
                              color: Colors.black,
                              fontSize: 10.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white70,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => DetalhesPacote()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://hoteisdeluxobrasil.com.br/wp-content/uploads/2021/03/capa-17.jpg', fit: BoxFit.cover,
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Row(
                              children: [
                                buildText(text: 'Pacote Guia Guatemala', fontSize: 10.0),
                                SizedBox(width: 6),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star_half, size: 8, color: Colors.green),
                              ],
                            ),
                            buildText(text: 'Estadia 12 - 30 Set', fontSize: 10.0),
                            buildText(
                              text: 'R\$1.453,30 total',
                              color: Colors.black,
                              fontSize: 10.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white70,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => DetalhesPacote()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://www.dicasdeviagem.com/wp-content/uploads/2022/08/piscina-hardman-praia-joao-pessoa-740x493.jpg', fit: BoxFit.cover,
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Row(
                              children: [
                                buildText(text: 'Pacote Guia Brasil', fontSize: 10.0),
                                SizedBox(width: 6),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                              ],
                            ),
                            buildText(text: 'Estadia 1 - 20 Set', fontSize: 10.0),
                            buildText(
                              text: 'R\$3.598,90 total',
                              color: Colors.black,
                              fontSize: 10.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white70,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => DetalhesPacote()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://www.roteirosdecharme.com.br/wp-content/uploads/2022/02/IMG_4719-1024x683.jpg', fit: BoxFit.cover,
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Row(
                              children: [
                                buildText(text: 'Hotel São Paulo', fontSize: 10.0),
                                SizedBox(width: 6),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star_half, size: 8, color: Colors.green),
                              ],
                            ),
                            buildText(text: 'Estadia de 3 dias', fontSize: 10.0),
                            buildText(
                              text: 'R\$370,80 total',
                              color: Colors.black,
                              fontSize: 10.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white70,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => DetalhesPacote()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://www.hoteisdeluxobrasil.com.br/wp-content/uploads/2020/12/piscina-central915-scaled.jpg', fit: BoxFit.cover,
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Row(
                              children: [
                                buildText(text: 'Pacote Guia Toronto', fontSize: 10.0),
                                SizedBox(width: 6),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                              ],
                            ),
                            buildText(text: 'Estadia 3 - 14 Mar 26', fontSize: 10.0),
                            buildText(
                              text: 'R\$1.340,00 total',
                              color: Colors.black,
                              fontSize: 10.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white70,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => DetalhesPacote()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://i0.wp.com/amantesdeviagens.com/wp-content/uploads/2020/08/Hotel-Palacio-Estoril.jpg?fit=1200%2C758&ssl=1', fit: BoxFit.cover,
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Row(
                              children: [
                                buildText(text: 'Pacote Resort California', fontSize: 10.0),
                                SizedBox(width: 6),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star_border, size: 8, color: Colors.green),
                                Icon(Icons.star_border, size: 8, color: Colors.green),
                                Icon(Icons.star_border, size: 8, color: Colors.green),
                              ],
                            ),
                            buildText(text: 'Estadia 12 - 15 Dec', fontSize: 10.0),
                            buildText(
                              text: 'R\$540,60 total',
                              color: Colors.black,
                              fontSize: 10.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white70,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => DetalhesPacote()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://forbes.com.br/wp-content/uploads/2017/05/Sofitel-Legend-Santa-Clara-Cartagena-rep-forbes-800x533.jpg', fit: BoxFit.cover,
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Row(
                              children: [
                                buildText(text: 'Pacote Guia Austrália', fontSize: 10.0),
                                SizedBox(width: 6),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star, size: 8, color: Colors.green),
                                Icon(Icons.star_half, size: 8, color: Colors.green),
                              ],
                            ),
                            buildText(text: 'Estadia 12 - 22 Dec', fontSize: 10.0),
                            buildText(
                              text: 'R\$1.870,56 total',
                              color: Colors.black,
                              fontSize: 10.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white70,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => DetalhesPacote()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://seeninthecity.co.uk/wp-content/uploads/2016/03/12339244_1040472212660764_925191855505320897_o.jpg', fit: BoxFit.cover,
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Row(
                              children: [
                                buildText(text: 'Pacote Guia Pernambuco', fontSize: 10.0),
                                SizedBox(width: 6),
                                Icon(Icons.star, size: 7, color: Colors.green),
                                Icon(Icons.star, size: 7, color: Colors.green),
                                Icon(Icons.star, size: 7, color: Colors.green),
                                Icon(Icons.star, size: 7, color: Colors.green),
                                Icon(Icons.star, size: 7, color: Colors.green),
                              ],
                            ),
                            buildText(text: 'Estadia 13 - 25 Jul', fontSize: 10.0),
                            buildText(
                              text: 'R\$1.890,50 total',
                              color: Colors.black,
                              fontSize: 10.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
