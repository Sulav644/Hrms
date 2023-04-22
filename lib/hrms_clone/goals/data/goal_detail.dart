import 'package:freezed_annotation/freezed_annotation.dart';

part 'goal_detail.freezed.dart';

@freezed
class GoalDetail with _$GoalDetail {
  const GoalDetail._();
  const factory GoalDetail({String? type, String? description}) = _GoalDetail;
}

@freezed
class GoalTrackDetail with _$GoalTrackDetail {
  const GoalTrackDetail._();
  const factory GoalTrackDetail(
      {String? type,
      String? subject,
      String? target,
      String? endDate,
      String? description,
      bool? isActive,
      int? progress}) = _GoalTrackDetail;
}
