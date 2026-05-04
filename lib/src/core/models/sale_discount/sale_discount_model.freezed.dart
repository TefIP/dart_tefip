// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_discount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaleDiscountModel {
  String get id;
  String? get description;
  num get value;
  String? get additionalInfo;

  /// Create a copy of SaleDiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SaleDiscountModelCopyWith<SaleDiscountModel> get copyWith =>
      _$SaleDiscountModelCopyWithImpl<SaleDiscountModel>(
          this as SaleDiscountModel, _$identity);

  /// Serializes this SaleDiscountModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaleDiscountModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, description, value, additionalInfo);

  @override
  String toString() {
    return 'SaleDiscountModel(id: $id, description: $description, value: $value, additionalInfo: $additionalInfo)';
  }
}

/// @nodoc
abstract mixin class $SaleDiscountModelCopyWith<$Res> {
  factory $SaleDiscountModelCopyWith(
          SaleDiscountModel value, $Res Function(SaleDiscountModel) _then) =
      _$SaleDiscountModelCopyWithImpl;
  @useResult
  $Res call(
      {String id, String? description, num value, String? additionalInfo});
}

/// @nodoc
class _$SaleDiscountModelCopyWithImpl<$Res>
    implements $SaleDiscountModelCopyWith<$Res> {
  _$SaleDiscountModelCopyWithImpl(this._self, this._then);

  final SaleDiscountModel _self;
  final $Res Function(SaleDiscountModel) _then;

  /// Create a copy of SaleDiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = freezed,
    Object? value = null,
    Object? additionalInfo = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as num,
      additionalInfo: freezed == additionalInfo
          ? _self.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SaleDiscountModel].
extension SaleDiscountModelPatterns on SaleDiscountModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SaleDiscountModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaleDiscountModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SaleDiscountModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaleDiscountModel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SaleDiscountModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaleDiscountModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id, String? description, num value, String? additionalInfo)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaleDiscountModel() when $default != null:
        return $default(
            _that.id, _that.description, _that.value, _that.additionalInfo);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id, String? description, num value, String? additionalInfo)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaleDiscountModel():
        return $default(
            _that.id, _that.description, _that.value, _that.additionalInfo);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id, String? description, num value, String? additionalInfo)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaleDiscountModel() when $default != null:
        return $default(
            _that.id, _that.description, _that.value, _that.additionalInfo);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SaleDiscountModel implements SaleDiscountModel {
  const _SaleDiscountModel(
      {required this.id,
      this.description,
      required this.value,
      this.additionalInfo});
  factory _SaleDiscountModel.fromJson(Map<String, dynamic> json) =>
      _$SaleDiscountModelFromJson(json);

  @override
  final String id;
  @override
  final String? description;
  @override
  final num value;
  @override
  final String? additionalInfo;

  /// Create a copy of SaleDiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SaleDiscountModelCopyWith<_SaleDiscountModel> get copyWith =>
      __$SaleDiscountModelCopyWithImpl<_SaleDiscountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SaleDiscountModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaleDiscountModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, description, value, additionalInfo);

  @override
  String toString() {
    return 'SaleDiscountModel(id: $id, description: $description, value: $value, additionalInfo: $additionalInfo)';
  }
}

/// @nodoc
abstract mixin class _$SaleDiscountModelCopyWith<$Res>
    implements $SaleDiscountModelCopyWith<$Res> {
  factory _$SaleDiscountModelCopyWith(
          _SaleDiscountModel value, $Res Function(_SaleDiscountModel) _then) =
      __$SaleDiscountModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id, String? description, num value, String? additionalInfo});
}

/// @nodoc
class __$SaleDiscountModelCopyWithImpl<$Res>
    implements _$SaleDiscountModelCopyWith<$Res> {
  __$SaleDiscountModelCopyWithImpl(this._self, this._then);

  final _SaleDiscountModel _self;
  final $Res Function(_SaleDiscountModel) _then;

  /// Create a copy of SaleDiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? description = freezed,
    Object? value = null,
    Object? additionalInfo = freezed,
  }) {
    return _then(_SaleDiscountModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as num,
      additionalInfo: freezed == additionalInfo
          ? _self.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
