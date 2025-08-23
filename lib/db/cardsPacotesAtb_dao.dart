import 'dbHelper.dart';
import 'package:projeto_appviagens/domain/cardsPacotesAtb.dart';
import 'package:sqflite/sqflite.dart';

class CardsPacotesAtbDao {
  Future<List<CardsPacotesAtb>> ToListCardsPacotes() async {
    Database db = await DBHelper().initDB();
    String sql = 'SELECT * FROM CardsPacotesAtb;';
    var result = await db.rawQuery(sql);

    List<CardsPacotesAtb> cardsPacotesList = [];

    await Future.delayed(Duration(seconds: 2));

    for(var json in result){
      CardsPacotesAtb cardPacoteAtb = CardsPacotesAtb.fromJson(json);
      cardsPacotesList.add(cardPacoteAtb);
    }

    return cardsPacotesList;
  }
}