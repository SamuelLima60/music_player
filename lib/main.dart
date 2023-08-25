import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player_client/bloc/audio/audio_bloc.dart';
import 'package:music_player_client/bloc/home/home_bloc.dart';
import 'package:music_player_client/page/home_page.dart';
import 'package:music_player_client/page/player_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music App',
      theme: ThemeData.dark(),
      routes: {
        '/player': (context) => const PlayerPage(),
      },
      home: MultiBlocProvider(
        providers: [
          BlocProvider<AudioBloc>(
            create: (context) => AudioBloc(),
          ),
          BlocProvider<HomeBloc>(
            create: (context) => HomeBloc(),
          ),
        ],
        child: const HomePage(),
      ),
    );
  }
}
