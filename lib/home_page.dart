import 'package:flutter/material.dart';
import 'package:music_player_ui/pages/albumn.dart';
import 'package:music_player_ui/pages/artists.dart';
import 'package:music_player_ui/pages/podcasts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // backgroundColor:Colors.grey.shade100,
        appBar: AppBar(
          leading: const Icon(
            Icons.search_outlined,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          title: const Text(
            "BROWSE",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0.0,
          actions: const [
            IconButton(
                onPressed: null,
                icon: Icon(Icons.more_vert_outlined, color: Colors.black))
          ],
          bottom: const TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black26,
            indicatorWeight: 3.0,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                child: Text("ALBUMS"),
              ),
              Tab(
                child: Text("ARTISTS"),
              ),
              Tab(
                child: Text("PODCASTS"),
              ),
            ],
          ),
        ),

        body: const TabBarView(
          children: [
            AlbumnPage(),
            ArtistsPage(),
            PodCastsPage(),
          ],
        ),
      ),
    );
  }
}
