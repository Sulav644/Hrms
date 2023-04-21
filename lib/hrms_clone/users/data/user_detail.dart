import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_detail.freezed.dart';

@freezed
class UserDetail with _$UserDetail {
  const UserDetail._();
  const factory UserDetail({
    String? image,
    String? name,
    String? nickName,
    String? email,
    String? phone,
    String? address,
    String? date,
  }) = _UserDetail;
}
