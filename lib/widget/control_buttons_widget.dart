import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/audio/audio_bloc.dart';

class ControlButtonsWidget extends StatelessWidget {
  const ControlButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final audioPlayer = BlocProvider.of<AudioBloc>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.skip_previous),
        ),
        IconButton(
          onPressed: () {
            audioPlayer.add(PlayAudio());
          },
          icon: const Icon(Icons.pause_circle),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.skip_next),
        ),
      ],
    );
  }
}
