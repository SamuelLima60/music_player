import 'package:bloc/bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player_client/bloc/audio/audio_state.dart';

sealed class AudioEvent {}

class LoadAudio extends AudioEvent {}

class PlayAudio extends AudioEvent {}

class PauseAudio extends AudioEvent {}

class StopAudio extends AudioEvent {}

class AudioBloc extends Bloc<AudioEvent, AudioState> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  AudioPlayer get audioPlayer => _audioPlayer;

  AudioBloc() : super(AudioState()) {
    on<LoadAudio>((event, emit) async {
      await _audioPlayer.setUrl(
          'https://archive.org/download/IGM-V7/IGM%20-%20Vol.%207/25%20Diablo%20-%20Tristram%20%28Blizzard%29.mp3');
    });

    on<PlayAudio>((event, emit) {
      _audioPlayer.play();
    });

    on<PauseAudio>((event, emit) {
      _audioPlayer.pause();
    });
  }
}
