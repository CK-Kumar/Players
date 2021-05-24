import 'package:actress_south/model/player.dart';
import 'package:flutter/material.dart';

class PlayerDetailsScreen extends StatelessWidget {
  @override
  final String playerName;
  final double age;
  final String url;
  PlayerDetailsScreen(this.playerName, this.age, this.url);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(playerName),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Card(
              child: FittedBox(
                child: Image.network(
                  url,
                  height: 300,
                  width: 300,
                ),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.amber),
              child: Card(
                  color: Colors.blueAccent,
                  child: Text(
                    playerName,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.amber),
              child: Card(
                  color: Colors.blueAccent ,
                  child: Text(
                    age.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
