import 'package:actress_south/providers/player_list.dart';
import 'package:actress_south/screen.dart/player_row.dart';
import 'package:actress_south/widgets/player_grid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.amberAccent,
      ),
      home: HomeScreen(),
      routes: {},
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PlayerList(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Player Bio'),
          actions: [
            IconButton(
              icon: Icon(Icons.train),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (c) => PlayerRow(),
                    ));
              },
            )
          ],
        ),
        body: PlayerGrid(),
      ),
    );
  }
}
