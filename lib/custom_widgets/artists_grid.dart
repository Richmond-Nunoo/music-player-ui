import 'package:flutter/material.dart';
import 'package:music_player_ui/models/artist_model.dart';

class ArtisteGrid extends StatelessWidget {
  final ArtistModel modelList;
  final Function onItemTap;
  const ArtisteGrid(
      {Key? key, required this.modelList, required this.onItemTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          onItemTap();
        },
        child: Column(
          children: [
            Container(
              width: 140,
              height: 130,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  image: DecorationImage(
                      image: AssetImage(modelList.imageUrl),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: Text(
                modelList.name,
                style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
