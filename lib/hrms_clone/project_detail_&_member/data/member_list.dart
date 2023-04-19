import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_list.freezed.dart';

@freezed
class MemberList with _$MemberList {
  const MemberList._();
  const factory MemberList({
    String? image,
    String? name,
    String? designation,
  }) = _MemberList;
}

@freezed
class UploadedFile with _$UploadedFile {
  const UploadedFile._();
  const factory UploadedFile({
    String? title,
    String? name,
    String? date,
    double? size,
  }) = _UploadedFile;
}

@freezed
class IndicatorSelect with _$IndicatorSelect {
  const IndicatorSelect._();
  const factory IndicatorSelect.all() = _All;
  const factory IndicatorSelect.pending() = _Pending;
  const factory IndicatorSelect.completed() = _Completed;
}
