import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/data/member_list.dart';

class SelectIndicatorCubit extends Cubit<IndicatorSelect> {
  SelectIndicatorCubit() : super(IndicatorSelect.all());
  void toggleState(IndicatorSelect indicator) => emit(indicator);
}
