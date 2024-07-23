// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarketApiResponseDTO _$MarketApiResponseDTOFromJson(Map<String, dynamic> json) {
  return _MarketApiResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$MarketApiResponseDTO {
  int get resultCode => throw _privateConstructorUsedError;
  String get resultMsg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketApiResponseDTOCopyWith<MarketApiResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketApiResponseDTOCopyWith<$Res> {
  factory $MarketApiResponseDTOCopyWith(MarketApiResponseDTO value,
          $Res Function(MarketApiResponseDTO) then) =
      _$MarketApiResponseDTOCopyWithImpl<$Res, MarketApiResponseDTO>;
  @useResult
  $Res call({int resultCode, String resultMsg});
}

/// @nodoc
class _$MarketApiResponseDTOCopyWithImpl<$Res,
        $Val extends MarketApiResponseDTO>
    implements $MarketApiResponseDTOCopyWith<$Res> {
  _$MarketApiResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultCode = null,
    Object? resultMsg = null,
  }) {
    return _then(_value.copyWith(
      resultCode: null == resultCode
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as int,
      resultMsg: null == resultMsg
          ? _value.resultMsg
          : resultMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketApiResponseDTOImplCopyWith<$Res>
    implements $MarketApiResponseDTOCopyWith<$Res> {
  factory _$$MarketApiResponseDTOImplCopyWith(_$MarketApiResponseDTOImpl value,
          $Res Function(_$MarketApiResponseDTOImpl) then) =
      __$$MarketApiResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int resultCode, String resultMsg});
}

/// @nodoc
class __$$MarketApiResponseDTOImplCopyWithImpl<$Res>
    extends _$MarketApiResponseDTOCopyWithImpl<$Res, _$MarketApiResponseDTOImpl>
    implements _$$MarketApiResponseDTOImplCopyWith<$Res> {
  __$$MarketApiResponseDTOImplCopyWithImpl(_$MarketApiResponseDTOImpl _value,
      $Res Function(_$MarketApiResponseDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultCode = null,
    Object? resultMsg = null,
  }) {
    return _then(_$MarketApiResponseDTOImpl(
      resultCode: null == resultCode
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as int,
      resultMsg: null == resultMsg
          ? _value.resultMsg
          : resultMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketApiResponseDTOImpl implements _MarketApiResponseDTO {
  const _$MarketApiResponseDTOImpl(
      {required this.resultCode, required this.resultMsg});

  factory _$MarketApiResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketApiResponseDTOImplFromJson(json);

  @override
  final int resultCode;
  @override
  final String resultMsg;

  @override
  String toString() {
    return 'MarketApiResponseDTO(resultCode: $resultCode, resultMsg: $resultMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketApiResponseDTOImpl &&
            (identical(other.resultCode, resultCode) ||
                other.resultCode == resultCode) &&
            (identical(other.resultMsg, resultMsg) ||
                other.resultMsg == resultMsg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resultCode, resultMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketApiResponseDTOImplCopyWith<_$MarketApiResponseDTOImpl>
      get copyWith =>
          __$$MarketApiResponseDTOImplCopyWithImpl<_$MarketApiResponseDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketApiResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _MarketApiResponseDTO implements MarketApiResponseDTO {
  const factory _MarketApiResponseDTO(
      {required final int resultCode,
      required final String resultMsg}) = _$MarketApiResponseDTOImpl;

  factory _MarketApiResponseDTO.fromJson(Map<String, dynamic> json) =
      _$MarketApiResponseDTOImpl.fromJson;

  @override
  int get resultCode;
  @override
  String get resultMsg;
  @override
  @JsonKey(ignore: true)
  _$$MarketApiResponseDTOImplCopyWith<_$MarketApiResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HotItemDTO _$HotItemDTOFromJson(Map<String, dynamic> json) {
  return _HotItemDTO.fromJson(json);
}

/// @nodoc
mixin _$HotItemDTO {
  int get itemId => throw _privateConstructorUsedError;
  int get enhancementMin => throw _privateConstructorUsedError;
  int get enhancementMax => throw _privateConstructorUsedError;
  int get basePrice => throw _privateConstructorUsedError;
  int get currentStock => throw _privateConstructorUsedError;
  int get totalTrades => throw _privateConstructorUsedError;
  int get priceChangeDirection => throw _privateConstructorUsedError;
  int get priceChangeValue => throw _privateConstructorUsedError;
  int get priceHardCapMin => throw _privateConstructorUsedError;
  int get priceHardCapMax => throw _privateConstructorUsedError;
  int get lastSalePrice => throw _privateConstructorUsedError;
  int get lastSaleTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotItemDTOCopyWith<HotItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotItemDTOCopyWith<$Res> {
  factory $HotItemDTOCopyWith(
          HotItemDTO value, $Res Function(HotItemDTO) then) =
      _$HotItemDTOCopyWithImpl<$Res, HotItemDTO>;
  @useResult
  $Res call(
      {int itemId,
      int enhancementMin,
      int enhancementMax,
      int basePrice,
      int currentStock,
      int totalTrades,
      int priceChangeDirection,
      int priceChangeValue,
      int priceHardCapMin,
      int priceHardCapMax,
      int lastSalePrice,
      int lastSaleTime});
}

/// @nodoc
class _$HotItemDTOCopyWithImpl<$Res, $Val extends HotItemDTO>
    implements $HotItemDTOCopyWith<$Res> {
  _$HotItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? enhancementMin = null,
    Object? enhancementMax = null,
    Object? basePrice = null,
    Object? currentStock = null,
    Object? totalTrades = null,
    Object? priceChangeDirection = null,
    Object? priceChangeValue = null,
    Object? priceHardCapMin = null,
    Object? priceHardCapMax = null,
    Object? lastSalePrice = null,
    Object? lastSaleTime = null,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      enhancementMin: null == enhancementMin
          ? _value.enhancementMin
          : enhancementMin // ignore: cast_nullable_to_non_nullable
              as int,
      enhancementMax: null == enhancementMax
          ? _value.enhancementMax
          : enhancementMax // ignore: cast_nullable_to_non_nullable
              as int,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int,
      currentStock: null == currentStock
          ? _value.currentStock
          : currentStock // ignore: cast_nullable_to_non_nullable
              as int,
      totalTrades: null == totalTrades
          ? _value.totalTrades
          : totalTrades // ignore: cast_nullable_to_non_nullable
              as int,
      priceChangeDirection: null == priceChangeDirection
          ? _value.priceChangeDirection
          : priceChangeDirection // ignore: cast_nullable_to_non_nullable
              as int,
      priceChangeValue: null == priceChangeValue
          ? _value.priceChangeValue
          : priceChangeValue // ignore: cast_nullable_to_non_nullable
              as int,
      priceHardCapMin: null == priceHardCapMin
          ? _value.priceHardCapMin
          : priceHardCapMin // ignore: cast_nullable_to_non_nullable
              as int,
      priceHardCapMax: null == priceHardCapMax
          ? _value.priceHardCapMax
          : priceHardCapMax // ignore: cast_nullable_to_non_nullable
              as int,
      lastSalePrice: null == lastSalePrice
          ? _value.lastSalePrice
          : lastSalePrice // ignore: cast_nullable_to_non_nullable
              as int,
      lastSaleTime: null == lastSaleTime
          ? _value.lastSaleTime
          : lastSaleTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotItemDTOImplCopyWith<$Res>
    implements $HotItemDTOCopyWith<$Res> {
  factory _$$HotItemDTOImplCopyWith(
          _$HotItemDTOImpl value, $Res Function(_$HotItemDTOImpl) then) =
      __$$HotItemDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int itemId,
      int enhancementMin,
      int enhancementMax,
      int basePrice,
      int currentStock,
      int totalTrades,
      int priceChangeDirection,
      int priceChangeValue,
      int priceHardCapMin,
      int priceHardCapMax,
      int lastSalePrice,
      int lastSaleTime});
}

/// @nodoc
class __$$HotItemDTOImplCopyWithImpl<$Res>
    extends _$HotItemDTOCopyWithImpl<$Res, _$HotItemDTOImpl>
    implements _$$HotItemDTOImplCopyWith<$Res> {
  __$$HotItemDTOImplCopyWithImpl(
      _$HotItemDTOImpl _value, $Res Function(_$HotItemDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? enhancementMin = null,
    Object? enhancementMax = null,
    Object? basePrice = null,
    Object? currentStock = null,
    Object? totalTrades = null,
    Object? priceChangeDirection = null,
    Object? priceChangeValue = null,
    Object? priceHardCapMin = null,
    Object? priceHardCapMax = null,
    Object? lastSalePrice = null,
    Object? lastSaleTime = null,
  }) {
    return _then(_$HotItemDTOImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      enhancementMin: null == enhancementMin
          ? _value.enhancementMin
          : enhancementMin // ignore: cast_nullable_to_non_nullable
              as int,
      enhancementMax: null == enhancementMax
          ? _value.enhancementMax
          : enhancementMax // ignore: cast_nullable_to_non_nullable
              as int,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int,
      currentStock: null == currentStock
          ? _value.currentStock
          : currentStock // ignore: cast_nullable_to_non_nullable
              as int,
      totalTrades: null == totalTrades
          ? _value.totalTrades
          : totalTrades // ignore: cast_nullable_to_non_nullable
              as int,
      priceChangeDirection: null == priceChangeDirection
          ? _value.priceChangeDirection
          : priceChangeDirection // ignore: cast_nullable_to_non_nullable
              as int,
      priceChangeValue: null == priceChangeValue
          ? _value.priceChangeValue
          : priceChangeValue // ignore: cast_nullable_to_non_nullable
              as int,
      priceHardCapMin: null == priceHardCapMin
          ? _value.priceHardCapMin
          : priceHardCapMin // ignore: cast_nullable_to_non_nullable
              as int,
      priceHardCapMax: null == priceHardCapMax
          ? _value.priceHardCapMax
          : priceHardCapMax // ignore: cast_nullable_to_non_nullable
              as int,
      lastSalePrice: null == lastSalePrice
          ? _value.lastSalePrice
          : lastSalePrice // ignore: cast_nullable_to_non_nullable
              as int,
      lastSaleTime: null == lastSaleTime
          ? _value.lastSaleTime
          : lastSaleTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotItemDTOImpl implements _HotItemDTO {
  const _$HotItemDTOImpl(
      {required this.itemId,
      required this.enhancementMin,
      required this.enhancementMax,
      required this.basePrice,
      required this.currentStock,
      required this.totalTrades,
      required this.priceChangeDirection,
      required this.priceChangeValue,
      required this.priceHardCapMin,
      required this.priceHardCapMax,
      required this.lastSalePrice,
      required this.lastSaleTime});

  factory _$HotItemDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotItemDTOImplFromJson(json);

  @override
  final int itemId;
  @override
  final int enhancementMin;
  @override
  final int enhancementMax;
  @override
  final int basePrice;
  @override
  final int currentStock;
  @override
  final int totalTrades;
  @override
  final int priceChangeDirection;
  @override
  final int priceChangeValue;
  @override
  final int priceHardCapMin;
  @override
  final int priceHardCapMax;
  @override
  final int lastSalePrice;
  @override
  final int lastSaleTime;

  @override
  String toString() {
    return 'HotItemDTO(itemId: $itemId, enhancementMin: $enhancementMin, enhancementMax: $enhancementMax, basePrice: $basePrice, currentStock: $currentStock, totalTrades: $totalTrades, priceChangeDirection: $priceChangeDirection, priceChangeValue: $priceChangeValue, priceHardCapMin: $priceHardCapMin, priceHardCapMax: $priceHardCapMax, lastSalePrice: $lastSalePrice, lastSaleTime: $lastSaleTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotItemDTOImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.enhancementMin, enhancementMin) ||
                other.enhancementMin == enhancementMin) &&
            (identical(other.enhancementMax, enhancementMax) ||
                other.enhancementMax == enhancementMax) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.currentStock, currentStock) ||
                other.currentStock == currentStock) &&
            (identical(other.totalTrades, totalTrades) ||
                other.totalTrades == totalTrades) &&
            (identical(other.priceChangeDirection, priceChangeDirection) ||
                other.priceChangeDirection == priceChangeDirection) &&
            (identical(other.priceChangeValue, priceChangeValue) ||
                other.priceChangeValue == priceChangeValue) &&
            (identical(other.priceHardCapMin, priceHardCapMin) ||
                other.priceHardCapMin == priceHardCapMin) &&
            (identical(other.priceHardCapMax, priceHardCapMax) ||
                other.priceHardCapMax == priceHardCapMax) &&
            (identical(other.lastSalePrice, lastSalePrice) ||
                other.lastSalePrice == lastSalePrice) &&
            (identical(other.lastSaleTime, lastSaleTime) ||
                other.lastSaleTime == lastSaleTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      enhancementMin,
      enhancementMax,
      basePrice,
      currentStock,
      totalTrades,
      priceChangeDirection,
      priceChangeValue,
      priceHardCapMin,
      priceHardCapMax,
      lastSalePrice,
      lastSaleTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotItemDTOImplCopyWith<_$HotItemDTOImpl> get copyWith =>
      __$$HotItemDTOImplCopyWithImpl<_$HotItemDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotItemDTOImplToJson(
      this,
    );
  }
}

abstract class _HotItemDTO implements HotItemDTO {
  const factory _HotItemDTO(
      {required final int itemId,
      required final int enhancementMin,
      required final int enhancementMax,
      required final int basePrice,
      required final int currentStock,
      required final int totalTrades,
      required final int priceChangeDirection,
      required final int priceChangeValue,
      required final int priceHardCapMin,
      required final int priceHardCapMax,
      required final int lastSalePrice,
      required final int lastSaleTime}) = _$HotItemDTOImpl;

  factory _HotItemDTO.fromJson(Map<String, dynamic> json) =
      _$HotItemDTOImpl.fromJson;

  @override
  int get itemId;
  @override
  int get enhancementMin;
  @override
  int get enhancementMax;
  @override
  int get basePrice;
  @override
  int get currentStock;
  @override
  int get totalTrades;
  @override
  int get priceChangeDirection;
  @override
  int get priceChangeValue;
  @override
  int get priceHardCapMin;
  @override
  int get priceHardCapMax;
  @override
  int get lastSalePrice;
  @override
  int get lastSaleTime;
  @override
  @JsonKey(ignore: true)
  _$$HotItemDTOImplCopyWith<_$HotItemDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MarketItemDTO _$MarketItemDTOFromJson(Map<String, dynamic> json) {
  return _MarketItemDTO.fromJson(json);
}

/// @nodoc
mixin _$MarketItemDTO {
  int get itemId => throw _privateConstructorUsedError;
  int get currentStock => throw _privateConstructorUsedError;
  int get totalTrades => throw _privateConstructorUsedError;
  int get basePrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketItemDTOCopyWith<MarketItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketItemDTOCopyWith<$Res> {
  factory $MarketItemDTOCopyWith(
          MarketItemDTO value, $Res Function(MarketItemDTO) then) =
      _$MarketItemDTOCopyWithImpl<$Res, MarketItemDTO>;
  @useResult
  $Res call({int itemId, int currentStock, int totalTrades, int basePrice});
}

/// @nodoc
class _$MarketItemDTOCopyWithImpl<$Res, $Val extends MarketItemDTO>
    implements $MarketItemDTOCopyWith<$Res> {
  _$MarketItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? currentStock = null,
    Object? totalTrades = null,
    Object? basePrice = null,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      currentStock: null == currentStock
          ? _value.currentStock
          : currentStock // ignore: cast_nullable_to_non_nullable
              as int,
      totalTrades: null == totalTrades
          ? _value.totalTrades
          : totalTrades // ignore: cast_nullable_to_non_nullable
              as int,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketItemDTOImplCopyWith<$Res>
    implements $MarketItemDTOCopyWith<$Res> {
  factory _$$MarketItemDTOImplCopyWith(
          _$MarketItemDTOImpl value, $Res Function(_$MarketItemDTOImpl) then) =
      __$$MarketItemDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int itemId, int currentStock, int totalTrades, int basePrice});
}

/// @nodoc
class __$$MarketItemDTOImplCopyWithImpl<$Res>
    extends _$MarketItemDTOCopyWithImpl<$Res, _$MarketItemDTOImpl>
    implements _$$MarketItemDTOImplCopyWith<$Res> {
  __$$MarketItemDTOImplCopyWithImpl(
      _$MarketItemDTOImpl _value, $Res Function(_$MarketItemDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? currentStock = null,
    Object? totalTrades = null,
    Object? basePrice = null,
  }) {
    return _then(_$MarketItemDTOImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      currentStock: null == currentStock
          ? _value.currentStock
          : currentStock // ignore: cast_nullable_to_non_nullable
              as int,
      totalTrades: null == totalTrades
          ? _value.totalTrades
          : totalTrades // ignore: cast_nullable_to_non_nullable
              as int,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketItemDTOImpl implements _MarketItemDTO {
  const _$MarketItemDTOImpl(
      {required this.itemId,
      required this.currentStock,
      required this.totalTrades,
      required this.basePrice});

  factory _$MarketItemDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketItemDTOImplFromJson(json);

  @override
  final int itemId;
  @override
  final int currentStock;
  @override
  final int totalTrades;
  @override
  final int basePrice;

  @override
  String toString() {
    return 'MarketItemDTO(itemId: $itemId, currentStock: $currentStock, totalTrades: $totalTrades, basePrice: $basePrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketItemDTOImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.currentStock, currentStock) ||
                other.currentStock == currentStock) &&
            (identical(other.totalTrades, totalTrades) ||
                other.totalTrades == totalTrades) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, itemId, currentStock, totalTrades, basePrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketItemDTOImplCopyWith<_$MarketItemDTOImpl> get copyWith =>
      __$$MarketItemDTOImplCopyWithImpl<_$MarketItemDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketItemDTOImplToJson(
      this,
    );
  }
}

abstract class _MarketItemDTO implements MarketItemDTO {
  const factory _MarketItemDTO(
      {required final int itemId,
      required final int currentStock,
      required final int totalTrades,
      required final int basePrice}) = _$MarketItemDTOImpl;

  factory _MarketItemDTO.fromJson(Map<String, dynamic> json) =
      _$MarketItemDTOImpl.fromJson;

  @override
  int get itemId;
  @override
  int get currentStock;
  @override
  int get totalTrades;
  @override
  int get basePrice;
  @override
  @JsonKey(ignore: true)
  _$$MarketItemDTOImplCopyWith<_$MarketItemDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MarketSubItemDTO _$MarketSubItemDTOFromJson(Map<String, dynamic> json) {
  return _MarketSubItemDTO.fromJson(json);
}

/// @nodoc
mixin _$MarketSubItemDTO {
  int get itemId => throw _privateConstructorUsedError;
  int get enhancementMin => throw _privateConstructorUsedError;
  int get enhancementMax => throw _privateConstructorUsedError;
  int get basePrice => throw _privateConstructorUsedError;
  int get currentStock => throw _privateConstructorUsedError;
  int get totalTrades => throw _privateConstructorUsedError;
  int get priceHardCapMin => throw _privateConstructorUsedError;
  int get priceHardCapMax => throw _privateConstructorUsedError;
  int get lastSalePrice => throw _privateConstructorUsedError;
  int get lastSaleTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketSubItemDTOCopyWith<MarketSubItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketSubItemDTOCopyWith<$Res> {
  factory $MarketSubItemDTOCopyWith(
          MarketSubItemDTO value, $Res Function(MarketSubItemDTO) then) =
      _$MarketSubItemDTOCopyWithImpl<$Res, MarketSubItemDTO>;
  @useResult
  $Res call(
      {int itemId,
      int enhancementMin,
      int enhancementMax,
      int basePrice,
      int currentStock,
      int totalTrades,
      int priceHardCapMin,
      int priceHardCapMax,
      int lastSalePrice,
      int lastSaleTime});
}

/// @nodoc
class _$MarketSubItemDTOCopyWithImpl<$Res, $Val extends MarketSubItemDTO>
    implements $MarketSubItemDTOCopyWith<$Res> {
  _$MarketSubItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? enhancementMin = null,
    Object? enhancementMax = null,
    Object? basePrice = null,
    Object? currentStock = null,
    Object? totalTrades = null,
    Object? priceHardCapMin = null,
    Object? priceHardCapMax = null,
    Object? lastSalePrice = null,
    Object? lastSaleTime = null,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      enhancementMin: null == enhancementMin
          ? _value.enhancementMin
          : enhancementMin // ignore: cast_nullable_to_non_nullable
              as int,
      enhancementMax: null == enhancementMax
          ? _value.enhancementMax
          : enhancementMax // ignore: cast_nullable_to_non_nullable
              as int,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int,
      currentStock: null == currentStock
          ? _value.currentStock
          : currentStock // ignore: cast_nullable_to_non_nullable
              as int,
      totalTrades: null == totalTrades
          ? _value.totalTrades
          : totalTrades // ignore: cast_nullable_to_non_nullable
              as int,
      priceHardCapMin: null == priceHardCapMin
          ? _value.priceHardCapMin
          : priceHardCapMin // ignore: cast_nullable_to_non_nullable
              as int,
      priceHardCapMax: null == priceHardCapMax
          ? _value.priceHardCapMax
          : priceHardCapMax // ignore: cast_nullable_to_non_nullable
              as int,
      lastSalePrice: null == lastSalePrice
          ? _value.lastSalePrice
          : lastSalePrice // ignore: cast_nullable_to_non_nullable
              as int,
      lastSaleTime: null == lastSaleTime
          ? _value.lastSaleTime
          : lastSaleTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketSubItemDTOImplCopyWith<$Res>
    implements $MarketSubItemDTOCopyWith<$Res> {
  factory _$$MarketSubItemDTOImplCopyWith(_$MarketSubItemDTOImpl value,
          $Res Function(_$MarketSubItemDTOImpl) then) =
      __$$MarketSubItemDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int itemId,
      int enhancementMin,
      int enhancementMax,
      int basePrice,
      int currentStock,
      int totalTrades,
      int priceHardCapMin,
      int priceHardCapMax,
      int lastSalePrice,
      int lastSaleTime});
}

/// @nodoc
class __$$MarketSubItemDTOImplCopyWithImpl<$Res>
    extends _$MarketSubItemDTOCopyWithImpl<$Res, _$MarketSubItemDTOImpl>
    implements _$$MarketSubItemDTOImplCopyWith<$Res> {
  __$$MarketSubItemDTOImplCopyWithImpl(_$MarketSubItemDTOImpl _value,
      $Res Function(_$MarketSubItemDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? enhancementMin = null,
    Object? enhancementMax = null,
    Object? basePrice = null,
    Object? currentStock = null,
    Object? totalTrades = null,
    Object? priceHardCapMin = null,
    Object? priceHardCapMax = null,
    Object? lastSalePrice = null,
    Object? lastSaleTime = null,
  }) {
    return _then(_$MarketSubItemDTOImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      enhancementMin: null == enhancementMin
          ? _value.enhancementMin
          : enhancementMin // ignore: cast_nullable_to_non_nullable
              as int,
      enhancementMax: null == enhancementMax
          ? _value.enhancementMax
          : enhancementMax // ignore: cast_nullable_to_non_nullable
              as int,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int,
      currentStock: null == currentStock
          ? _value.currentStock
          : currentStock // ignore: cast_nullable_to_non_nullable
              as int,
      totalTrades: null == totalTrades
          ? _value.totalTrades
          : totalTrades // ignore: cast_nullable_to_non_nullable
              as int,
      priceHardCapMin: null == priceHardCapMin
          ? _value.priceHardCapMin
          : priceHardCapMin // ignore: cast_nullable_to_non_nullable
              as int,
      priceHardCapMax: null == priceHardCapMax
          ? _value.priceHardCapMax
          : priceHardCapMax // ignore: cast_nullable_to_non_nullable
              as int,
      lastSalePrice: null == lastSalePrice
          ? _value.lastSalePrice
          : lastSalePrice // ignore: cast_nullable_to_non_nullable
              as int,
      lastSaleTime: null == lastSaleTime
          ? _value.lastSaleTime
          : lastSaleTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketSubItemDTOImpl implements _MarketSubItemDTO {
  const _$MarketSubItemDTOImpl(
      {required this.itemId,
      required this.enhancementMin,
      required this.enhancementMax,
      required this.basePrice,
      required this.currentStock,
      required this.totalTrades,
      required this.priceHardCapMin,
      required this.priceHardCapMax,
      required this.lastSalePrice,
      required this.lastSaleTime});

  factory _$MarketSubItemDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketSubItemDTOImplFromJson(json);

  @override
  final int itemId;
  @override
  final int enhancementMin;
  @override
  final int enhancementMax;
  @override
  final int basePrice;
  @override
  final int currentStock;
  @override
  final int totalTrades;
  @override
  final int priceHardCapMin;
  @override
  final int priceHardCapMax;
  @override
  final int lastSalePrice;
  @override
  final int lastSaleTime;

  @override
  String toString() {
    return 'MarketSubItemDTO(itemId: $itemId, enhancementMin: $enhancementMin, enhancementMax: $enhancementMax, basePrice: $basePrice, currentStock: $currentStock, totalTrades: $totalTrades, priceHardCapMin: $priceHardCapMin, priceHardCapMax: $priceHardCapMax, lastSalePrice: $lastSalePrice, lastSaleTime: $lastSaleTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketSubItemDTOImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.enhancementMin, enhancementMin) ||
                other.enhancementMin == enhancementMin) &&
            (identical(other.enhancementMax, enhancementMax) ||
                other.enhancementMax == enhancementMax) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.currentStock, currentStock) ||
                other.currentStock == currentStock) &&
            (identical(other.totalTrades, totalTrades) ||
                other.totalTrades == totalTrades) &&
            (identical(other.priceHardCapMin, priceHardCapMin) ||
                other.priceHardCapMin == priceHardCapMin) &&
            (identical(other.priceHardCapMax, priceHardCapMax) ||
                other.priceHardCapMax == priceHardCapMax) &&
            (identical(other.lastSalePrice, lastSalePrice) ||
                other.lastSalePrice == lastSalePrice) &&
            (identical(other.lastSaleTime, lastSaleTime) ||
                other.lastSaleTime == lastSaleTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      enhancementMin,
      enhancementMax,
      basePrice,
      currentStock,
      totalTrades,
      priceHardCapMin,
      priceHardCapMax,
      lastSalePrice,
      lastSaleTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketSubItemDTOImplCopyWith<_$MarketSubItemDTOImpl> get copyWith =>
      __$$MarketSubItemDTOImplCopyWithImpl<_$MarketSubItemDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketSubItemDTOImplToJson(
      this,
    );
  }
}

abstract class _MarketSubItemDTO implements MarketSubItemDTO {
  const factory _MarketSubItemDTO(
      {required final int itemId,
      required final int enhancementMin,
      required final int enhancementMax,
      required final int basePrice,
      required final int currentStock,
      required final int totalTrades,
      required final int priceHardCapMin,
      required final int priceHardCapMax,
      required final int lastSalePrice,
      required final int lastSaleTime}) = _$MarketSubItemDTOImpl;

  factory _MarketSubItemDTO.fromJson(Map<String, dynamic> json) =
      _$MarketSubItemDTOImpl.fromJson;

  @override
  int get itemId;
  @override
  int get enhancementMin;
  @override
  int get enhancementMax;
  @override
  int get basePrice;
  @override
  int get currentStock;
  @override
  int get totalTrades;
  @override
  int get priceHardCapMin;
  @override
  int get priceHardCapMax;
  @override
  int get lastSalePrice;
  @override
  int get lastSaleTime;
  @override
  @JsonKey(ignore: true)
  _$$MarketSubItemDTOImplCopyWith<_$MarketSubItemDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchedItemDTO _$SearchedItemDTOFromJson(Map<String, dynamic> json) {
  return _SearchedItemDTO.fromJson(json);
}

/// @nodoc
mixin _$SearchedItemDTO {
  int get itemId => throw _privateConstructorUsedError;
  int get currentStock => throw _privateConstructorUsedError;
  int get basePrice => throw _privateConstructorUsedError;
  int get totalTrades => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchedItemDTOCopyWith<SearchedItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchedItemDTOCopyWith<$Res> {
  factory $SearchedItemDTOCopyWith(
          SearchedItemDTO value, $Res Function(SearchedItemDTO) then) =
      _$SearchedItemDTOCopyWithImpl<$Res, SearchedItemDTO>;
  @useResult
  $Res call({int itemId, int currentStock, int basePrice, int totalTrades});
}

/// @nodoc
class _$SearchedItemDTOCopyWithImpl<$Res, $Val extends SearchedItemDTO>
    implements $SearchedItemDTOCopyWith<$Res> {
  _$SearchedItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? currentStock = null,
    Object? basePrice = null,
    Object? totalTrades = null,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      currentStock: null == currentStock
          ? _value.currentStock
          : currentStock // ignore: cast_nullable_to_non_nullable
              as int,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalTrades: null == totalTrades
          ? _value.totalTrades
          : totalTrades // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchedItemDTOImplCopyWith<$Res>
    implements $SearchedItemDTOCopyWith<$Res> {
  factory _$$SearchedItemDTOImplCopyWith(_$SearchedItemDTOImpl value,
          $Res Function(_$SearchedItemDTOImpl) then) =
      __$$SearchedItemDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int itemId, int currentStock, int basePrice, int totalTrades});
}

/// @nodoc
class __$$SearchedItemDTOImplCopyWithImpl<$Res>
    extends _$SearchedItemDTOCopyWithImpl<$Res, _$SearchedItemDTOImpl>
    implements _$$SearchedItemDTOImplCopyWith<$Res> {
  __$$SearchedItemDTOImplCopyWithImpl(
      _$SearchedItemDTOImpl _value, $Res Function(_$SearchedItemDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? currentStock = null,
    Object? basePrice = null,
    Object? totalTrades = null,
  }) {
    return _then(_$SearchedItemDTOImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      currentStock: null == currentStock
          ? _value.currentStock
          : currentStock // ignore: cast_nullable_to_non_nullable
              as int,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalTrades: null == totalTrades
          ? _value.totalTrades
          : totalTrades // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchedItemDTOImpl implements _SearchedItemDTO {
  const _$SearchedItemDTOImpl(
      {required this.itemId,
      required this.currentStock,
      required this.basePrice,
      required this.totalTrades});

  factory _$SearchedItemDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchedItemDTOImplFromJson(json);

  @override
  final int itemId;
  @override
  final int currentStock;
  @override
  final int basePrice;
  @override
  final int totalTrades;

  @override
  String toString() {
    return 'SearchedItemDTO(itemId: $itemId, currentStock: $currentStock, basePrice: $basePrice, totalTrades: $totalTrades)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedItemDTOImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.currentStock, currentStock) ||
                other.currentStock == currentStock) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.totalTrades, totalTrades) ||
                other.totalTrades == totalTrades));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, itemId, currentStock, basePrice, totalTrades);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchedItemDTOImplCopyWith<_$SearchedItemDTOImpl> get copyWith =>
      __$$SearchedItemDTOImplCopyWithImpl<_$SearchedItemDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchedItemDTOImplToJson(
      this,
    );
  }
}

abstract class _SearchedItemDTO implements SearchedItemDTO {
  const factory _SearchedItemDTO(
      {required final int itemId,
      required final int currentStock,
      required final int basePrice,
      required final int totalTrades}) = _$SearchedItemDTOImpl;

  factory _SearchedItemDTO.fromJson(Map<String, dynamic> json) =
      _$SearchedItemDTOImpl.fromJson;

  @override
  int get itemId;
  @override
  int get currentStock;
  @override
  int get basePrice;
  @override
  int get totalTrades;
  @override
  @JsonKey(ignore: true)
  _$$SearchedItemDTOImplCopyWith<_$SearchedItemDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BiddingInfoDTO _$BiddingInfoDTOFromJson(Map<String, dynamic> json) {
  return _BiddingInfoDTO.fromJson(json);
}

/// @nodoc
mixin _$BiddingInfoDTO {
  int get price => throw _privateConstructorUsedError;
  int get sellOrders => throw _privateConstructorUsedError;
  int get buyOrders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BiddingInfoDTOCopyWith<BiddingInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiddingInfoDTOCopyWith<$Res> {
  factory $BiddingInfoDTOCopyWith(
          BiddingInfoDTO value, $Res Function(BiddingInfoDTO) then) =
      _$BiddingInfoDTOCopyWithImpl<$Res, BiddingInfoDTO>;
  @useResult
  $Res call({int price, int sellOrders, int buyOrders});
}

/// @nodoc
class _$BiddingInfoDTOCopyWithImpl<$Res, $Val extends BiddingInfoDTO>
    implements $BiddingInfoDTOCopyWith<$Res> {
  _$BiddingInfoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? sellOrders = null,
    Object? buyOrders = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      sellOrders: null == sellOrders
          ? _value.sellOrders
          : sellOrders // ignore: cast_nullable_to_non_nullable
              as int,
      buyOrders: null == buyOrders
          ? _value.buyOrders
          : buyOrders // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BiddingInfoDTOImplCopyWith<$Res>
    implements $BiddingInfoDTOCopyWith<$Res> {
  factory _$$BiddingInfoDTOImplCopyWith(_$BiddingInfoDTOImpl value,
          $Res Function(_$BiddingInfoDTOImpl) then) =
      __$$BiddingInfoDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int price, int sellOrders, int buyOrders});
}

/// @nodoc
class __$$BiddingInfoDTOImplCopyWithImpl<$Res>
    extends _$BiddingInfoDTOCopyWithImpl<$Res, _$BiddingInfoDTOImpl>
    implements _$$BiddingInfoDTOImplCopyWith<$Res> {
  __$$BiddingInfoDTOImplCopyWithImpl(
      _$BiddingInfoDTOImpl _value, $Res Function(_$BiddingInfoDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? sellOrders = null,
    Object? buyOrders = null,
  }) {
    return _then(_$BiddingInfoDTOImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      sellOrders: null == sellOrders
          ? _value.sellOrders
          : sellOrders // ignore: cast_nullable_to_non_nullable
              as int,
      buyOrders: null == buyOrders
          ? _value.buyOrders
          : buyOrders // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiddingInfoDTOImpl implements _BiddingInfoDTO {
  const _$BiddingInfoDTOImpl(
      {required this.price, required this.sellOrders, required this.buyOrders});

  factory _$BiddingInfoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiddingInfoDTOImplFromJson(json);

  @override
  final int price;
  @override
  final int sellOrders;
  @override
  final int buyOrders;

  @override
  String toString() {
    return 'BiddingInfoDTO(price: $price, sellOrders: $sellOrders, buyOrders: $buyOrders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiddingInfoDTOImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.sellOrders, sellOrders) ||
                other.sellOrders == sellOrders) &&
            (identical(other.buyOrders, buyOrders) ||
                other.buyOrders == buyOrders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, price, sellOrders, buyOrders);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BiddingInfoDTOImplCopyWith<_$BiddingInfoDTOImpl> get copyWith =>
      __$$BiddingInfoDTOImplCopyWithImpl<_$BiddingInfoDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiddingInfoDTOImplToJson(
      this,
    );
  }
}

abstract class _BiddingInfoDTO implements BiddingInfoDTO {
  const factory _BiddingInfoDTO(
      {required final int price,
      required final int sellOrders,
      required final int buyOrders}) = _$BiddingInfoDTOImpl;

  factory _BiddingInfoDTO.fromJson(Map<String, dynamic> json) =
      _$BiddingInfoDTOImpl.fromJson;

  @override
  int get price;
  @override
  int get sellOrders;
  @override
  int get buyOrders;
  @override
  @JsonKey(ignore: true)
  _$$BiddingInfoDTOImplCopyWith<_$BiddingInfoDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MarketPriceInfoDTO _$MarketPriceInfoDTOFromJson(Map<String, dynamic> json) {
  return _MarketPriceInfoDTO.fromJson(json);
}

/// @nodoc
mixin _$MarketPriceInfoDTO {
  List<int> get priceHistory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketPriceInfoDTOCopyWith<MarketPriceInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketPriceInfoDTOCopyWith<$Res> {
  factory $MarketPriceInfoDTOCopyWith(
          MarketPriceInfoDTO value, $Res Function(MarketPriceInfoDTO) then) =
      _$MarketPriceInfoDTOCopyWithImpl<$Res, MarketPriceInfoDTO>;
  @useResult
  $Res call({List<int> priceHistory});
}

/// @nodoc
class _$MarketPriceInfoDTOCopyWithImpl<$Res, $Val extends MarketPriceInfoDTO>
    implements $MarketPriceInfoDTOCopyWith<$Res> {
  _$MarketPriceInfoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceHistory = null,
  }) {
    return _then(_value.copyWith(
      priceHistory: null == priceHistory
          ? _value.priceHistory
          : priceHistory // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketPriceInfoDTOImplCopyWith<$Res>
    implements $MarketPriceInfoDTOCopyWith<$Res> {
  factory _$$MarketPriceInfoDTOImplCopyWith(_$MarketPriceInfoDTOImpl value,
          $Res Function(_$MarketPriceInfoDTOImpl) then) =
      __$$MarketPriceInfoDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> priceHistory});
}

/// @nodoc
class __$$MarketPriceInfoDTOImplCopyWithImpl<$Res>
    extends _$MarketPriceInfoDTOCopyWithImpl<$Res, _$MarketPriceInfoDTOImpl>
    implements _$$MarketPriceInfoDTOImplCopyWith<$Res> {
  __$$MarketPriceInfoDTOImplCopyWithImpl(_$MarketPriceInfoDTOImpl _value,
      $Res Function(_$MarketPriceInfoDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceHistory = null,
  }) {
    return _then(_$MarketPriceInfoDTOImpl(
      priceHistory: null == priceHistory
          ? _value._priceHistory
          : priceHistory // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketPriceInfoDTOImpl implements _MarketPriceInfoDTO {
  const _$MarketPriceInfoDTOImpl({required final List<int> priceHistory})
      : _priceHistory = priceHistory;

  factory _$MarketPriceInfoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketPriceInfoDTOImplFromJson(json);

  final List<int> _priceHistory;
  @override
  List<int> get priceHistory {
    if (_priceHistory is EqualUnmodifiableListView) return _priceHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_priceHistory);
  }

  @override
  String toString() {
    return 'MarketPriceInfoDTO(priceHistory: $priceHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketPriceInfoDTOImpl &&
            const DeepCollectionEquality()
                .equals(other._priceHistory, _priceHistory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_priceHistory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketPriceInfoDTOImplCopyWith<_$MarketPriceInfoDTOImpl> get copyWith =>
      __$$MarketPriceInfoDTOImplCopyWithImpl<_$MarketPriceInfoDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketPriceInfoDTOImplToJson(
      this,
    );
  }
}

abstract class _MarketPriceInfoDTO implements MarketPriceInfoDTO {
  const factory _MarketPriceInfoDTO({required final List<int> priceHistory}) =
      _$MarketPriceInfoDTOImpl;

  factory _MarketPriceInfoDTO.fromJson(Map<String, dynamic> json) =
      _$MarketPriceInfoDTOImpl.fromJson;

  @override
  List<int> get priceHistory;
  @override
  @JsonKey(ignore: true)
  _$$MarketPriceInfoDTOImplCopyWith<_$MarketPriceInfoDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WaitListItemDTO _$WaitListItemDTOFromJson(Map<String, dynamic> json) {
  return _WaitListItemDTO.fromJson(json);
}

/// @nodoc
mixin _$WaitListItemDTO {
  int get itemId => throw _privateConstructorUsedError;
  int get enhancementLevel => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WaitListItemDTOCopyWith<WaitListItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaitListItemDTOCopyWith<$Res> {
  factory $WaitListItemDTOCopyWith(
          WaitListItemDTO value, $Res Function(WaitListItemDTO) then) =
      _$WaitListItemDTOCopyWithImpl<$Res, WaitListItemDTO>;
  @useResult
  $Res call({int itemId, int enhancementLevel, int price, int timestamp});
}

/// @nodoc
class _$WaitListItemDTOCopyWithImpl<$Res, $Val extends WaitListItemDTO>
    implements $WaitListItemDTOCopyWith<$Res> {
  _$WaitListItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? enhancementLevel = null,
    Object? price = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      enhancementLevel: null == enhancementLevel
          ? _value.enhancementLevel
          : enhancementLevel // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WaitListItemDTOImplCopyWith<$Res>
    implements $WaitListItemDTOCopyWith<$Res> {
  factory _$$WaitListItemDTOImplCopyWith(_$WaitListItemDTOImpl value,
          $Res Function(_$WaitListItemDTOImpl) then) =
      __$$WaitListItemDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int itemId, int enhancementLevel, int price, int timestamp});
}

/// @nodoc
class __$$WaitListItemDTOImplCopyWithImpl<$Res>
    extends _$WaitListItemDTOCopyWithImpl<$Res, _$WaitListItemDTOImpl>
    implements _$$WaitListItemDTOImplCopyWith<$Res> {
  __$$WaitListItemDTOImplCopyWithImpl(
      _$WaitListItemDTOImpl _value, $Res Function(_$WaitListItemDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? enhancementLevel = null,
    Object? price = null,
    Object? timestamp = null,
  }) {
    return _then(_$WaitListItemDTOImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      enhancementLevel: null == enhancementLevel
          ? _value.enhancementLevel
          : enhancementLevel // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WaitListItemDTOImpl implements _WaitListItemDTO {
  const _$WaitListItemDTOImpl(
      {required this.itemId,
      required this.enhancementLevel,
      required this.price,
      required this.timestamp});

  factory _$WaitListItemDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$WaitListItemDTOImplFromJson(json);

  @override
  final int itemId;
  @override
  final int enhancementLevel;
  @override
  final int price;
  @override
  final int timestamp;

  @override
  String toString() {
    return 'WaitListItemDTO(itemId: $itemId, enhancementLevel: $enhancementLevel, price: $price, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaitListItemDTOImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.enhancementLevel, enhancementLevel) ||
                other.enhancementLevel == enhancementLevel) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, itemId, enhancementLevel, price, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WaitListItemDTOImplCopyWith<_$WaitListItemDTOImpl> get copyWith =>
      __$$WaitListItemDTOImplCopyWithImpl<_$WaitListItemDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaitListItemDTOImplToJson(
      this,
    );
  }
}

abstract class _WaitListItemDTO implements WaitListItemDTO {
  const factory _WaitListItemDTO(
      {required final int itemId,
      required final int enhancementLevel,
      required final int price,
      required final int timestamp}) = _$WaitListItemDTOImpl;

  factory _WaitListItemDTO.fromJson(Map<String, dynamic> json) =
      _$WaitListItemDTOImpl.fromJson;

  @override
  int get itemId;
  @override
  int get enhancementLevel;
  @override
  int get price;
  @override
  int get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$WaitListItemDTOImplCopyWith<_$WaitListItemDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
