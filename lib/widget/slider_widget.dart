import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/audio/audio_bloc.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final audioPlayer = BlocProvider.of<AudioBloc>(context).audioPlayer;

    return StreamBuilder(
      stream: audioPlayer.positionStream,
      builder: (context, snapshot) {
        final position = snapshot.data ?? Duration.zero;
        final duration = audioPlayer.duration ?? Duration.zero;

        return Slider(
          value: position.inSeconds.toDouble(),
          max: duration.inSeconds.toDouble(),
          onChanged: (newValue) {
            audioPlayer.seek(Duration(seconds: newValue.toInt()));
          },
        );
      },
    );
  }
}
