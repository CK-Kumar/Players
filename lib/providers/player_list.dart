import 'package:flutter/cupertino.dart';
import '../model/player.dart';

class PlayerList with ChangeNotifier {
  List<Player> bio = [
    Player('p1', 'Ronaldo', 35,
        'https://upload.wikimedia.org/wikipedia/commons/8/8c/Cristiano_Ronaldo_2018.jpg'),
    Player('p2', 'Messi', 35,
        'https://www.pngkey.com/png/detail/187-1872914_messi-face-png-2018.png'),
    Player('p3', 'Ramos', 35,
        'https://www.realmadrid.com/img/vertical_380px/ramos_380x501_20201203095830.jpg'),
    Player('p4', 'Benzema', 35,
        'https://img.a.transfermarkt.technology/portrait/big/18922-1544774342.jpg?lm=1'),
    Player('p5', 'Hazard', 35,
        'https://upload.wikimedia.org/wikipedia/commons/4/46/Eden_Hazard_at_Baku_before_2019_UEFA_Europe_League_Final.jpg'),
    Player('p6', 'Kroos', 35,
        'https://www.realmadrid.com/img/vertical_380px/kroos_380x501_20201203095832.jpg')
  ];

  List get list {
    return [...bio];
  }
}
