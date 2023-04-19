import 'package:flutter_bloc/flutter_bloc.dart';

class SelectTimelineCubit extends Cubit<String> {
  SelectTimelineCubit() : super('');
  void addTimeline(String timeline) => emit(timeline);
}

class EditTimelineCubit extends Cubit<List<String>> {
  EditTimelineCubit()
      : super([
          'Patient appointment booking',
          'Appointment booking payment gateway',
          'Doctor available module',
          'Patient and Doctor video conferencing',
          'Private chat module',
          'Patient Profile add'
        ]);
  void editTimeline({required String timeline, required int index}) {
    List<String> filteredList = [];
    for (var element in state) {
      if (index == state.indexOf(element)) {
        filteredList.add(timeline);
      } else {
        filteredList.add(element);
      }
    }
    emit([...filteredList]);
  }

  void removeTimeline({required int index}) {
    List<String> filteredList = [];
    for (var element in state) {
      if (index != state.indexOf(element)) {
        filteredList.add(element);
      }
    }
    emit([...filteredList]);
  }
}

class SelectedTimelinesCubit extends Cubit<List<int>> {
  SelectedTimelinesCubit() : super([]);
  void addTimeLines(int index) => emit([...state, index]);
  void deselectTimeline(int index) {
    List<int> filteredList = [];
    for (var element in state) {
      if (index != state.indexOf(element)) {
        filteredList.add(element);
      }
    }
    emit([...filteredList]);
  }

  void removeAll() => emit([]);
}

class TextBoxInplaceOfTextCubit extends Cubit<int> {
  TextBoxInplaceOfTextCubit() : super(100);
  void toggleState(int index) => emit(index);
}
