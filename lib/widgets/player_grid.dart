import 'package:actress_south/providers/player_list.dart';
import 'package:actress_south/screen.dart/player_details_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class PlayerGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bio = Provider.of<PlayerList>(context).bio;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10),
      itemCount: bio.length,
      itemBuilder: (context, index) => InkWell(
          child: Container(
            decoration: BoxDecoration(color: Colors.amber),
            child: Image.network(bio[index].url),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (c) => PlayerDetailsScreen(
                      bio[index].name, bio[index].age, bio[index].url)),
            );
          }),
    );
  }
}
