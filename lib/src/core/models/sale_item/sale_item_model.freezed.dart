// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaleItemModel {
  String? get id;
  String get code;
  String get description;
  bool get canceled;
  double get quantity;
  double get unitPrice;
  double? get discount;
  double? get addition;
  double get total;
  String? get additionalInfo;

  /// Create a copy of SaleItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SaleItemModelCopyWith<SaleItemModel> get copyWith =>
      _$SaleItemModelCopyWithImpl<SaleItemModel>(
          this as SaleItemModel, _$identity);

  /// Serializes this SaleItemModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaleItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.canceled, canceled) ||
                other.canceled == canceled) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.addition, addition) ||
                other.addition == addition) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, description, canceled,
      quantity, unitPrice, discount, addition, total, additionalInfo);

  @override
  String toString() {
    return 'SaleItemModel(id: $id, code: $code, description: $description, canceled: $canceled, quantity: $quantity, unitPrice: $unitPrice, discount: $discount, addition: $addition, total: $total, additionalInfo: $additionalInfo)';
  }
}

/// @nodoc
abstract mixin class $SaleItemModelCopyWith<$Res> {
  factory $SaleItemModelCopyWith(
          SaleItemModel value, $Res Function(SaleItemModel) _then) =
      _$SaleItemModelCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String code,
      String description,
      bool canceled,
      double quantity,
      double unitPrice,
      double? discount,
      double? addition,
      double total,
      String? additionalInfo});
}

/// @nodoc
class _$SaleItemModelCopyWithImpl<$Res>
    implements $SaleItemModelCopyWith<$Res> {
  _$SaleItemModelCopyWithImpl(this._self, this._then);

  final SaleItemModel _self;
  final $Res Function(SaleItemModel) _then;

  /// Create a copy of SaleItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = null,
    Object? description = null,
    Object? canceled = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? discount = freezed,
    Object? addition = freezed,
    Object? total = null,
    Object? additionalInfo = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      canceled: null == canceled
          ? _self.canceled
          : canceled // ignore: cast_nullable_to_non_nullable
              as bool,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unitPrice: null == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discount: freezed == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      addition: freezed == addition
          ? _self.addition
          : addition // ignore: cast_nullable_to_non_nullable
              as double?,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      additionalInfo: freezed == additionalInfo
          ? _self.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SaleItemModel].
extension SaleItemModelPatterns on SaleItemModel {
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
    TResult Function(_SaleItemModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaleItemModel() when $default != null:
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
    TResult Function(_SaleItemModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaleItemModel():
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
    TResult? Function(_SaleItemModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaleItemModel() when $default != null:
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
            String? id,
            String code,
            String description,
            bool canceled,
            double quantity,
            double unitPrice,
            double? discount,
            double? addition,
            double total,
            String? additionalInfo)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaleItemModel() when $default != null:
        return $default(
            _that.id,
            _that.code,
            _that.description,
            _that.canceled,
            _that.quantity,
            _that.unitPrice,
            _that.discount,
            _that.addition,
            _that.total,
            _that.additionalInfo);
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
            String? id,
            String code,
            String description,
            bool canceled,
            double quantity,
            double unitPrice,
            double? discount,
            double? addition,
            double total,
            String? additionalInfo)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaleItemModel():
        return $default(
            _that.id,
            _that.code,
            _that.description,
            _that.canceled,
            _that.quantity,
            _that.unitPrice,
            _that.discount,
            _that.addition,
            _that.total,
            _that.additionalInfo);
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
            String? id,
            String code,
            String description,
            bool canceled,
            double quantity,
            double unitPrice,
            double? discount,
            double? addition,
            double total,
            String? additionalInfo)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaleItemModel() when $default != null:
        return $default(
            _that.id,
            _that.code,
            _that.description,
            _that.canceled,
            _that.quantity,
            _that.unitPrice,
            _that.discount,
            _that.addition,
            _that.total,
            _that.additionalInfo);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SaleItemModel implements SaleItemModel {
  const _SaleItemModel(
      {this.id,
      required this.code,
      required this.description,
      this.canceled = false,
      required this.quantity,
      required this.unitPrice,
      this.discount,
      this.addition,
      required this.total,
      this.additionalInfo});
  factory _SaleItemModel.fromJson(Map<String, dynamic> json) =>
      _$SaleItemModelFromJson(json);

  @override
  final String? id;
  @override
  final String code;
  @override
  final String description;
  @override
  @JsonKey()
  final bool canceled;
  @override
  final double quantity;
  @override
  final double unitPrice;
  @override
  final double? discount;
  @override
  final double? addition;
  @override
  final double total;
  @override
  final String? additionalInfo;

  /// Create a copy of SaleItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SaleItemModelCopyWith<_SaleItemModel> get copyWith =>
      __$SaleItemModelCopyWithImpl<_SaleItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SaleItemModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaleItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.canceled, canceled) ||
                other.canceled == canceled) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.addition, addition) ||
                other.addition == addition) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, description, canceled,
      quantity, unitPrice, discount, addition, total, additionalInfo);

  @override
  String toString() {
    return 'SaleItemModel(id: $id, code: $code, description: $description, canceled: $canceled, quantity: $quantity, unitPrice: $unitPrice, discount: $discount, addition: $addition, total: $total, additionalInfo: $additionalInfo)';
  }
}

/// @nodoc
abstract mixin class _$SaleItemModelCopyWith<$Res>
    implements $SaleItemModelCopyWith<$Res> {
  factory _$SaleItemModelCopyWith(
          _SaleItemModel value, $Res Function(_SaleItemModel) _then) =
      __$SaleItemModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String code,
      String description,
      bool canceled,
      double quantity,
      double unitPrice,
      double? discount,
      double? addition,
      double total,
      String? additionalInfo});
}

/// @nodoc
class __$SaleItemModelCopyWithImpl<$Res>
    implements _$SaleItemModelCopyWith<$Res> {
  __$SaleItemModelCopyWithImpl(this._self, this._then);

  final _SaleItemModel _self;
  final $Res Function(_SaleItemModel) _then;

  /// Create a copy of SaleItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? code = null,
    Object? description = null,
    Object? canceled = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? discount = freezed,
    Object? addition = freezed,
    Object? total = null,
    Object? additionalInfo = freezed,
  }) {
    return _then(_SaleItemModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      canceled: null == canceled
          ? _self.canceled
          : canceled // ignore: cast_nullable_to_non_nullable
              as bool,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unitPrice: null == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discount: freezed == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      addition: freezed == addition
          ? _self.addition
          : addition // ignore: cast_nullable_to_non_nullable
              as double?,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      additionalInfo: freezed == additionalInfo
          ? _self.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
