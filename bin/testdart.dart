import 'package:testdart/testdart.dart' as testdart;

void main() {
  aturVolume(volume: 10); // Output: Volume diatur ke 10
  aturVolume(volume: 20, mute: true); // Output: Audio di-mute
}

void aturVolume({required int volume, bool mute = false}) {
  if (mute) {
    print('Audio di-mute');
  } else {
    print('Volume diatur ke $volume');
  }
}
