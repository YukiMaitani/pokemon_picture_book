// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemonimage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonImage _$PokemonImageFromJson(Map<String, dynamic> json) {
  return _PokemonImage.fromJson(json);
}

/// @nodoc
mixin _$PokemonImage {
  @JsonKey(name: 'front_default')
  String? get imageURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonImageCopyWith<PokemonImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonImageCopyWith<$Res> {
  factory $PokemonImageCopyWith(
          PokemonImage value, $Res Function(PokemonImage) then) =
      _$PokemonImageCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'front_default') String? imageURL});
}

/// @nodoc
class _$PokemonImageCopyWithImpl<$Res> implements $PokemonImageCopyWith<$Res> {
  _$PokemonImageCopyWithImpl(this._value, this._then);

  final PokemonImage _value;
  // ignore: unused_field
  final $Res Function(PokemonImage) _then;

  @override
  $Res call({
    Object? imageURL = freezed,
  }) {
    return _then(_value.copyWith(
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PokemonImageCopyWith<$Res>
    implements $PokemonImageCopyWith<$Res> {
  factory _$$_PokemonImageCopyWith(
          _$_PokemonImage value, $Res Function(_$_PokemonImage) then) =
      __$$_PokemonImageCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'front_default') String? imageURL});
}

/// @nodoc
class __$$_PokemonImageCopyWithImpl<$Res>
    extends _$PokemonImageCopyWithImpl<$Res>
    implements _$$_PokemonImageCopyWith<$Res> {
  __$$_PokemonImageCopyWithImpl(
      _$_PokemonImage _value, $Res Function(_$_PokemonImage) _then)
      : super(_value, (v) => _then(v as _$_PokemonImage));

  @override
  _$_PokemonImage get _value => super._value as _$_PokemonImage;

  @override
  $Res call({
    Object? imageURL = freezed,
  }) {
    return _then(_$_PokemonImage(
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonImage implements _PokemonImage {
  const _$_PokemonImage({@JsonKey(name: 'front_default') this.imageURL});

  factory _$_PokemonImage.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonImageFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String? imageURL;

  @override
  String toString() {
    return 'PokemonImage(imageURL: $imageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonImage &&
            const DeepCollectionEquality().equals(other.imageURL, imageURL));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageURL));

  @JsonKey(ignore: true)
  @override
  _$$_PokemonImageCopyWith<_$_PokemonImage> get copyWith =>
      __$$_PokemonImageCopyWithImpl<_$_PokemonImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonImageToJson(
      this,
    );
  }
}

abstract class _PokemonImage implements PokemonImage {
  const factory _PokemonImage(
          {@JsonKey(name: 'front_default') final String? imageURL}) =
      _$_PokemonImage;

  factory _PokemonImage.fromJson(Map<String, dynamic> json) =
      _$_PokemonImage.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String? get imageURL;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonImageCopyWith<_$_PokemonImage> get copyWith =>
      throw _privateConstructorUsedError;
}
