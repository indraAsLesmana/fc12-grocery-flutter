// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AllProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function(String? category) getProductsByCategory,
    required TResult Function(String keyword) getProductsSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function(String? category)? getProductsByCategory,
    TResult? Function(String keyword)? getProductsSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function(String? category)? getProductsByCategory,
    TResult Function(String keyword)? getProductsSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetProductsSearch value) getProductsSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetProductsSearch value)? getProductsSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetProductsSearch value)? getProductsSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllProductEventCopyWith<$Res> {
  factory $AllProductEventCopyWith(
          AllProductEvent value, $Res Function(AllProductEvent) then) =
      _$AllProductEventCopyWithImpl<$Res, AllProductEvent>;
}

/// @nodoc
class _$AllProductEventCopyWithImpl<$Res, $Val extends AllProductEvent>
    implements $AllProductEventCopyWith<$Res> {
  _$AllProductEventCopyWithImpl(this._value, this._then);

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
    extends _$AllProductEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'AllProductEvent.started()';
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
    required TResult Function() getProducts,
    required TResult Function(String? category) getProductsByCategory,
    required TResult Function(String keyword) getProductsSearch,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function(String? category)? getProductsByCategory,
    TResult? Function(String keyword)? getProductsSearch,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function(String? category)? getProductsByCategory,
    TResult Function(String keyword)? getProductsSearch,
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
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetProductsSearch value) getProductsSearch,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetProductsSearch value)? getProductsSearch,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetProductsSearch value)? getProductsSearch,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AllProductEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetProductsImplCopyWith<$Res> {
  factory _$$GetProductsImplCopyWith(
          _$GetProductsImpl value, $Res Function(_$GetProductsImpl) then) =
      __$$GetProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProductsImplCopyWithImpl<$Res>
    extends _$AllProductEventCopyWithImpl<$Res, _$GetProductsImpl>
    implements _$$GetProductsImplCopyWith<$Res> {
  __$$GetProductsImplCopyWithImpl(
      _$GetProductsImpl _value, $Res Function(_$GetProductsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProductsImpl implements _GetProducts {
  const _$GetProductsImpl();

  @override
  String toString() {
    return 'AllProductEvent.getProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function(String? category) getProductsByCategory,
    required TResult Function(String keyword) getProductsSearch,
  }) {
    return getProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function(String? category)? getProductsByCategory,
    TResult? Function(String keyword)? getProductsSearch,
  }) {
    return getProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function(String? category)? getProductsByCategory,
    TResult Function(String keyword)? getProductsSearch,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetProductsSearch value) getProductsSearch,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetProductsSearch value)? getProductsSearch,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetProductsSearch value)? getProductsSearch,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class _GetProducts implements AllProductEvent {
  const factory _GetProducts() = _$GetProductsImpl;
}

/// @nodoc
abstract class _$$GetProductsByCategoryImplCopyWith<$Res> {
  factory _$$GetProductsByCategoryImplCopyWith(
          _$GetProductsByCategoryImpl value,
          $Res Function(_$GetProductsByCategoryImpl) then) =
      __$$GetProductsByCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? category});
}

/// @nodoc
class __$$GetProductsByCategoryImplCopyWithImpl<$Res>
    extends _$AllProductEventCopyWithImpl<$Res, _$GetProductsByCategoryImpl>
    implements _$$GetProductsByCategoryImplCopyWith<$Res> {
  __$$GetProductsByCategoryImplCopyWithImpl(_$GetProductsByCategoryImpl _value,
      $Res Function(_$GetProductsByCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_$GetProductsByCategoryImpl(
      freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetProductsByCategoryImpl implements _GetProductsByCategory {
  const _$GetProductsByCategoryImpl([this.category]);

  @override
  final String? category;

  @override
  String toString() {
    return 'AllProductEvent.getProductsByCategory(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductsByCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsByCategoryImplCopyWith<_$GetProductsByCategoryImpl>
      get copyWith => __$$GetProductsByCategoryImplCopyWithImpl<
          _$GetProductsByCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function(String? category) getProductsByCategory,
    required TResult Function(String keyword) getProductsSearch,
  }) {
    return getProductsByCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function(String? category)? getProductsByCategory,
    TResult? Function(String keyword)? getProductsSearch,
  }) {
    return getProductsByCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function(String? category)? getProductsByCategory,
    TResult Function(String keyword)? getProductsSearch,
    required TResult orElse(),
  }) {
    if (getProductsByCategory != null) {
      return getProductsByCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetProductsSearch value) getProductsSearch,
  }) {
    return getProductsByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetProductsSearch value)? getProductsSearch,
  }) {
    return getProductsByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetProductsSearch value)? getProductsSearch,
    required TResult orElse(),
  }) {
    if (getProductsByCategory != null) {
      return getProductsByCategory(this);
    }
    return orElse();
  }
}

