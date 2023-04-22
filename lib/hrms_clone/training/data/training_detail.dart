import 'package:freezed_annotation/freezed_annotation.dart';

part 'training_detail.freezed.dart';

@freezed
class TrainingDetail with _$TrainingDetail {
  const TrainingDetail._();
  const factory TrainingDetail({
    String? type,
    String? image,
    String? name,
    String? email,
    int? cost,
    bool? isActive,
  }) = _TrainingDetail;
}
