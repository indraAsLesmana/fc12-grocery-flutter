// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? keyword) onTextChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? keyword)? onTextChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? keyword)? onTextChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TextChanged value) onTextChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TextChanged value)? onTextChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TextChanged value)? onTextChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductEventCopyWith<$Res> {
  factory $SearchProductEventCopyWith(
          SearchProductEvent value, $Res Function(SearchProductEvent) then) =
      _$SearchProductEventCopyWithImpl<$Res, SearchProductEvent>;
}

/// @nodoc
class _$SearchProductEventCopyWithImpl<$Res, $Val extends SearchProductEvent>
    implements $SearchProductEventCopyWith<$Res> {
  _$SearchProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SearchProductEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SearchProductEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? keyword) onTextChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? keyword)? onTextChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? keyword)? onTextChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TextChanged value) onTextChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TextChanged value)? onTextChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TextChanged value)? onTextChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SearchProductEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$TextChangedImplCopyWith<$Res> {
  factory _$$TextChangedImplCopyWith(
          _$TextChangedImpl value, $Res Function(_$TextChangedImpl) then) =
      __$$TextChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? keyword});
}

/// @nodoc
class __$$TextChangedImplCopyWithImpl<$Res>
    extends _$SearchProductEventCopyWithImpl<$Res, _$TextChangedImpl>
    implements _$$TextChangedImplCopyWith<$Res> {
  __$$TextChangedImplCopyWithImpl(
      _$TextChangedImpl _value, $Res Function(_$TextChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = freezed,
  }) {
    return _then(_$TextChangedImpl(
      freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TextChangedImpl implements _TextChanged {
  const _$TextChangedImpl(this.keyword);

  @override
  final String? keyword;

  @override
  String toString() {
    return 'SearchProductEvent.onTextChanged(keyword: $keyword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextChangedImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextChangedImplCopyWith<_$TextChangedImpl> get copyWith =>
      __$$TextChangedImplCopyWithImpl<_$TextChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? keyword) onTextChanged,
  }) {
    return onTextChanged(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? keyword)? onTextChanged,
  }) {
    return onTextChanged?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? keyword)? onTextChanged,
    required TResult orElse(),
  }) {
    if (onTextChanged != null) {
      return onTextChanged(keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TextChanged value) onTextChanged,
  }) {
    return onTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TextChanged value)? onTextChanged,
  }) {
    return onTextChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TextChanged value)? onTextChanged,
    required TResult orElse(),
  }) {
    if (onTextChanged != null) {
      return onTextChanged(this);
    }
    return orElse();
  }
}

abstract class _TextChanged implements SearchProductEvent {
  const factory _TextChanged(final String? keyword) = _$TextChangedImpl;

  String? get keyword;
  @JsonKey(ignore: true)
  _$$TextChangedImplCopyWith<_$TextChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onEmpty,
    required TResult Function() onLoading,
    required TResult Function(List<Product> products) onLoaded,
    required TResult Function() onNotFound,
    required TResult Function(String message) onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onEmpty,
    TResult? Function()? onLoading,
    TResult? Function(List<Product> products)? onLoaded,
    TResult? Function()? onNotFound,
    TResult? Function(String message)? onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onEmpty,
    TResult Function()? onLoading,
    TResult Function(List<Product> products)? onLoaded,
    TResult Function()? onNotFound,
    TResult Function(String message)? onError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) onEmpty,
    required TResult Function(_Loading value) onLoading,
    required TResult Function(_Loaded value) onLoaded,
    required TResult Function(_NotFound value) onNotFound,
    required TResult Function(_Error value) onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? onEmpty,
    TResult? Function(_Loading value)? onLoading,
    TResult? Function(_Loaded value)? onLoaded,
    TResult? Function(_NotFound value)? onNotFound,
    TResult? Function(_Error value)? onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? onEmpty,
    TResult Function(_Loading value)? onLoading,
    TResult Function(_Loaded value)? onLoaded,
    TResult Function(_NotFound value)? onNotFound,
    TResult Function(_Error value)? onError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductStateCopyWith<$Res> {
  factory $SearchProductStateCopyWith(
          SearchProductState value, $Res Function(SearchProductState) then) =
      _$SearchProductStateCopyWithImpl<$Res, SearchProductState>;
}