abstract class _GetProductsByCategory implements AllProductEvent {
  const factory _GetProductsByCategory([final String? category]) =
      _$GetProductsByCategoryImpl;

  String? get category;
  @JsonKey(ignore: true)
  _$$GetProductsByCategoryImplCopyWith<_$GetProductsByCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductsSearchImplCopyWith<$Res> {
  factory _$$GetProductsSearchImplCopyWith(_$GetProductsSearchImpl value,
          $Res Function(_$GetProductsSearchImpl) then) =
      __$$GetProductsSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String keyword});
}

/// @nodoc
class __$$GetProductsSearchImplCopyWithImpl<$Res>
    extends _$AllProductEventCopyWithImpl<$Res, _$GetProductsSearchImpl>
    implements _$$GetProductsSearchImplCopyWith<$Res> {
  __$$GetProductsSearchImplCopyWithImpl(_$GetProductsSearchImpl _value,
      $Res Function(_$GetProductsSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_$GetProductsSearchImpl(
      null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetProductsSearchImpl implements _GetProductsSearch {
  const _$GetProductsSearchImpl(this.keyword);

  @override
  final String keyword;

  @override
  String toString() {
    return 'AllProductEvent.getProductsSearch(keyword: $keyword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductsSearchImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsSearchImplCopyWith<_$GetProductsSearchImpl> get copyWith =>
      __$$GetProductsSearchImplCopyWithImpl<_$GetProductsSearchImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function(String? category) getProductsByCategory,
    required TResult Function(String keyword) getProductsSearch,
  }) {
    return getProductsSearch(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function(String? category)? getProductsByCategory,
    TResult? Function(String keyword)? getProductsSearch,
  }) {
    return getProductsSearch?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function(String? category)? getProductsByCategory,
    TResult Function(String keyword)? getProductsSearch,
    required TResult orElse(),
  }) {
    if (getProductsSearch != null) {
      return getProductsSearch(keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetProductsSearch value) getProductsSearch,
  }) {
    return getProductsSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetProductsSearch value)? getProductsSearch,
  }) {
    return getProductsSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetProductsSearch value)? getProductsSearch,
    required TResult orElse(),
  }) {
    if (getProductsSearch != null) {
      return getProductsSearch(this);
    }
    return orElse();
  }
}

abstract class _GetProductsSearch implements AllProductEvent {
  const factory _GetProductsSearch(final String keyword) =
      _$GetProductsSearchImpl;

  String get keyword;
  @JsonKey(ignore: true)
  _$$GetProductsSearchImplCopyWith<_$GetProductsSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AllProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
    required TResult Function(List<Product> products) loadedByCategory,
    required TResult Function(List<Product> products) loadedSearch,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(List<Product> products)? loadedByCategory,
    TResult? Function(List<Product> products)? loadedSearch,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(List<Product> products)? loadedByCategory,
    TResult Function(List<Product> products)? loadedSearch,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedBestSeller value) loadedByCategory,
    required TResult Function(_LoadedSearch value) loadedSearch,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedBestSeller value)? loadedByCategory,
    TResult? Function(_LoadedSearch value)? loadedSearch,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedBestSeller value)? loadedByCategory,
    TResult Function(_LoadedSearch value)? loadedSearch,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllProductStateCopyWith<$Res> {
  factory $AllProductStateCopyWith(
          AllProductState value, $Res Function(AllProductState) then) =
      _$AllProductStateCopyWithImpl<$Res, AllProductState>;
}

