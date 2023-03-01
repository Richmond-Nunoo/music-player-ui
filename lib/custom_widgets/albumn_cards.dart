import 'package:flutter/material.dart';
import 'package:music_player_ui/models/artist_model.dart';

class AlbumnCards extends StatelessWidget {
  final ArtistModel modelList;
  final Function onItemTap;

  const AlbumnCards({ Key? key, 
  required this.modelList, 
  required this.onItemTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal:3),
      child: Stack(
        children: [
           GestureDetector(
             onTap: (){
               onItemTap();
             },
             child: Container(
             width: MediaQuery.of(context).size.width *0.30,
             height: 150,
             decoration: BoxDecoration(
                     image: DecorationImage(image: AssetImage(modelList.imageUrl),fit: BoxFit.cover),
             borderRadius: const BorderRadius.all(Radius.circular(5)),
             color: Colors.grey.shade300
                     ),
                     ),
           ),
          const Positioned(
            bottom: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical:5,horizontal:5),
              child: Icon(
                Icons.play_circle,color:
                 Colors.white,
              ),
            )
          )

          // Positioned(
          //   bottom: 0,
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(vertical: 5,horizontal:5),
          //     child: Container(
          //       width: 25,
          //       height: 25,
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: Colors.grey.shade500
          //       ),
          //       child: const Center(
          //         child: Icon(Icons.play_arrow,color: Colors.white,size:18)
          //       ),
          //     ),
          //   ),
          // )
      
      
        ],
      ),
    );
  }
}