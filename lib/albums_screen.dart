import 'package:flutter/material.dart';
import 'package:project_player/album_detail_screen.dart';

void main(){runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
        home: AlbumsScreen());
  }
}

//-------СТРАНИЦА АЛЬБОМОВ-------//
class AlbumsScreen extends StatefulWidget{
  const AlbumsScreen({super.key});

  @override
  State<AlbumsScreen> createState() => _AlbumsScreenState();
}


class _AlbumsScreenState extends State<AlbumsScreen>{
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  String _nameAlbum=' ';
  final nameAlbumController = TextEditingController();

  @override
  void dispose() {
    //final nameAlbumController = TextEditingController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: const Text('Your Music Player\n        Albums'),
            backgroundColor: Colors.pink
        ),

        body: Form(
            key: _form,
            child: ListView(
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(top: 15.0,right: 25.0,left: 25.0),
                    child: ListTile(
                        leading: const CircleAvatar(backgroundImage: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/71NXBmQ5v1L._SL1200_.jpg')),
                        title: const Text('Album name 1'),
                        subtitle: const Text('Group name 1'),
                        trailing: const Icon(Icons.audiotrack),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> AlbumDetailScreen(
                                  nameAlbum: _nameAlbum='Album name 1'
                              )));
                        }
                    )
                ),

                Padding(padding: const EdgeInsets.only(top: 15.0,right: 25.0,left: 25.0),
                    child: ListTile(
                        leading: const CircleAvatar(backgroundColor: Colors.red),
                        title: const Text('Album name 2'),
                        subtitle: const Text('Group name 2'),
                        trailing: const Icon(Icons.audiotrack),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> AlbumDetailScreen(
                                  nameAlbum: _nameAlbum='Album name 2'
                              )));
                        }
                    )
                ),

                Padding(padding: const EdgeInsets.only(top: 15.0,right: 25.0,left: 25.0),
                    child: ListTile(
                        leading: const CircleAvatar(backgroundColor: Colors.red),
                        title: const Text('Album name 3'),
                        subtitle: const Text('Group name 3'),
                        trailing: const Icon(Icons.audiotrack),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> AlbumDetailScreen(
                                  nameAlbum: _nameAlbum='Album name 3'
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