import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player_client/widget/slider_widget.dart';

import '../bloc/audio/audio_bloc.dart';
import '../widget/album_image_widget.dart';
import '../widget/control_buttons_widget.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({super.key});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  void initState() {
    BlocProvider.of<AudioBloc>(context).add(LoadAudio());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_drop_down)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_border)),
          ),
        ],
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              children: [
                AlbumImageWidget(),
                SizedBox(height: 25),
                Text("Alone", style: TextStyle(fontSize: 35)),
                Text("Alan walker"),
                SliderWidget(),
                ControlButtonsWidget(),
                SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
