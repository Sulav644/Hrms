import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrms_clone/hrms_clone/admin_dashboard/data/detail_banner.dart';

class MembersSortListCubit extends Cubit<List<ProjectDetails>> {
  MembersSortListCubit()
      : super([
          const ProjectDetails(title: 'Office Management', id: 1),
          const ProjectDetails(title: 'Office Management', id: 2),
          const ProjectDetails(title: 'Office Management', id: 3),
          const ProjectDetails(title: 'Hospital Management', id: 4),
          const ProjectDetails(title: 'Hospital Management', id: 5),
          const ProjectDetails(title: 'Project Management', id: 6),
          const ProjectDetails(title: 'Project Management', id: 7),
          const ProjectDetails(title: 'Project Management', id: 8),
          const ProjectDetails(title: 'Video Calling', id: 9),
          const ProjectDetails(title: 'Video Calling', id: 10),
        ]);
  void sortToAlphabet() {
    List<ProjectDetails> filteredList = state;
    filteredList.sort((a, b) => a.title.compareTo(b.title));
    emit([...filteredList]);
  }

  void sortToId() {
    List<ProjectDetails> filteredList = state;
    filteredList.sort((a, b) => a.id.compareTo(b.id));
    emit([...filteredList]);
  }
}
