import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player_ui/models/artist_model.dart';

class BillieEilish extends StatefulWidget {
  final ArtistModel artistmodel;
  const BillieEilish({ Key? key, required this.artistmodel}) : super(key: key);

  @override
  State<BillieEilish> createState() => _BillieEilishState();
}

class _BillieEilishState extends State<BillieEilish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(padding: const EdgeInsets.all(20),
          child: Column(
            children: [ 
              Stack(
                children:[
                   Container(
                  height: 220, 
                  width: MediaQuery.of(context).size.width,
                  decoration:
                   BoxDecoration(
                     image: DecorationImage(
                       image: AssetImage(widget.artistmodel.imageUrl), 
                       fit: BoxFit.cover
                       ),    
                    borderRadius: BorderRadius.circular(30)
                     )
                ),
                 const  Positioned(
                  top:10, left:10,
                  child: SizedBox( height:10, width:10,
                    child: IconButton(icon: Icon(Icons.star_border_outlined),
                  onPressed: (null)
                  ),
                  ), 
                  )
                ]),
    
             const  SizedBox(height: 15),

               ListTile(
               title: Text(widget.artistmodel.name, textAlign: TextAlign.start,
             style: const TextStyle(
               fontSize: 30,
               fontWeight: FontWeight.bold,
               color: Colors.black,
             ),),
              contentPadding:const EdgeInsets.symmetric(vertical:10),
             subtitle: const Text('42M Listeners', textAlign: TextAlign.start,
             style: TextStyle(
               fontSize: 15,
               fontWeight: FontWeight.normal,
               color: Colors.grey,
             ),),
             ),

             const SizedBox(height: 40),

             SizedBox(
               height:50,
               width: double.infinity,
               child: TextButton.icon(
                 onPressed: (){}, 
                 label: const Text(
                   'Shuffle Play', textAlign: TextAlign.start,
                 style: TextStyle(color: Colors.white, fontSize: 25),
                 ),
                  style: ButtonStyle(
                   padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                   backgroundColor: MaterialStateProperty.all(Colors.black),
                   elevation: MaterialStateProperty.all(5),
                 ),
                 icon: const Icon(Icons.shuffle, color: Colors.white),
               ),
                 
             ),

             const SizedBox(height: 35),

               ListTile(
               leading: Container(height: 70, width: 50,  
               decoration:  BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 image:const DecorationImage(
                     image: AssetImage("assets/abc1.jpg"), 
                     fit: BoxFit.cover
                     ),
                    )
                 ),
                title: const Text('No Time To Die'),
                subtitle: const Text('Billie Eilish'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const  [
                    Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Text('4:02'),
                      ),
                      Icon(CupertinoIcons.heart),
                  ],
                )
                
             ),

             const Divider(endIndent: 20),

             ListTile(
               leading: Container(height: 70, width: 50,  
               decoration:  BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 image:const DecorationImage(
                     image: AssetImage('assets/pl2.jfif'), 
                     fit: BoxFit.cover
                     ),
                    )
                 ),
                 title: const Text('Blinding Lights'),
                subtitle: const Text('The Weekend'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const  [
                    Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Text('3:21'),
                      ),
                      Icon(CupertinoIcons.heart),
                  ],
                )
             ),

             const Divider(height:30),

             ListTile(
               leading: Container(height: 70, width: 50,  
               decoration:  BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 image:const DecorationImage(
                     image: AssetImage('assets/pl3.jfif'), 
                     fit: BoxFit.cover
                     ),
                    )
                 ),
                 title: const Text('Dont start now'),
                subtitle: const Text('Davis Lingua'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const  [
                    Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Text('3:54'),
                      ),
                      Icon(CupertinoIcons.heart),
                  ],
                )
             ),

             const Divider(height:30),

              ListTile(
               leading: Container(height: 70, width: 50,  
               decoration:  BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 image:const DecorationImage(
                     image: AssetImage('assets/pl4.jfif'), 
                     fit: BoxFit.cover
                     ),
                    )
                 ),
                 title: const Text('Godzilla'),
                subtitle: const Text('Eminem'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const  [
                    Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Text('3:54'),
                      ),
                      Icon(CupertinoIcons.heart),
                  ],
                )
             ),

             const Divider(height:30),
          ],)
          )
        ],
        
      ),
    );
  }
}