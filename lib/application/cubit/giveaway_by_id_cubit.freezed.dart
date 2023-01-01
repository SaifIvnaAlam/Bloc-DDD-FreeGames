// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'giveaway_by_id_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GiveawayByIdState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(GiveAway giveAway) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(GiveAway giveAway)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(GiveAway giveAway)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadingstate value) loading,
    required TResult Function(_loadedstate value) loaded,
    required TResult Function(_errorstate value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadingstate value)? loading,
    TResult? Function(_loadedstate value)? loaded,
    TResult? Function(_errorstate value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadingstate value)? loading,
    TResult Function(_loadedstate value)? loaded,
    TResult Function(_errorstate value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiveawayByIdStateCopyWith<$Res> {
  factory $GiveawayByIdStateCopyWith(
          GiveawayByIdState value, $Res Function(GiveawayByIdState) then) =
      _$GiveawayByIdStateCopyWithImpl<$Res, GiveawayByIdState>;
}

/// @nodoc
class _$GiveawayByIdStateCopyWithImpl<$Res, $Val extends GiveawayByIdState>
    implements $GiveawayByIdStateCopyWith<$Res> {
  _$GiveawayByIdStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_loadingstateCopyWith<$Res> {
  factory _$$_loadingstateCopyWith(
          _$_loadingstate value, $Res Function(_$_loadingstate) then) =
      __$$_loadingstateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_loadingstateCopyWithImpl<$Res>
    extends _$GiveawayByIdStateCopyWithImpl<$Res, _$_loadingstate>
    implements _$$_loadingstateCopyWith<$Res> {
  __$$_loadingstateCopyWithImpl(
      _$_loadingstate _value, $Res Function(_$_loadingstate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_loadingstate implements _loadingstate {
  const _$_loadingstate();

  @override
  String toString() {
    return 'GiveawayByIdState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_loadingstate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(GiveAway giveAway) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(GiveAway giveAway)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(GiveAway giveAway)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadingstate value) loading,
    required TResult Function(_loadedstate value) loaded,
    required TResult Function(_errorstate value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadingstate value)? loading,
    TResult? Function(_loadedstate value)? loaded,
    TResult? Function(_errorstate value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadingstate value)? loading,
    TResult Function(_loadedstate value)? loaded,
    TResult Function(_errorstate value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loadingstate implements GiveawayByIdState {
  const factory _loadingstate() = _$_loadingstate;
}

/// @nodoc
abstract class _$$_loadedstateCopyWith<$Res> {
  factory _$$_loadedstateCopyWith(
          _$_loadedstate value, $Res Function(_$_loadedstate) then) =
      __$$_loadedstateCopyWithImpl<$Res>;
  @useResult
  $Res call({GiveAway giveAway});

  $GiveAwayCopyWith<$Res> get giveAway;
}

/// @nodoc
class __$$_loadedstateCopyWithImpl<$Res>
    extends _$GiveawayByIdStateCopyWithImpl<$Res, _$_loadedstate>
    implements _$$_loadedstateCopyWith<$Res> {
  __$$_loadedstateCopyWithImpl(
      _$_loadedstate _value, $Res Function(_$_loadedstate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? giveAway = null,
  }) {
    return _then(_$_loadedstate(
      null == giveAway
          ? _value.giveAway
          : giveAway // ignore: cast_nullable_to_non_nullable
              as GiveAway,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GiveAwayCopyWith<$Res> get giveAway {
    return $GiveAwayCopyWith<$Res>(_value.giveAway, (value) {
      return _then(_value.copyWith(giveAway: value));
    });
  }
}

/// @nodoc

class _$_loadedstate implements _loadedstate {
  const _$_loadedstate(this.giveAway);

  @override
  final GiveAway giveAway;

  @override
  String toString() {
    return 'GiveawayByIdState.loaded(giveAway: $giveAway)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_loadedstate &&
            (identical(other.giveAway, giveAway) ||
                other.giveAway == giveAway));
  }

  @override
  int get hashCode => Object.hash(runtimeType, giveAway);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_loadedstateCopyWith<_$_loadedstate> get copyWith =>
      __$$_loadedstateCopyWithImpl<_$_loadedstate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(GiveAway giveAway) loaded,
    required TResult Function() error,
  }) {
    return loaded(giveAway);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(GiveAway giveAway)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(giveAway);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(GiveAway giveAway)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(giveAway);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadingstate value) loading,
    required TResult Function(_loadedstate value) loaded,
    required TResult Function(_errorstate value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadingstate value)? loading,
    TResult? Function(_loadedstate value)? loaded,
    TResult? Function(_errorstate value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadingstate value)? loading,
    TResult Function(_loadedstate value)? loaded,
    TResult Function(_errorstate value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _loadedstate implements GiveawayByIdState {
  const factory _loadedstate(final GiveAway giveAway) = _$_loadedstate;

  GiveAway get giveAway;
  @JsonKey(ignore: true)
  _$$_loadedstateCopyWith<_$_loadedstate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_errorstateCopyWith<$Res> {
  factory _$$_errorstateCopyWith(
          _$_errorstate value, $Res Function(_$_errorstate) then) =
      __$$_errorstateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_errorstateCopyWithImpl<$Res>
    extends _$GiveawayByIdStateCopyWithImpl<$Res, _$_errorstate>
    implements _$$_errorstateCopyWith<$Res> {
  __$$_errorstateCopyWithImpl(
      _$_errorstate _value, $Res Function(_$_errorstate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_errorstate implements _errorstate {
  const _$_errorstate();

  @override
  String toString() {
    return 'GiveawayByIdState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_errorstate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(GiveAway giveAway) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(GiveAway giveAway)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(GiveAway giveAway)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadingstate value) loading,
    required TResult Function(_loadedstate value) loaded,
    required TResult Function(_errorstate value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadingstate value)? loading,
    TResult? Function(_loadedstate value)? loaded,
    TResult? Function(_errorstate value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadingstate value)? loading,
    TResult Function(_loadedstate value)? loaded,
    TResult Function(_errorstate value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _errorstate implements GiveawayByIdState {
  const factory _errorstate() = _$_errorstate;
}
