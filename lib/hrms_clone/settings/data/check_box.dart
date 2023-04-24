import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_box.freezed.dart';

@freezed
class CheckBoxData with _$CheckBoxData {
  const CheckBoxData._();
  const factory CheckBoxData({
    required String type,
    required int firstIndex,
    required int secondIndex,
  }) = _CheckBoxData;
}
