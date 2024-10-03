// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_beer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectBeerState {
  int get max => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get finished => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Beer? get currentBeer => throw _privateConstructorUsedError;
  Beer? get preloadedBeer => throw _privateConstructorUsedError;
  Set<Beer> get selectedBeers => throw _privateConstructorUsedError;

  /// Create a copy of SelectBeerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectBeerStateCopyWith<SelectBeerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectBeerStateCopyWith<$Res> {
  factory $SelectBeerStateCopyWith(
          SelectBeerState value, $Res Function(SelectBeerState) then) =
      _$SelectBeerStateCopyWithImpl<$Res, SelectBeerState>;
  @useResult
  $Res call(
      {int max,
      bool loading,
      bool finished,
      String? error,
      Beer? currentBeer,
      Beer? preloadedBeer,
      Set<Beer> selectedBeers});
}

/// @nodoc
class _$SelectBeerStateCopyWithImpl<$Res, $Val extends SelectBeerState>
    implements $SelectBeerStateCopyWith<$Res> {
  _$SelectBeerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectBeerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? max = null,
    Object? loading = null,
    Object? finished = null,
    Object? error = freezed,
    Object? currentBeer = freezed,
    Object? preloadedBeer = freezed,
    Object? selectedBeers = null,
  }) {
    return _then(_value.copyWith(
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      finished: null == finished
          ? _value.finished
          : finished // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      currentBeer: freezed == currentBeer
          ? _value.currentBeer
          : currentBeer // ignore: cast_nullable_to_non_nullable
              as Beer?,
      preloadedBeer: freezed == preloadedBeer
          ? _value.preloadedBeer
          : preloadedBeer // ignore: cast_nullable_to_non_nullable
              as Beer?,
      selectedBeers: null == selectedBeers
          ? _value.selectedBeers
          : selectedBeers // ignore: cast_nullable_to_non_nullable
              as Set<Beer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectBeerStateImplCopyWith<$Res>
    implements $SelectBeerStateCopyWith<$Res> {
  factory _$$SelectBeerStateImplCopyWith(_$SelectBeerStateImpl value,
          $Res Function(_$SelectBeerStateImpl) then) =
      __$$SelectBeerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int max,
      bool loading,
      bool finished,
      String? error,
      Beer? currentBeer,
      Beer? preloadedBeer,
      Set<Beer> selectedBeers});
}

/// @nodoc
class __$$SelectBeerStateImplCopyWithImpl<$Res>
    extends _$SelectBeerStateCopyWithImpl<$Res, _$SelectBeerStateImpl>
    implements _$$SelectBeerStateImplCopyWith<$Res> {
  __$$SelectBeerStateImplCopyWithImpl(
      _$SelectBeerStateImpl _value, $Res Function(_$SelectBeerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectBeerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? max = null,
    Object? loading = null,
    Object? finished = null,
    Object? error = freezed,
    Object? currentBeer = freezed,
    Object? preloadedBeer = freezed,
    Object? selectedBeers = null,
  }) {
    return _then(_$SelectBeerStateImpl(
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      finished: null == finished
          ? _value.finished
          : finished // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      currentBeer: freezed == currentBeer
          ? _value.currentBeer
          : currentBeer // ignore: cast_nullable_to_non_nullable
              as Beer?,
      preloadedBeer: freezed == preloadedBeer
          ? _value.preloadedBeer
          : preloadedBeer // ignore: cast_nullable_to_non_nullable
              as Beer?,
      selectedBeers: null == selectedBeers
          ? _value._selectedBeers
          : selectedBeers // ignore: cast_nullable_to_non_nullable
              as Set<Beer>,
    ));
  }
}

/// @nodoc

class _$SelectBeerStateImpl implements _SelectBeerState {
  const _$SelectBeerStateImpl(
      {this.max = 10,
      this.loading = false,
      this.finished = false,
      this.error,
      this.currentBeer,
      this.preloadedBeer,
      final Set<Beer> selectedBeers = const {}})
      : _selectedBeers = selectedBeers;

  @override
  @JsonKey()
  final int max;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool finished;
  @override
  final String? error;
  @override
  final Beer? currentBeer;
  @override
  final Beer? preloadedBeer;
  final Set<Beer> _selectedBeers;
  @override
  @JsonKey()
  Set<Beer> get selectedBeers {
    if (_selectedBeers is EqualUnmodifiableSetView) return _selectedBeers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedBeers);
  }

  @override
  String toString() {
    return 'SelectBeerState(max: $max, loading: $loading, finished: $finished, error: $error, currentBeer: $currentBeer, preloadedBeer: $preloadedBeer, selectedBeers: $selectedBeers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectBeerStateImpl &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.finished, finished) ||
                other.finished == finished) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.currentBeer, currentBeer) ||
                other.currentBeer == currentBeer) &&
            (identical(other.preloadedBeer, preloadedBeer) ||
                other.preloadedBeer == preloadedBeer) &&
            const DeepCollectionEquality()
                .equals(other._selectedBeers, _selectedBeers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      max,
      loading,
      finished,
      error,
      currentBeer,
      preloadedBeer,
      const DeepCollectionEquality().hash(_selectedBeers));

  /// Create a copy of SelectBeerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectBeerStateImplCopyWith<_$SelectBeerStateImpl> get copyWith =>
      __$$SelectBeerStateImplCopyWithImpl<_$SelectBeerStateImpl>(
          this, _$identity);
}

abstract class _SelectBeerState implements SelectBeerState {
  const factory _SelectBeerState(
      {final int max,
      final bool loading,
      final bool finished,
      final String? error,
      final Beer? currentBeer,
      final Beer? preloadedBeer,
      final Set<Beer> selectedBeers}) = _$SelectBeerStateImpl;

  @override
  int get max;
  @override
  bool get loading;
  @override
  bool get finished;
  @override
  String? get error;
  @override
  Beer? get currentBeer;
  @override
  Beer? get preloadedBeer;
  @override
  Set<Beer> get selectedBeers;

  /// Create a copy of SelectBeerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectBeerStateImplCopyWith<_$SelectBeerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
