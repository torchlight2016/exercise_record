// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExerciseRequestDTO _$ExerciseRequestDTOFromJson(Map<String, dynamic> json) {
  return _ExerciseRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$ExerciseRequestDTO {
  ExerciseType get type => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get createAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseRequestDTOCopyWith<ExerciseRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseRequestDTOCopyWith<$Res> {
  factory $ExerciseRequestDTOCopyWith(
          ExerciseRequestDTO value, $Res Function(ExerciseRequestDTO) then) =
      _$ExerciseRequestDTOCopyWithImpl<$Res, ExerciseRequestDTO>;
  @useResult
  $Res call({ExerciseType type, String content, DateTime createAt});
}

/// @nodoc
class _$ExerciseRequestDTOCopyWithImpl<$Res, $Val extends ExerciseRequestDTO>
    implements $ExerciseRequestDTOCopyWith<$Res> {
  _$ExerciseRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? content = null,
    Object? createAt = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExerciseType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExerciseRequestDTOCopyWith<$Res>
    implements $ExerciseRequestDTOCopyWith<$Res> {
  factory _$$_ExerciseRequestDTOCopyWith(_$_ExerciseRequestDTO value,
          $Res Function(_$_ExerciseRequestDTO) then) =
      __$$_ExerciseRequestDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExerciseType type, String content, DateTime createAt});
}

/// @nodoc
class __$$_ExerciseRequestDTOCopyWithImpl<$Res>
    extends _$ExerciseRequestDTOCopyWithImpl<$Res, _$_ExerciseRequestDTO>
    implements _$$_ExerciseRequestDTOCopyWith<$Res> {
  __$$_ExerciseRequestDTOCopyWithImpl(
      _$_ExerciseRequestDTO _value, $Res Function(_$_ExerciseRequestDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? content = null,
    Object? createAt = null,
  }) {
    return _then(_$_ExerciseRequestDTO(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExerciseType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExerciseRequestDTO
    with DiagnosticableTreeMixin
    implements _ExerciseRequestDTO {
  const _$_ExerciseRequestDTO(
      {required this.type, required this.content, required this.createAt});

  factory _$_ExerciseRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ExerciseRequestDTOFromJson(json);

  @override
  final ExerciseType type;
  @override
  final String content;
  @override
  final DateTime createAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExerciseRequestDTO(type: $type, content: $content, createAt: $createAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExerciseRequestDTO'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('createAt', createAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExerciseRequestDTO &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, content, createAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExerciseRequestDTOCopyWith<_$_ExerciseRequestDTO> get copyWith =>
      __$$_ExerciseRequestDTOCopyWithImpl<_$_ExerciseRequestDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExerciseRequestDTOToJson(
      this,
    );
  }
}

abstract class _ExerciseRequestDTO implements ExerciseRequestDTO {
  const factory _ExerciseRequestDTO(
      {required final ExerciseType type,
      required final String content,
      required final DateTime createAt}) = _$_ExerciseRequestDTO;

  factory _ExerciseRequestDTO.fromJson(Map<String, dynamic> json) =
      _$_ExerciseRequestDTO.fromJson;

  @override
  ExerciseType get type;
  @override
  String get content;
  @override
  DateTime get createAt;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseRequestDTOCopyWith<_$_ExerciseRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
