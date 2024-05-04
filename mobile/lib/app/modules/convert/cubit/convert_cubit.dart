import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:text_to_speech/text_to_speech.dart';
import 'convert_state.dart';

class ConvertCubit extends Cubit<ConvertState> {
  ConvertCubit() : super(const ConvertState());

  final TextToSpeech tts = TextToSpeech();

  void setVolumn(double volume) {
    emit(state.copyWith(volumn: volume));
    tts.setVolume(volume);
    tts.setLanguage("en-US");
  }

  void setPitch(double pitch) {
    emit(state.copyWith(pitch: pitch));
    tts.setPitch(pitch);
  }

  void setSpeed(double speed) {
    emit(state.copyWith(speed: speed));
    tts.setRate(speed);
  }

  void speak() {
    String text = """
Rate range: 0-2.
1.0 is the normal and default speech rate. Lower values slow down the speech (0.5 is half the normal speech rate). Greater values accelerate it (2.0 is twice the normal speech rate).""";
    tts.speak(text);
  }
}
