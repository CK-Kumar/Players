import 'package:actress_south/providers/player_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PlayerRow extends StatefulWidget {
  @override
  _PlayerRowState createState() => _PlayerRowState();
}

class _PlayerRowState extends State<PlayerRow> {
  @override
  Widget build(BuildContext context) {
    final rowPlayer = Provider.of<PlayerList>(context).bio;
    return Scaffold(
      appBar: AppBar(
        title: Text('Player Row'),
      ),
      body: ListView.builder(
        itemBuilder: (context, i) => ListTile(
          leading: Text(rowPlayer[i].name),
          trailing: Icon(Icons.sports_football),
        ),
        itemCount: rowPlayer.length,
      ),
    );
  }
}