/// @nodoc
class _$SearchProductStateCopyWithImpl<$Res, $Val extends SearchProductState>
    implements $SearchProductStateCopyWith<$Res> {
  _$SearchProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$SearchProductStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyImpl implements _Empty {
  const _$EmptyImpl();

  @override
  String toString() {
    return 'SearchProductState.onEmpty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onEmpty,
    required TResult Function() onLoading,
    required TResult Function(List<Product> products) onLoaded,
    required TResult Function() onNotFound,
    required TResult Function(String message) onError,
  }) {
    return onEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onEmpty,
    TResult? Function()? onLoading,
    TResult? Function(List<Product> products)? onLoaded,
    TResult? Function()? onNotFound,
    TResult? Function(String message)? onError,
  }) {
    return onEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onEmpty,
    TResult Function()? onLoading,
    TResult Function(List<Product> products)? onLoaded,
    TResult Function()? onNotFound,
    TResult Function(String message)? onError,
    required TResult orElse(),
  }) {
    if (onEmpty != null) {
      return onEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) onEmpty,
    required TResult Function(_Loading value) onLoading,
    required TResult Function(_Loaded value) onLoaded,
    required TResult Function(_NotFound value) onNotFound,
    required TResult Function(_Error value) onError,
  }) {
    return onEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? onEmpty,
    TResult? Function(_Loading value)? onLoading,
    TResult? Function(_Loaded value)? onLoaded,
    TResult? Function(_NotFound value)? onNotFound,
    TResult? Function(_Error value)? onError,
  }) {
    return onEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? onEmpty,
    TResult Function(_Loading value)? onLoading,
    TResult Function(_Loaded value)? onLoaded,
    TResult Function(_NotFound value)? onNotFound,
    TResult Function(_Error value)? onError,
    required TResult orElse(),
  }) {
    if (onEmpty != null) {
      return onEmpty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements SearchProductState {
  const factory _Empty() = _$EmptyImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SearchProductStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SearchProductState.onLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onEmpty,
    required TResult Function() onLoading,
    required TResult Function(List<Product> products) onLoaded,
    required TResult Function() onNotFound,
    required TResult Function(String message) onError,
  }) {
    return onLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onEmpty,
    TResult? Function()? onLoading,
    TResult? Function(List<Product> products)? onLoaded,
    TResult? Function()? onNotFound,
    TResult? Function(String message)? onError,
  }) {
    return onLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onEmpty,
    TResult Function()? onLoading,
    TResult Function(List<Product> products)? onLoaded,
    TResult Function()? onNotFound,
    TResult Function(String message)? onError,
    required TResult orElse(),
  }) {
    if (onLoading != null) {
      return onLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) onEmpty,
    required TResult Function(_Loading value) onLoading,
    required TResult Function(_Loaded value) onLoaded,
    required TResult Function(_NotFound value) onNotFound,
    required TResult Function(_Error value) onError,
  }) {
    return onLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? onEmpty,
    TResult? Function(_Loading value)? onLoading,
    TResult? Function(_Loaded value)? onLoaded,
    TResult? Function(_NotFound value)? onNotFound,
    TResult? Function(_Error value)? onError,
  }) {
    return onLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? onEmpty,
    TResult Function(_Loading value)? onLoading,
    TResult Function(_Loaded value)? onLoaded,
    TResult Function(_NotFound value)? onNotFound,
    TResult Function(_Error value)? onError,
    required TResult orElse(),
  }) {
    if (onLoading != null) {
      return onLoading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SearchProductState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$SearchProductStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$LoadedImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Product> products) : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'SearchProductState.onLoaded(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onEmpty,
    required TResult Function() onLoading,
    required TResult Function(List<Product> products) onLoaded,
    required TResult Function() onNotFound,
    required TResult Function(String message) onError,
  }) {
    return onLoaded(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onEmpty,
    TResult? Function()? onLoading,
    TResult? Function(List<Product> products)? onLoaded,
    TResult? Function()? onNotFound,
    TResult? Function(String message)? onError,
  }) {
    return onLoaded?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onEmpty,
    TResult Function()? onLoading,
    TResult Function(List<Product> products)? onLoaded,
    TResult Function()? onNotFound,
    TResult Function(String message)? onError,
    required TResult orElse(),
  }) {
    if (onLoaded != null) {
      return onLoaded(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) onEmpty,
    required TResult Function(_Loading value) onLoading,
    required TResult Function(_Loaded value) onLoaded,
    required TResult Function(_NotFound value) onNotFound,
    required TResult Function(_Error value) onError,
  }) {
    return onLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? onEmpty,
    TResult? Function(_Loading value)? onLoading,
    TResult? Function(_Loaded value)? onLoaded,
    TResult? Function(_NotFound value)? onNotFound,
    TResult? Function(_Error value)? onError,
  }) {
    return onLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? onEmpty,
    TResult Function(_Loading value)? onLoading,
    TResult Function(_Loaded value)? onLoaded,
    TResult Function(_NotFound value)? onNotFound,
    TResult Function(_Error value)? onError,
    required TResult orElse(),
  }) {
    if (onLoaded != null) {
      return onLoaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements SearchProductState {
  const factory _Loaded(final List<Product> products) = _$LoadedImpl;

  List<Product> get products;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<$Res> {
  factory _$$NotFoundImplCopyWith(
          _$NotFoundImpl value, $Res Function(_$NotFoundImpl) then) =
      __$$NotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<$Res>
    extends _$SearchProductStateCopyWithImpl<$Res, _$NotFoundImpl>
    implements _$$NotFoundImplCopyWith<$Res> {
  __$$NotFoundImplCopyWithImpl(
      _$NotFoundImpl _value, $Res Function(_$NotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotFoundImpl implements _NotFound {
  const _$NotFoundImpl();

  @override
  String toString() {
    return 'SearchProductState.onNotFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onEmpty,
    required TResult Function() onLoading,
    required TResult Function(List<Product> products) onLoaded,
    required TResult Function() onNotFound,
    required TResult Function(String message) onError,
  }) {
    return onNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onEmpty,
    TResult? Function()? onLoading,
    TResult? Function(List<Product> products)? onLoaded,
    TResult? Function()? onNotFound,
    TResult? Function(String message)? onError,
  }) {
    return onNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onEmpty,
    TResult Function()? onLoading,
    TResult Function(List<Product> products)? onLoaded,
    TResult Function()? onNotFound,
    TResult Function(String message)? onError,
    required TResult orElse(),
  }) {
    if (onNotFound != null) {
      return onNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) onEmpty,
    required TResult Function(_Loading value) onLoading,
    required TResult Function(_Loaded value) onLoaded,
    required TResult Function(_NotFound value) onNotFound,
    required TResult Function(_Error value) onError,
  }) {
    return onNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? onEmpty,
    TResult? Function(_Loading value)? onLoading,
    TResult? Function(_Loaded value)? onLoaded,
    TResult? Function(_NotFound value)? onNotFound,
    TResult? Function(_Error value)? onError,
  }) {
    return onNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? onEmpty,
    TResult Function(_Loading value)? onLoading,
    TResult Function(_Loaded value)? onLoaded,
    TResult Function(_NotFound value)? onNotFound,
    TResult Function(_Error value)? onError,
    required TResult orElse(),
  }) {
    if (onNotFound != null) {
      return onNotFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements SearchProductState {
  const factory _NotFound() = _$NotFoundImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$SearchProductStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SearchProductState.onError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onEmpty,
    required TResult Function() onLoading,
    required TResult Function(List<Product> products) onLoaded,
    required TResult Function() onNotFound,
    required TResult Function(String message) onError,
  }) {
    return onError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onEmpty,
    TResult? Function()? onLoading,
    TResult? Function(List<Product> products)? onLoaded,
    TResult? Function()? onNotFound,
    TResult? Function(String message)? onError,
  }) {
    return onError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onEmpty,
    TResult Function()? onLoading,
    TResult Function(List<Product> products)? onLoaded,
    TResult Function()? onNotFound,
    TResult Function(String message)? onError,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) onEmpty,
    required TResult Function(_Loading value) onLoading,
    required TResult Function(_Loaded value) onLoaded,
    required TResult Function(_NotFound value) onNotFound,
    required TResult Function(_Error value) onError,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? onEmpty,
    TResult? Function(_Loading value)? onLoading,
    TResult? Function(_Loaded value)? onLoaded,
    TResult? Function(_NotFound value)? onNotFound,
    TResult? Function(_Error value)? onError,
  }) {
    return onError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? onEmpty,
    TResult Function(_Loading value)? onLoading,
    TResult Function(_Loaded value)? onLoaded,
    TResult Function(_NotFound value)? onNotFound,
    TResult Function(_Error value)? onError,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class _Error implements SearchProductState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
