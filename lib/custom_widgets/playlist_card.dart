import 'package:flutter/material.dart';
import 'package:music_player_ui/models/playlist_model.dart';

class PlayListCard extends StatelessWidget {
  final PlayList playList;
  final Function onCardClicked;

  const PlayListCard({ Key? key , 
    required this.playList,
    required this.onCardClicked
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onCardClicked();
      },
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 0),
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            image: DecorationImage(image: AssetImage(playList.arThumbnails),fit: BoxFit.cover)
          ),
        ) ,
        title: Text(playList.arSongTitle),
        subtitle: Text(playList.artName),
        trailing: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(playList.arSongDuration),
            const SizedBox(width: 40),
            const Icon(Icons.favorite_outline)
          ],
        ),
      ),
    );
  }
}