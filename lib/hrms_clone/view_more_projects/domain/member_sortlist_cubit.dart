import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrms_clone/hrms_clone/admin_dashboard/data/detail_banner.dart';

class MembersSortListCubit extends Cubit<List<ProjectDetails>> {
  MembersSortListCubit()
      : super([
          ProjectDetails(title: 'Office Management', id: 1),
          ProjectDetails(title: 'Office Management', id: 2),
          ProjectDetails(title: 'Office Management', id: 3),
          ProjectDetails(title: 'Hospital Management', id: 4),
          ProjectDetails(title: 'Hospital Management', id: 5),
          ProjectDetails(title: 'Project Management', id: 6),
          ProjectDetails(title: 'Project Management', id: 7),
          ProjectDetails(title: 'Project Management', id: 8),
          ProjectDetails(title: 'Video Calling', id: 9),
          ProjectDetails(title: 'Video Calling', id: 10),
        ]);
  void sortToAlphabet() {
    List<ProjectDetails> filteredList = state;
    filteredList.sort((a, b) => a.title.compareTo(b.title));
    print(state);
    emit([...filteredList]);
  }

  void sortToId() {
    List<ProjectDetails> filteredList = state;
    filteredList.sort((a, b) => a.id.compareTo(b.id));
    print(state);
    emit([...filteredList]);
  }
}
