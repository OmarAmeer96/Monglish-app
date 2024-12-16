import 'package:freezed_annotation/freezed_annotation.dart';
part 'students_state.freezed.dart';

@freezed
class StudentsState<T> with _$StudentsState<T> {
  const factory StudentsState.initial() = Initial;
  const factory StudentsState.loading() = Loading;
  const factory StudentsState.success(T data) = Success<T>;
  const factory StudentsState.successAdd(T data) = SuccessAdd<T>;
  const factory StudentsState.successUpdate(T data) = SuccessUpdate<T>;
  const factory StudentsState.successDelete(T data) = SuccessDelete<T>;
  const factory StudentsState.error({required String error}) = Error;
}
