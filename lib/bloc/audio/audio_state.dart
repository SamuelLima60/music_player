enum AudioPlayerState {
  playing,
  paused,
  stopped,
  loading,
  error,
}

class AudioState {
  final AudioPlayerState playerState;
  final String? errorMessage;
  final Duration currentPosition;
  final Duration totalDuration;

  AudioState({
    this.playerState = AudioPlayerState.stopped,
    this.errorMessage,
    this.currentPosition = Duration.zero,
    this.totalDuration = Duration.zero,
  });
}
