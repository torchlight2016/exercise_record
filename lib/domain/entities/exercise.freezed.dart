// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Exercise {
  ExerciseType get exerciseType => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res, Exercise>;
  @useResult
  $Res call({ExerciseType exerciseType, String content, DateTime dateTime});
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res, $Val extends Exercise>
    implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerciseType = null,
    Object? content = null,
    Object? dateTime = null,
  }) {
    return _then(_value.copyWith(
      exerciseType: null == exerciseType
          ? _value.exerciseType
          : exerciseType // ignore: cast_nullable_to_non_nullable
              as ExerciseType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExerciseCopyWith<$Res> implements $ExerciseCopyWith<$Res> {
  factory _$$_ExerciseCopyWith(
          _$_Exercise value, $Res Function(_$_Exercise) then) =
      __$$_ExerciseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExerciseType exerciseType, String content, DateTime dateTime});
}

/// @nodoc
class __$$_ExerciseCopyWithImpl<$Res>
    extends _$ExerciseCopyWithImpl<$Res, _$_Exercise>
    implements _$$_ExerciseCopyWith<$Res> {
  __$$_ExerciseCopyWithImpl(
      _$_Exercise _value, $Res Function(_$_Exercise) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerciseType = null,
    Object? content = null,
    Object? dateTime = null,
  }) {
    return _then(_$_Exercise(
      exerciseType: null == exerciseType
          ? _value.exerciseType
          : exerciseType // ignore: cast_nullable_to_non_nullable
              as ExerciseType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Exercise implements _Exercise {
  const _$_Exercise(
      {required this.exerciseType,
      required this.content,
      required this.dateTime});

  @override
  final ExerciseType exerciseType;
  @override
  final String content;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'Exercise(exerciseType: $exerciseType, content: $content, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Exercise &&
            (identical(other.exerciseType, exerciseType) ||
                other.exerciseType == exerciseType) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exerciseType, content, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExerciseCopyWith<_$_Exercise> get copyWith =>
      __$$_ExerciseCopyWithImpl<_$_Exercise>(this, _$identity);
}

abstract class _Exercise implements Exercise {
  const factory _Exercise(
      {required final ExerciseType exerciseType,
      required final String content,
      required final DateTime dateTime}) = _$_Exercise;

  @override
  ExerciseType get exerciseType;
  @override
  String get content;
  @override
  DateTime get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseCopyWith<_$_Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}
