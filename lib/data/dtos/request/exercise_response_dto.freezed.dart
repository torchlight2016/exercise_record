// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExerciseResponseDTO _$ExerciseResponseDTOFromJson(Map<String, dynamic> json) {
  return _ExerciseResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$ExerciseResponseDTO {
  String get id => throw _privateConstructorUsedError;
  DateTime get createAt => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  ExerciseType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseResponseDTOCopyWith<ExerciseResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseResponseDTOCopyWith<$Res> {
  factory $ExerciseResponseDTOCopyWith(
          ExerciseResponseDTO value, $Res Function(ExerciseResponseDTO) then) =
      _$ExerciseResponseDTOCopyWithImpl<$Res, ExerciseResponseDTO>;
  @useResult
  $Res call({String id, DateTime createAt, String content, ExerciseType type});
}

/// @nodoc
class _$ExerciseResponseDTOCopyWithImpl<$Res, $Val extends ExerciseResponseDTO>
    implements $ExerciseResponseDTOCopyWith<$Res> {
  _$ExerciseResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createAt = null,
    Object? content = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExerciseType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExerciseResponseDTOCopyWith<$Res>
    implements $ExerciseResponseDTOCopyWith<$Res> {
  factory _$$_ExerciseResponseDTOCopyWith(_$_ExerciseResponseDTO value,
          $Res Function(_$_ExerciseResponseDTO) then) =
      __$$_ExerciseResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, DateTime createAt, String content, ExerciseType type});
}

/// @nodoc
class __$$_ExerciseResponseDTOCopyWithImpl<$Res>
    extends _$ExerciseResponseDTOCopyWithImpl<$Res, _$_ExerciseResponseDTO>
    implements _$$_ExerciseResponseDTOCopyWith<$Res> {
  __$$_ExerciseResponseDTOCopyWithImpl(_$_ExerciseResponseDTO _value,
      $Res Function(_$_ExerciseResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createAt = null,
    Object? content = null,
    Object? type = null,
  }) {
    return _then(_$_ExerciseResponseDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExerciseType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@DateTimeConverter()
class _$_ExerciseResponseDTO
    with DiagnosticableTreeMixin
    implements _ExerciseResponseDTO {
  const _$_ExerciseResponseDTO(
      {required this.id,
      required this.createAt,
      required this.content,
      required this.type});

  factory _$_ExerciseResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ExerciseResponseDTOFromJson(json);

  @override
  final String id;
  @override
  final DateTime createAt;
  @override
  final String content;
  @override
  final ExerciseType type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExerciseResponseDTO(id: $id, createAt: $createAt, content: $content, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExerciseResponseDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('createAt', createAt))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExerciseResponseDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createAt, content, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExerciseResponseDTOCopyWith<_$_ExerciseResponseDTO> get copyWith =>
      __$$_ExerciseResponseDTOCopyWithImpl<_$_ExerciseResponseDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExerciseResponseDTOToJson(
      this,
    );
  }
}

abstract class _ExerciseResponseDTO implements ExerciseResponseDTO {
  const factory _ExerciseResponseDTO(
      {required final String id,
      required final DateTime createAt,
      required final String content,
      required final ExerciseType type}) = _$_ExerciseResponseDTO;

  factory _ExerciseResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_ExerciseResponseDTO.fromJson;

  @override
  String get id;
  @override
  DateTime get createAt;
  @override
  String get content;
  @override
  ExerciseType get type;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseResponseDTOCopyWith<_$_ExerciseResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
