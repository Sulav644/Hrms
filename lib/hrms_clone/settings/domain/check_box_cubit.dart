import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/check_box.dart';

class CheckBoxCubit extends Cubit<List<CheckBoxData>> {
  CheckBoxCubit()
      : super([
          const CheckBoxData(type: 'Employee', firstIndex: 0, secondIndex: 0)
        ]);
  void addCheckBox(CheckBoxData data) => emit([...state, data]);
  void removeCheckBox(CheckBoxData data) {
    List<CheckBoxData> filteredList = [];
    for (var element in state) {
      if (element != data) {
        filteredList.add(element);
      }
    }
    emit([...filteredList]);
  }
}

class ToggleButtonCubit extends Cubit<List<String>> {
  ToggleButtonCubit() : super(['Employee']);
  void addCheckBox(String data) => emit([...state, data]);
  void removeCheckBox(String data) {
    List<String> filteredList = [];
    for (var element in state) {
      if (element != data) {
        filteredList.add(element);
      }
    }
    emit([...filteredList]);
  }
}

class AdminSelectCubit extends Cubit<String> {
  AdminSelectCubit() : super('');
  void addData(String data) => emit(data);
}
