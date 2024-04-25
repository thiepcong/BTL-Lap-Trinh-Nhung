import 'package:flutter_bloc/flutter_bloc.dart';
import 'convert_state.dart';

class ConvertCubit extends Cubit<ConvertState> {
  ConvertCubit() : super(const ConvertState());

  void setPitch(double pitch) {
    emit(state.copyWith(pitch: pitch));
  }

  void setSpeed(double speed) {
    emit(state.copyWith(speed: speed));
  }
}
