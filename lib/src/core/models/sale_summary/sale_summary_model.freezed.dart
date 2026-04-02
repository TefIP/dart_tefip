// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaleSummaryModel {
  double get subtotal;
  double get surcharge;
  double get discount;
  double get itemDiscount;
  double get itemAddition;
  double get total;

  /// Create a copy of SaleSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SaleSummaryModelCopyWith<SaleSummaryModel> get copyWith =>
      _$SaleSummaryModelCopyWithImpl<SaleSummaryModel>(
          this as SaleSummaryModel, _$identity);

  /// Serializes this SaleSummaryModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaleSummaryModel &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.surcharge, surcharge) ||
                other.surcharge == surcharge) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.itemDiscount, itemDiscount) ||
                other.itemDiscount == itemDiscount) &&
            (identical(other.itemAddition, itemAddition) ||
                other.itemAddition == itemAddition) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, subtotal, surcharge, discount,
      itemDiscount, itemAddition, total);

  @override
  String toString() {
    return 'SaleSummaryModel(subtotal: $subtotal, surcharge: $surcharge, discount: $discount, itemDiscount: $itemDiscount, itemAddition: $itemAddition, total: $total)';
  }
}

/// @nodoc
abstract mixin class $SaleSummaryModelCopyWith<$Res> {
  factory $SaleSummaryModelCopyWith(
          SaleSummaryModel value, $Res Function(SaleSummaryModel) _then) =
      _$SaleSummaryModelCopyWithImpl;
  @useResult
  $Res call(
      {double subtotal,
      double surcharge,
      double discount,
      double itemDiscount,
      double itemAddition,
      double total});
}

/// @nodoc
class _$SaleSummaryModelCopyWithImpl<$Res>
    implements $SaleSummaryModelCopyWith<$Res> {
  _$SaleSummaryModelCopyWithImpl(this._self, this._then);

  final SaleSummaryModel _self;
  final $Res Function(SaleSummaryModel) _then;

  /// Create a copy of SaleSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtotal = null,
    Object? surcharge = null,
    Object? discount = null,
    Object? itemDiscount = null,
    Object? itemAddition = null,
    Object? total = null,
  }) {
    return _then(_self.copyWith(
      subtotal: null == subtotal
          ? _self.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      surcharge: null == surcharge
          ? _self.surcharge
          : surcharge // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      itemDiscount: null == itemDiscount
          ? _self.itemDiscount
          : itemDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      itemAddition: null == itemAddition
          ? _self.itemAddition
          : itemAddition // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [SaleSummaryModel].
extension SaleSummaryModelPatterns on SaleSummaryModel {
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
    TResult Function(_SaleSummaryModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaleSummaryModel() when $default != null:
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
    TResult Function(_SaleSummaryModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaleSummaryModel():
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
    TResult? Function(_SaleSummaryModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaleSummaryModel() when $default != null:
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
    TResult Function(double subtotal, double surcharge, double discount,
            double itemDiscount, double itemAddition, double total)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaleSummaryModel() when $default != null:
        return $default(_that.subtotal, _that.surcharge, _that.discount,
            _that.itemDiscount, _that.itemAddition, _that.total);
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
    TResult Function(double subtotal, double surcharge, double discount,
            double itemDiscount, double itemAddition, double total)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaleSummaryModel():
        return $default(_that.subtotal, _that.surcharge, _that.discount,
            _that.itemDiscount, _that.itemAddition, _that.total);
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
    TResult? Function(double subtotal, double surcharge, double discount,
            double itemDiscount, double itemAddition, double total)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaleSummaryModel() when $default != null:
        return $default(_that.subtotal, _that.surcharge, _that.discount,
            _that.itemDiscount, _that.itemAddition, _that.total);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SaleSummaryModel implements SaleSummaryModel {
  const _SaleSummaryModel(
      {this.subtotal = 0.0,
      this.surcharge = 0.0,
      this.discount = 0.0,
      this.itemDiscount = 0.0,
      this.itemAddition = 0.0,
      this.total = 0.0});
  factory _SaleSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$SaleSummaryModelFromJson(json);

  @override
  @JsonKey()
  final double subtotal;
  @override
  @JsonKey()
  final double surcharge;
  @override
  @JsonKey()
  final double discount;
  @override
  @JsonKey()
  final double itemDiscount;
  @override
  @JsonKey()
  final double itemAddition;
  @override
  @JsonKey()
  final double total;

  /// Create a copy of SaleSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SaleSummaryModelCopyWith<_SaleSummaryModel> get copyWith =>
      __$SaleSummaryModelCopyWithImpl<_SaleSummaryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SaleSummaryModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaleSummaryModel &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.surcharge, surcharge) ||
                other.surcharge == surcharge) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.itemDiscount, itemDiscount) ||
                other.itemDiscount == itemDiscount) &&
            (identical(other.itemAddition, itemAddition) ||
                other.itemAddition == itemAddition) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, subtotal, surcharge, discount,
      itemDiscount, itemAddition, total);

  @override
  String toString() {
    return 'SaleSummaryModel(subtotal: $subtotal, surcharge: $surcharge, discount: $discount, itemDiscount: $itemDiscount, itemAddition: $itemAddition, total: $total)';
  }
}

/// @nodoc
abstract mixin class _$SaleSummaryModelCopyWith<$Res>
    implements $SaleSummaryModelCopyWith<$Res> {
  factory _$SaleSummaryModelCopyWith(
          _SaleSummaryModel value, $Res Function(_SaleSummaryModel) _then) =
      __$SaleSummaryModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double subtotal,
      double surcharge,
      double discount,
      double itemDiscount,
      double itemAddition,
      double total});
}

/// @nodoc
class __$SaleSummaryModelCopyWithImpl<$Res>
    implements _$SaleSummaryModelCopyWith<$Res> {
  __$SaleSummaryModelCopyWithImpl(this._self, this._then);

  final _SaleSummaryModel _self;
  final $Res Function(_SaleSummaryModel) _then;

  /// Create a copy of SaleSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? subtotal = null,
    Object? surcharge = null,
    Object? discount = null,
    Object? itemDiscount = null,
    Object? itemAddition = null,
    Object? total = null,
  }) {
    return _then(_SaleSummaryModel(
      subtotal: null == subtotal
          ? _self.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      surcharge: null == surcharge
          ? _self.surcharge
          : surcharge // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      itemDiscount: null == itemDiscount
          ? _self.itemDiscount
          : itemDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      itemAddition: null == itemAddition
          ? _self.itemAddition
          : itemAddition // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