/// @nodoc
class _$AllProductStateCopyWithImpl<$Res, $Val extends AllProductState>
    implements $AllProductStateCopyWith<$Res> {
  _$AllProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AllProductStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AllProductState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
    required TResult Function(List<Product> products) loadedByCategory,
    required TResult Function(List<Product> products) loadedSearch,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(List<Product> products)? loadedByCategory,
    TResult? Function(List<Product> products)? loadedSearch,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(List<Product> products)? loadedByCategory,
    TResult Function(List<Product> products)? loadedSearch,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedBestSeller value) loadedByCategory,
    required TResult Function(_LoadedSearch value) loadedSearch,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedBestSeller value)? loadedByCategory,
    TResult? Function(_LoadedSearch value)? loadedSearch,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedBestSeller value)? loadedByCategory,
    TResult Function(_LoadedSearch value)? loadedSearch,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AllProductState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AllProductStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'AllProductState.loading()';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
    required TResult Function(List<Product> products) loadedByCategory,
    required TResult Function(List<Product> products) loadedSearch,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(List<Product> products)? loadedByCategory,
    TResult? Function(List<Product> products)? loadedSearch,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(List<Product> products)? loadedByCategory,
    TResult Function(List<Product> products)? loadedSearch,
    TResult Function(String message)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedBestSeller value) loadedByCategory,
    required TResult Function(_LoadedSearch value) loadedSearch,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedBestSeller value)? loadedByCategory,
    TResult? Function(_LoadedSearch value)? loadedSearch,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedBestSeller value)? loadedByCategory,
    TResult Function(_LoadedSearch value)? loadedSearch,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AllProductState {
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
    extends _$AllProductStateCopyWithImpl<$Res, _$LoadedImpl>
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
    return 'AllProductState.loaded(products: $products)';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
    required TResult Function(List<Product> products) loadedByCategory,
    required TResult Function(List<Product> products) loadedSearch,
    required TResult Function(String message) error,
  }) {
    return loaded(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(List<Product> products)? loadedByCategory,
    TResult? Function(List<Product> products)? loadedSearch,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(List<Product> products)? loadedByCategory,
    TResult Function(List<Product> products)? loadedSearch,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedBestSeller value) loadedByCategory,
    required TResult Function(_LoadedSearch value) loadedSearch,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedBestSeller value)? loadedByCategory,
    TResult? Function(_LoadedSearch value)? loadedSearch,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedBestSeller value)? loadedByCategory,
    TResult Function(_LoadedSearch value)? loadedSearch,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AllProductState {
  const factory _Loaded(final List<Product> products) = _$LoadedImpl;

  List<Product> get products;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedBestSellerImplCopyWith<$Res> {
  factory _$$LoadedBestSellerImplCopyWith(_$LoadedBestSellerImpl value,
          $Res Function(_$LoadedBestSellerImpl) then) =
      __$$LoadedBestSellerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$LoadedBestSellerImplCopyWithImpl<$Res>
    extends _$AllProductStateCopyWithImpl<$Res, _$LoadedBestSellerImpl>
    implements _$$LoadedBestSellerImplCopyWith<$Res> {
  __$$LoadedBestSellerImplCopyWithImpl(_$LoadedBestSellerImpl _value,
      $Res Function(_$LoadedBestSellerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$LoadedBestSellerImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$LoadedBestSellerImpl implements _LoadedBestSeller {
  const _$LoadedBestSellerImpl(final List<Product> products)
      : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'AllProductState.loadedByCategory(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedBestSellerImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedBestSellerImplCopyWith<_$LoadedBestSellerImpl> get copyWith =>
      __$$LoadedBestSellerImplCopyWithImpl<_$LoadedBestSellerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
    required TResult Function(List<Product> products) loadedByCategory,
    required TResult Function(List<Product> products) loadedSearch,
    required TResult Function(String message) error,
  }) {
    return loadedByCategory(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(List<Product> products)? loadedByCategory,
    TResult? Function(List<Product> products)? loadedSearch,
    TResult? Function(String message)? error,
  }) {
    return loadedByCategory?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(List<Product> products)? loadedByCategory,
    TResult Function(List<Product> products)? loadedSearch,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedByCategory != null) {
      return loadedByCategory(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedBestSeller value) loadedByCategory,
    required TResult Function(_LoadedSearch value) loadedSearch,
    required TResult Function(_Error value) error,
  }) {
    return loadedByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedBestSeller value)? loadedByCategory,
    TResult? Function(_LoadedSearch value)? loadedSearch,
    TResult? Function(_Error value)? error,
  }) {
    return loadedByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedBestSeller value)? loadedByCategory,
    TResult Function(_LoadedSearch value)? loadedSearch,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedByCategory != null) {
      return loadedByCategory(this);
    }
    return orElse();
  }
}

