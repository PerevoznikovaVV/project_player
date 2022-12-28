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
  int _img=0;
  int _nAlbum=0;
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
                        leading: const CircleAvatar(backgroundImage: AssetImage('image/different.jpg')),
                        title: const Text('Different Music'),
                        subtitle: const Text('Electronics'),
                        trailing: const Icon(Icons.audiotrack),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> AlbumDetailScreen(
                                  nameAlbum: _nameAlbum='Different Music',
                              )));
                        }
                    )
                ),

                Padding(padding: const EdgeInsets.only(top: 15.0,right: 25.0,left: 25.0),
                    child: ListTile(
                        leading: const CircleAvatar(backgroundImage: AssetImage('image/for_sleeping.jpg')),
                        title: const Text('Music For Sleeping'),
                        subtitle: const Text('Sounds of nature'),
                        trailing: const Icon(Icons.audiotrack),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> AlbumDetailScreen(
                                nameAlbum: _nameAlbum='Music For Sleeping',
                              )));
                        }
                    )
                ),

                Padding(padding: const EdgeInsets.only(top: 15.0,right: 25.0,left: 25.0),
                    child: ListTile(
                        leading: const CircleAvatar(backgroundImage: AssetImage('image/new_year.jpg')),
                        title: const Text('Happy New Year'),
                        subtitle: const Text('Happy New Year'),
                        trailing: const Icon(Icons.audiotrack),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> AlbumDetailScreen(
                                  nameAlbum: _nameAlbum='Happy New Year',
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