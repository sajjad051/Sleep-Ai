import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class AudioController extends GetxController {
  final AudioPlayer _audioPlayer = AudioPlayer();
  var isPlaying = false.obs;
  var position = Duration.zero.obs;
  var duration = Duration.zero.obs;
  var volume = 1.0.obs;

  @override
  void onInit() {
    super.onInit();
    _audioPlayer.positionStream.listen((pos) {
      position.value = pos;
    });
    _audioPlayer.durationStream.listen((dur) {
      duration.value = dur ?? Duration.zero;
    });
    _audioPlayer.playerStateStream.listen((state) {
      isPlaying.value = state.playing;
    });
  }

  void playAudio() async {
    print("CLICK Response okay");
    try {
      await _audioPlayer.setUrl('https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3');
      _audioPlayer.play();
    } catch (e) {
      print('Error playing audio: $e');
    }
  }


  void pauseAudio() {
    _audioPlayer.pause();
  }

  void stopAudio() {
    _audioPlayer.stop();
  }

  void seekAudio(Duration duration) {
    _audioPlayer.seek(duration);
  }

  void setVolume(double newVolume) {
    volume.value = newVolume;
    _audioPlayer.setVolume(newVolume);
  }

  @override
  void onClose() {
    _audioPlayer.dispose();
    super.onClose();
  }
}
