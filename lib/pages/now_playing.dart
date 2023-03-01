import 'package:flutter/material.dart';
import 'package:music_player_ui/models/playlist_model.dart';

class NowPlaying extends StatefulWidget {
  final PlayList playlist;
  const NowPlaying({Key? key, required this.playlist}) : super(key: key);

  @override
  State<NowPlaying> createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        title: const Text('Now Playing',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15)),
        centerTitle: true,
        backgroundColor: Colors.white,
        // leading: const Icon(Icons.chevron_left, color: Colors.black,size: 30,),
        actions: const [
          Icon(
            Icons.more_vert_outlined,
            color: Colors.black,
            size: 25,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
              margin: const EdgeInsets.only(
                  top: 50, left: 60, right: 60, bottom: 20),
              height: 300.0,
              width: 0,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(widget.playlist.arThumbnails)))),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.playlist.arSongTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  widget.playlist.artName,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 90,
                child: const Slider(
                    value: 50,
                    min: 0,
                    max: 130,
                    activeColor: Colors.amber,
                    onChanged: null),
              ),
            ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.skip_previous,
                  size: 35,
                ),
                Icon(
                  Icons.play_circle_filled,
                  size: 100,
                ),
                Icon(
                  Icons.skip_next,
                  size: 35,
                )
              ]),
          const SizedBox(
            height: 20,
          ),
          const Icon(
            Icons.keyboard_arrow_up,
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}
