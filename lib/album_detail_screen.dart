import 'package:flutter/material.dart';
import 'package:project_player/track/track_one_screen.dart';
import 'package:project_player/track/track_three_screen.dart';
import 'package:project_player/track/track_two_screen.dart';

//-------СПИСОК ТРЕКОВ АЛЬБОМА-------//
// ignore: must_be_immutable
class AlbumDetailScreen extends StatelessWidget{
  AlbumDetailScreen(
      {super.key,
        required this.nameAlbum
      });

  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final String? nameAlbum;
  String _nameMusic='';
  String _nameAuthor='';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Album "$nameAlbum"'),
          backgroundColor: Colors.pink
      ),

        body: Form(
            key: _form,
            child: ListView(
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(top: 15.0,right: 25.0,left: 25.0),
                    child: ListTile(
                        leading: const Icon(Icons.queue_music),
                        title: const Text('Cool track'),
                        subtitle: const Text('Electronics'),
                        trailing: const Icon(Icons.play_arrow),
                        onTap: () {
                         // var player;
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> TrackOneScreen(
                                nameMusic: _nameMusic='Cool track',
                                nameAuthor: _nameAuthor='Electronics',
                                audioPlayerManager: AudioPlayerManagerOne()
                              )));
                        }
                    )
                ),

                Padding(padding: const EdgeInsets.only(top: 15.0,right: 25.0,left: 25.0),
                    child: ListTile(
                        leading: const Icon(Icons.queue_music),
                        title: const Text('Relaxing track'),
                        subtitle: const Text('Electronics'),
                        trailing: const Icon(Icons.play_arrow),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> TrackTwoScreen(
                                  nameMusic: _nameMusic='Relaxing track',
                                  nameAuthor: _nameAuthor='Electronics',
                                  audioPlayerManager: AudioPlayerManagerTwo()
                              )));
                        }
                    )
                ),

                Padding(padding: const EdgeInsets.only(top: 15.0,right: 25.0,left: 25.0),
                    child: ListTile(
                        leading: const Icon(Icons.queue_music),
                        title: const Text('Favorite track'),
                        subtitle: const Text('Electronics'),
                        trailing: const Icon(Icons.play_arrow),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> TrackThreeScreen(
                                  nameMusic: _nameMusic='Favorite track',
                                  nameAuthor: _nameAuthor='Electronics',
                                  audioPlayerManager: AudioPlayerManagerThree()
                              )));
                        }
                    )
                ),
              ],
            )
        )
    );
  }
}