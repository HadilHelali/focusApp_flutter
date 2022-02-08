import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
      color: Colors.black,
      width: 100,
      height: 100,
      child: ElevatedButton.icon(
          onPressed: (){},
          icon:Icon(Icons.surround_sound_outlined) , label: Text('music')),
    );
  }
}
