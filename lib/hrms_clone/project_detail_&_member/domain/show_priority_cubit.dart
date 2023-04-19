import 'package:flutter_bloc/flutter_bloc.dart';

class ShowPriorityCubit extends Cubit<bool> {
  ShowPriorityCubit() : super(false);
  void toggleState() => emit(!state);
  void hideState() => emit(false);
}

class SetPositionCubit extends Cubit<List<double>> {
  SetPositionCubit() : super([0, 0]);
  void setPosition(List<double> position) => emit([...position]);
}
