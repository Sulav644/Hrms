import 'package:flutter_bloc/flutter_bloc.dart';

class ShowMenuCubit extends Cubit<bool> {
  ShowMenuCubit() : super(false);
  void toggleState() => emit(!state);
  void resetState() => emit(false);
}
