// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_coupon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaleCouponModel {
  SaleStartRequestModel get sale;
  List<SaleItemModel> get items;
  List<SalePaymentModel> get payments;
  SaleSummaryModel get summary;

  /// Create a copy of SaleCouponModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SaleCouponModelCopyWith<SaleCouponModel> get copyWith =>
      _$SaleCouponModelCopyWithImpl<SaleCouponModel>(
          this as SaleCouponModel, _$identity);

  /// Serializes this SaleCouponModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaleCouponModel &&
            (identical(other.sale, sale) || other.sale == sale) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality().equals(other.payments, payments) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sale,
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(payments),
      summary);

  @override
  String toString() {
    return 'SaleCouponModel(sale: $sale, items: $items, payments: $payments, summary: $summary)';
  }
}

/// @nodoc
abstract mixin class $SaleCouponModelCopyWith<$Res> {
  factory $SaleCouponModelCopyWith(
          SaleCouponModel value, $Res Function(SaleCouponModel) _then) =
      _$SaleCouponModelCopyWithImpl;
  @useResult
  $Res call(
      {SaleStartRequestModel sale,
      List<SaleItemModel> items,
      List<SalePaymentModel> payments,
      SaleSummaryModel summary});

  $SaleStartRequestModelCopyWith<$Res> get sale;
  $SaleSummaryModelCopyWith<$Res> get summary;
}

/// @nodoc
class _$SaleCouponModelCopyWithImpl<$Res>
    implements $SaleCouponModelCopyWith<$Res> {
  _$SaleCouponModelCopyWithImpl(this._self, this._then);

  final SaleCouponModel _self;
  final $Res Function(SaleCouponModel) _then;

  /// Create a copy of SaleCouponModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sale = null,
    Object? items = null,
    Object? payments = null,
    Object? summary = null,
  }) {
    return _then(_self.copyWith(
      sale: null == sale
          ? _self.sale
          : sale // ignore: cast_nullable_to_non_nullable
              as SaleStartRequestModel,
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SaleItemModel>,
      payments: null == payments
          ? _self.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<SalePaymentModel>,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as SaleSummaryModel,
    ));
  }

  /// Create a copy of SaleCouponModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SaleStartRequestModelCopyWith<$Res> get sale {
    return $SaleStartRequestModelCopyWith<$Res>(_self.sale, (value) {
      return _then(_self.copyWith(sale: value));
    });
  }

  /// Create a copy of SaleCouponModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SaleSummaryModelCopyWith<$Res> get summary {
    return $SaleSummaryModelCopyWith<$Res>(_self.summary, (value) {
      return _then(_self.copyWith(summary: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SaleCouponModel].
extension SaleCouponModelPatterns on SaleCouponModel {
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
    TResult Function(_SaleCouponModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaleCouponModel() when $default != null:
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
    TResult Function(_SaleCouponModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaleCouponModel():
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
    TResult? Function(_SaleCouponModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaleCouponModel() when $default != null:
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
    TResult Function(SaleStartRequestModel sale, List<SaleItemModel> items,
            List<SalePaymentModel> payments, SaleSummaryModel summary)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaleCouponModel() when $default != null:
        return $default(_that.sale, _that.items, _that.payments, _that.summary);
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
    TResult Function(SaleStartRequestModel sale, List<SaleItemModel> items,
            List<SalePaymentModel> payments, SaleSummaryModel summary)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaleCouponModel():
        return $default(_that.sale, _that.items, _that.payments, _that.summary);
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
    TResult? Function(SaleStartRequestModel sale, List<SaleItemModel> items,
            List<SalePaymentModel> payments, SaleSummaryModel summary)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaleCouponModel() when $default != null:
        return $default(_that.sale, _that.items, _that.payments, _that.summary);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SaleCouponModel implements SaleCouponModel {
  const _SaleCouponModel(
      {required this.sale,
      final List<SaleItemModel> items = const [],
      final List<SalePaymentModel> payments = const [],
      required this.summary})
      : _items = items,
        _payments = payments;
  factory _SaleCouponModel.fromJson(Map<String, dynamic> json) =>
      _$SaleCouponModelFromJson(json);

  @override
  final SaleStartRequestModel sale;
  final List<SaleItemModel> _items;
  @override
  @JsonKey()
  List<SaleItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<SalePaymentModel> _payments;
  @override
  @JsonKey()
  List<SalePaymentModel> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  final SaleSummaryModel summary;

  /// Create a copy of SaleCouponModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SaleCouponModelCopyWith<_SaleCouponModel> get copyWith =>
      __$SaleCouponModelCopyWithImpl<_SaleCouponModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SaleCouponModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaleCouponModel &&
            (identical(other.sale, sale) || other.sale == sale) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sale,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_payments),
      summary);

  @override
  String toString() {
    return 'SaleCouponModel(sale: $sale, items: $items, payments: $payments, summary: $summary)';
  }
}

/// @nodoc
abstract mixin class _$SaleCouponModelCopyWith<$Res>
    implements $SaleCouponModelCopyWith<$Res> {
  factory _$SaleCouponModelCopyWith(
          _SaleCouponModel value, $Res Function(_SaleCouponModel) _then) =
      __$SaleCouponModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {SaleStartRequestModel sale,
      List<SaleItemModel> items,
      List<SalePaymentModel> payments,
      SaleSummaryModel summary});

  @override
  $SaleStartRequestModelCopyWith<$Res> get sale;
  @override
  $SaleSummaryModelCopyWith<$Res> get summary;
}

/// @nodoc
class __$SaleCouponModelCopyWithImpl<$Res>
    implements _$SaleCouponModelCopyWith<$Res> {
  __$SaleCouponModelCopyWithImpl(this._self, this._then);

  final _SaleCouponModel _self;
  final $Res Function(_SaleCouponModel) _then;

  /// Create a copy of SaleCouponModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sale = null,
    Object? items = null,
    Object? payments = null,
    Object? summary = null,
  }) {
    return _then(_SaleCouponModel(
      sale: null == sale
          ? _self.sale
          : sale // ignore: cast_nullable_to_non_nullable
              as SaleStartRequestModel,
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SaleItemModel>,
      payments: null == payments
          ? _self._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<SalePaymentModel>,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as SaleSummaryModel,
    ));
  }

  /// Create a copy of SaleCouponModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SaleStartRequestModelCopyWith<$Res> get sale {
    return $SaleStartRequestModelCopyWith<$Res>(_self.sale, (value) {
      return _then(_self.copyWith(sale: value));
    });
  }

  /// Create a copy of SaleCouponModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SaleSummaryModelCopyWith<$Res> get summary {
    return $SaleSummaryModelCopyWith<$Res>(_self.summary, (value) {
      return _then(_self.copyWith(summary: value));
    });
  }
}

// dart format on
