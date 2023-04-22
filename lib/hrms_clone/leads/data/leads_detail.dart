import 'package:freezed_annotation/freezed_annotation.dart';

part 'leads_detail.freezed.dart';

@freezed
class LeadsDetail with _$LeadsDetail {
  const LeadsDetail._();
  const factory LeadsDetail({
    String? image,
    String? name,
    String? email,
    String? project,
    String? status,
    String? createdDate,
  }) = _LeadsDetail;
}
