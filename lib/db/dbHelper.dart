import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String DBname = 'partiurole.db';

    String DBpath = join(path, DBname);
    Database database = await openDatabase(
      DBpath,
      version: 1,
      onCreate: onCreate,
    );

    print(DBpath);
    return database;
  }

  Future<void> onCreate(Database db, int version) async {
    String sql = '''CREATE TABLE CardsPacotesAtb (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    imageLink TEXT,
    nomePacote TEXT,
    nota REAL,
    dataEstadia TEXT,
    preco TEXT
    );''';

    await db.execute(sql);

    sql =
        "INSERT INTO CardsPacotesAtb (imageLink, nomePacote, nota, dataEstadia, preco) VALUES ('https://a0.muscache.com/im/pictures/miso/Hosting-1175454379947905292/original/1873def9-5710-403f-b1f1-b2c766f61e31.jpeg?im_w=1200', 'Pacote Guia Nova York', 4.5, 'Estadia: de 18 a 23 Dez.', 'R\$2.065,70');";
    await db.execute(sql);

    sql =
    "INSERT INTO CardsPacotesAtb (imageLink, nomePacote, nota, dataEstadia, preco) VALUES ('https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/ed/f5/e3/jewel-punta-cana-all.jpg?w=1400&h=-1&s=1', 'Pacote Resort Paris', 4.0, 'Estadia: de 14 a 21 Fev. 26', 'R\$3.564,80');";
    await db.execute(sql);

    sql =
    "INSERT INTO CardsPacotesAtb (imageLink, nomePacote, nota, dataEstadia, preco) VALUES ('https://hoteisdeluxobrasil.com.br/wp-content/uploads/2021/03/capa-17.jpg', 'Pacote Guia Guatemala', 3.5, 'Estadia: de 12 a 30 Set.', 'R\$1.453,30');";
    await db.execute(sql);

    sql =
    "INSERT INTO CardsPacotesAtb (imageLink, nomePacote, nota, dataEstadia, preco) VALUES ('https://www.dicasdeviagem.com/wp-content/uploads/2022/08/piscina-hardman-praia-joao-pessoa-740x493.jpg', 'Pacote Guia Brasil', 5.0, 'Estadia: de 1 a 20 Set.', 'R\$3.598,90');";
    await db.execute(sql);

    sql =
    "INSERT INTO CardsPacotesAtb (imageLink, nomePacote, nota, dataEstadia, preco) VALUES ('https://www.roteirosdecharme.com.br/wp-content/uploads/2022/02/IMG_4719-1024x683.jpg', 'Hotel São Paulo', 4.5, 'Estadia de 3 dias', 'R\$370,80');";
    await db.execute(sql);

    sql =
    "INSERT INTO CardsPacotesAtb (imageLink, nomePacote, nota, dataEstadia, preco) VALUES ('https://www.hoteisdeluxobrasil.com.br/wp-content/uploads/2020/12/piscina-central915-scaled.jpg', 'Pacote Guia Toronto', 5.0, 'Estadia: de 3 a 14 Mar. 26', 'R\$1.340,00');";
    await db.execute(sql);

    sql =
    "INSERT INTO CardsPacotesAtb (imageLink, nomePacote, nota, dataEstadia, preco) VALUES ('https://i0.wp.com/amantesdeviagens.com/wp-content/uploads/2020/08/Hotel-Palacio-Estoril.jpg?fit=1200%2C758&ssl=1', 'Pacote Resort California', 2.0, 'Estadia: de 12 a 15 Dec.', 'R\$540,60');";
    await db.execute(sql);

    sql =
    "INSERT INTO CardsPacotesAtb (imageLink, nomePacote, nota, dataEstadia, preco) VALUES ('https://forbes.com.br/wp-content/uploads/2017/05/Sofitel-Legend-Santa-Clara-Cartagena-rep-forbes-800x533.jpg', 'Pacote Guia Austrália', 4.5, 'Estadia: de 12 a 22 Dec.', 'R\$1.870,56');";
    await db.execute(sql);

    sql =
    "INSERT INTO CardsPacotesAtb (imageLink, nomePacote, nota, dataEstadia, preco) VALUES ('https://seeninthecity.co.uk/wp-content/uploads/2016/03/12339244_1040472212660764_925191855505320897_o.jpg', 'Pacote Guia Pernambuco', 5.0, 'Estadia: de 13 a 25 Jul. 26', 'R\$1.890,50');";
    await db.execute(sql);
  }
}