abstract class _LoadedBestSeller implements AllProductState {
  const factory _LoadedBestSeller(final List<Product> products) =
      _$LoadedBestSellerImpl;

  List<Product> get products;
  @JsonKey(ignore: true)
  _$$LoadedBestSellerImplCopyWith<_$LoadedBestSellerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedSearchImplCopyWith<$Res> {
  factory _$$LoadedSearchImplCopyWith(
          _$LoadedSearchImpl value, $Res Function(_$LoadedSearchImpl) then) =
      __$$LoadedSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$LoadedSearchImplCopyWithImpl<$Res>
    extends _$AllProductStateCopyWithImpl<$Res, _$LoadedSearchImpl>
    implements _$$LoadedSearchImplCopyWith<$Res> {
  __$$LoadedSearchImplCopyWithImpl(
      _$LoadedSearchImpl _value, $Res Function(_$LoadedSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$LoadedSearchImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$LoadedSearchImpl implements _LoadedSearch {
  const _$LoadedSearchImpl(final List<Product> products) : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'AllProductState.loadedSearch(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedSearchImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedSearchImplCopyWith<_$LoadedSearchImpl> get copyWith =>
      __$$LoadedSearchImplCopyWithImpl<_$LoadedSearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
    required TResult Function(List<Product> products) loadedByCategory,
    required TResult Function(List<Product> products) loadedSearch,
    required TResult Function(String message) error,
  }) {
    return loadedSearch(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(List<Product> products)? loadedByCategory,
    TResult? Function(List<Product> products)? loadedSearch,
    TResult? Function(String message)? error,
  }) {
    return loadedSearch?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(List<Product> products)? loadedByCategory,
    TResult Function(List<Product> products)? loadedSearch,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedSearch != null) {
      return loadedSearch(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedBestSeller value) loadedByCategory,
    required TResult Function(_LoadedSearch value) loadedSearch,
    required TResult Function(_Error value) error,
  }) {
    return loadedSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedBestSeller value)? loadedByCategory,
    TResult? Function(_LoadedSearch value)? loadedSearch,
    TResult? Function(_Error value)? error,
  }) {
    return loadedSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedBestSeller value)? loadedByCategory,
    TResult Function(_LoadedSearch value)? loadedSearch,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedSearch != null) {
      return loadedSearch(this);
    }
    return orElse();
  }
}

abstract class _LoadedSearch implements AllProductState {
  const factory _LoadedSearch(final List<Product> products) =
      _$LoadedSearchImpl;

  List<Product> get products;
  @JsonKey(ignore: true)
  _$$LoadedSearchImplCopyWith<_$LoadedSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$AllProductStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'AllProductState.error(message: $message)';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
    required TResult Function(List<Product> products) loadedByCategory,
    required TResult Function(List<Product> products) loadedSearch,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(List<Product> products)? loadedByCategory,
    TResult? Function(List<Product> products)? loadedSearch,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(List<Product> products)? loadedByCategory,
    TResult Function(List<Product> products)? loadedSearch,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedBestSeller value) loadedByCategory,
    required TResult Function(_LoadedSearch value) loadedSearch,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedBestSeller value)? loadedByCategory,
    TResult? Function(_LoadedSearch value)? loadedSearch,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedBestSeller value)? loadedByCategory,
    TResult Function(_LoadedSearch value)? loadedSearch,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AllProductState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
