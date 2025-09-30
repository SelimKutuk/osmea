// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_single_cart_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditSingleCartItemResponse _$EditSingleCartItemResponseFromJson(
    Map<String, dynamic> json) {
  return _EditSingleCartItemResponse.fromJson(json);
}

/// @nodoc
mixin _$EditSingleCartItemResponse {
  @JsonKey(name: "key")
  String? get key => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity_limits")
  QuantityLimits? get quantityLimits => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "short_description")
  String? get shortDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "sku")
  String? get sku => throw _privateConstructorUsedError;
  @JsonKey(name: "low_stock_remaining")
  dynamic get lowStockRemaining => throw _privateConstructorUsedError;
  @JsonKey(name: "backorders_allowed")
  bool? get backordersAllowed => throw _privateConstructorUsedError;
  @JsonKey(name: "show_backorder_badge")
  bool? get showBackorderBadge => throw _privateConstructorUsedError;
  @JsonKey(name: "sold_individually")
  bool? get soldIndividually => throw _privateConstructorUsedError;
  @JsonKey(name: "permalink")
  String? get permalink => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<dynamic>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "variation")
  List<dynamic>? get variation => throw _privateConstructorUsedError;
  @JsonKey(name: "item_data")
  List<dynamic>? get itemData => throw _privateConstructorUsedError;
  @JsonKey(name: "prices")
  Prices? get prices => throw _privateConstructorUsedError;
  @JsonKey(name: "totals")
  Totals? get totals => throw _privateConstructorUsedError;
  @JsonKey(name: "catalog_visibility")
  String? get catalogVisibility => throw _privateConstructorUsedError;
  @JsonKey(name: "extensions")
  Extensions? get extensions => throw _privateConstructorUsedError;
  @JsonKey(name: "_links")
  Links? get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditSingleCartItemResponseCopyWith<EditSingleCartItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditSingleCartItemResponseCopyWith<$Res> {
  factory $EditSingleCartItemResponseCopyWith(EditSingleCartItemResponse value,
          $Res Function(EditSingleCartItemResponse) then) =
      _$EditSingleCartItemResponseCopyWithImpl<$Res,
          EditSingleCartItemResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "key") String? key,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "quantity_limits") QuantityLimits? quantityLimits,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "short_description") String? shortDescription,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "sku") String? sku,
      @JsonKey(name: "low_stock_remaining") dynamic lowStockRemaining,
      @JsonKey(name: "backorders_allowed") bool? backordersAllowed,
      @JsonKey(name: "show_backorder_badge") bool? showBackorderBadge,
      @JsonKey(name: "sold_individually") bool? soldIndividually,
      @JsonKey(name: "permalink") String? permalink,
      @JsonKey(name: "images") List<dynamic>? images,
      @JsonKey(name: "variation") List<dynamic>? variation,
      @JsonKey(name: "item_data") List<dynamic>? itemData,
      @JsonKey(name: "prices") Prices? prices,
      @JsonKey(name: "totals") Totals? totals,
      @JsonKey(name: "catalog_visibility") String? catalogVisibility,
      @JsonKey(name: "extensions") Extensions? extensions,
      @JsonKey(name: "_links") Links? links});

  $QuantityLimitsCopyWith<$Res>? get quantityLimits;
  $PricesCopyWith<$Res>? get prices;
  $TotalsCopyWith<$Res>? get totals;
  $ExtensionsCopyWith<$Res>? get extensions;
  $LinksCopyWith<$Res>? get links;
}

/// @nodoc
class _$EditSingleCartItemResponseCopyWithImpl<$Res,
        $Val extends EditSingleCartItemResponse>
    implements $EditSingleCartItemResponseCopyWith<$Res> {
  _$EditSingleCartItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? quantity = freezed,
    Object? quantityLimits = freezed,
    Object? name = freezed,
    Object? shortDescription = freezed,
    Object? description = freezed,
    Object? sku = freezed,
    Object? lowStockRemaining = freezed,
    Object? backordersAllowed = freezed,
    Object? showBackorderBadge = freezed,
    Object? soldIndividually = freezed,
    Object? permalink = freezed,
    Object? images = freezed,
    Object? variation = freezed,
    Object? itemData = freezed,
    Object? prices = freezed,
    Object? totals = freezed,
    Object? catalogVisibility = freezed,
    Object? extensions = freezed,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      quantityLimits: freezed == quantityLimits
          ? _value.quantityLimits
          : quantityLimits // ignore: cast_nullable_to_non_nullable
              as QuantityLimits?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      lowStockRemaining: freezed == lowStockRemaining
          ? _value.lowStockRemaining
          : lowStockRemaining // ignore: cast_nullable_to_non_nullable
              as dynamic,
      backordersAllowed: freezed == backordersAllowed
          ? _value.backordersAllowed
          : backordersAllowed // ignore: cast_nullable_to_non_nullable
              as bool?,
      showBackorderBadge: freezed == showBackorderBadge
          ? _value.showBackorderBadge
          : showBackorderBadge // ignore: cast_nullable_to_non_nullable
              as bool?,
      soldIndividually: freezed == soldIndividually
          ? _value.soldIndividually
          : soldIndividually // ignore: cast_nullable_to_non_nullable
              as bool?,
      permalink: freezed == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      variation: freezed == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      itemData: freezed == itemData
          ? _value.itemData
          : itemData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      prices: freezed == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as Prices?,
      totals: freezed == totals
          ? _value.totals
          : totals // ignore: cast_nullable_to_non_nullable
              as Totals?,
      catalogVisibility: freezed == catalogVisibility
          ? _value.catalogVisibility
          : catalogVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
      extensions: freezed == extensions
          ? _value.extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as Extensions?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityLimitsCopyWith<$Res>? get quantityLimits {
    if (_value.quantityLimits == null) {
      return null;
    }

    return $QuantityLimitsCopyWith<$Res>(_value.quantityLimits!, (value) {
      return _then(_value.copyWith(quantityLimits: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PricesCopyWith<$Res>? get prices {
    if (_value.prices == null) {
      return null;
    }

    return $PricesCopyWith<$Res>(_value.prices!, (value) {
      return _then(_value.copyWith(prices: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TotalsCopyWith<$Res>? get totals {
    if (_value.totals == null) {
      return null;
    }

    return $TotalsCopyWith<$Res>(_value.totals!, (value) {
      return _then(_value.copyWith(totals: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExtensionsCopyWith<$Res>? get extensions {
    if (_value.extensions == null) {
      return null;
    }

    return $ExtensionsCopyWith<$Res>(_value.extensions!, (value) {
      return _then(_value.copyWith(extensions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $LinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditSingleCartItemResponseImplCopyWith<$Res>
    implements $EditSingleCartItemResponseCopyWith<$Res> {
  factory _$$EditSingleCartItemResponseImplCopyWith(
          _$EditSingleCartItemResponseImpl value,
          $Res Function(_$EditSingleCartItemResponseImpl) then) =
      __$$EditSingleCartItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "key") String? key,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "quantity_limits") QuantityLimits? quantityLimits,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "short_description") String? shortDescription,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "sku") String? sku,
      @JsonKey(name: "low_stock_remaining") dynamic lowStockRemaining,
      @JsonKey(name: "backorders_allowed") bool? backordersAllowed,
      @JsonKey(name: "show_backorder_badge") bool? showBackorderBadge,
      @JsonKey(name: "sold_individually") bool? soldIndividually,
      @JsonKey(name: "permalink") String? permalink,
      @JsonKey(name: "images") List<dynamic>? images,
      @JsonKey(name: "variation") List<dynamic>? variation,
      @JsonKey(name: "item_data") List<dynamic>? itemData,
      @JsonKey(name: "prices") Prices? prices,
      @JsonKey(name: "totals") Totals? totals,
      @JsonKey(name: "catalog_visibility") String? catalogVisibility,
      @JsonKey(name: "extensions") Extensions? extensions,
      @JsonKey(name: "_links") Links? links});

  @override
  $QuantityLimitsCopyWith<$Res>? get quantityLimits;
  @override
  $PricesCopyWith<$Res>? get prices;
  @override
  $TotalsCopyWith<$Res>? get totals;
  @override
  $ExtensionsCopyWith<$Res>? get extensions;
  @override
  $LinksCopyWith<$Res>? get links;
}

/// @nodoc
class __$$EditSingleCartItemResponseImplCopyWithImpl<$Res>
    extends _$EditSingleCartItemResponseCopyWithImpl<$Res,
        _$EditSingleCartItemResponseImpl>
    implements _$$EditSingleCartItemResponseImplCopyWith<$Res> {
  __$$EditSingleCartItemResponseImplCopyWithImpl(
      _$EditSingleCartItemResponseImpl _value,
      $Res Function(_$EditSingleCartItemResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? quantity = freezed,
    Object? quantityLimits = freezed,
    Object? name = freezed,
    Object? shortDescription = freezed,
    Object? description = freezed,
    Object? sku = freezed,
    Object? lowStockRemaining = freezed,
    Object? backordersAllowed = freezed,
    Object? showBackorderBadge = freezed,
    Object? soldIndividually = freezed,
    Object? permalink = freezed,
    Object? images = freezed,
    Object? variation = freezed,
    Object? itemData = freezed,
    Object? prices = freezed,
    Object? totals = freezed,
    Object? catalogVisibility = freezed,
    Object? extensions = freezed,
    Object? links = freezed,
  }) {
    return _then(_$EditSingleCartItemResponseImpl(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      quantityLimits: freezed == quantityLimits
          ? _value.quantityLimits
          : quantityLimits // ignore: cast_nullable_to_non_nullable
              as QuantityLimits?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      lowStockRemaining: freezed == lowStockRemaining
          ? _value.lowStockRemaining
          : lowStockRemaining // ignore: cast_nullable_to_non_nullable
              as dynamic,
      backordersAllowed: freezed == backordersAllowed
          ? _value.backordersAllowed
          : backordersAllowed // ignore: cast_nullable_to_non_nullable
              as bool?,
      showBackorderBadge: freezed == showBackorderBadge
          ? _value.showBackorderBadge
          : showBackorderBadge // ignore: cast_nullable_to_non_nullable
              as bool?,
      soldIndividually: freezed == soldIndividually
          ? _value.soldIndividually
          : soldIndividually // ignore: cast_nullable_to_non_nullable
              as bool?,
      permalink: freezed == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      variation: freezed == variation
          ? _value._variation
          : variation // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      itemData: freezed == itemData
          ? _value._itemData
          : itemData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      prices: freezed == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as Prices?,
      totals: freezed == totals
          ? _value.totals
          : totals // ignore: cast_nullable_to_non_nullable
              as Totals?,
      catalogVisibility: freezed == catalogVisibility
          ? _value.catalogVisibility
          : catalogVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
      extensions: freezed == extensions
          ? _value.extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as Extensions?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditSingleCartItemResponseImpl implements _EditSingleCartItemResponse {
  const _$EditSingleCartItemResponseImpl(
      {@JsonKey(name: "key") this.key,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "quantity") this.quantity,
      @JsonKey(name: "quantity_limits") this.quantityLimits,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "short_description") this.shortDescription,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "sku") this.sku,
      @JsonKey(name: "low_stock_remaining") this.lowStockRemaining,
      @JsonKey(name: "backorders_allowed") this.backordersAllowed,
      @JsonKey(name: "show_backorder_badge") this.showBackorderBadge,
      @JsonKey(name: "sold_individually") this.soldIndividually,
      @JsonKey(name: "permalink") this.permalink,
      @JsonKey(name: "images") final List<dynamic>? images,
      @JsonKey(name: "variation") final List<dynamic>? variation,
      @JsonKey(name: "item_data") final List<dynamic>? itemData,
      @JsonKey(name: "prices") this.prices,
      @JsonKey(name: "totals") this.totals,
      @JsonKey(name: "catalog_visibility") this.catalogVisibility,
      @JsonKey(name: "extensions") this.extensions,
      @JsonKey(name: "_links") this.links})
      : _images = images,
        _variation = variation,
        _itemData = itemData;

  factory _$EditSingleCartItemResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EditSingleCartItemResponseImplFromJson(json);

  @override
  @JsonKey(name: "key")
  final String? key;
  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "quantity")
  final int? quantity;
  @override
  @JsonKey(name: "quantity_limits")
  final QuantityLimits? quantityLimits;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "short_description")
  final String? shortDescription;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "sku")
  final String? sku;
  @override
  @JsonKey(name: "low_stock_remaining")
  final dynamic lowStockRemaining;
  @override
  @JsonKey(name: "backorders_allowed")
  final bool? backordersAllowed;
  @override
  @JsonKey(name: "show_backorder_badge")
  final bool? showBackorderBadge;
  @override
  @JsonKey(name: "sold_individually")
  final bool? soldIndividually;
  @override
  @JsonKey(name: "permalink")
  final String? permalink;
  final List<dynamic>? _images;
  @override
  @JsonKey(name: "images")
  List<dynamic>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _variation;
  @override
  @JsonKey(name: "variation")
  List<dynamic>? get variation {
    final value = _variation;
    if (value == null) return null;
    if (_variation is EqualUnmodifiableListView) return _variation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _itemData;
  @override
  @JsonKey(name: "item_data")
  List<dynamic>? get itemData {
    final value = _itemData;
    if (value == null) return null;
    if (_itemData is EqualUnmodifiableListView) return _itemData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "prices")
  final Prices? prices;
  @override
  @JsonKey(name: "totals")
  final Totals? totals;
  @override
  @JsonKey(name: "catalog_visibility")
  final String? catalogVisibility;
  @override
  @JsonKey(name: "extensions")
  final Extensions? extensions;
  @override
  @JsonKey(name: "_links")
  final Links? links;

  @override
  String toString() {
    return 'EditSingleCartItemResponse(key: $key, id: $id, type: $type, quantity: $quantity, quantityLimits: $quantityLimits, name: $name, shortDescription: $shortDescription, description: $description, sku: $sku, lowStockRemaining: $lowStockRemaining, backordersAllowed: $backordersAllowed, showBackorderBadge: $showBackorderBadge, soldIndividually: $soldIndividually, permalink: $permalink, images: $images, variation: $variation, itemData: $itemData, prices: $prices, totals: $totals, catalogVisibility: $catalogVisibility, extensions: $extensions, links: $links)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditSingleCartItemResponseImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.quantityLimits, quantityLimits) ||
                other.quantityLimits == quantityLimits) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            const DeepCollectionEquality()
                .equals(other.lowStockRemaining, lowStockRemaining) &&
            (identical(other.backordersAllowed, backordersAllowed) ||
                other.backordersAllowed == backordersAllowed) &&
            (identical(other.showBackorderBadge, showBackorderBadge) ||
                other.showBackorderBadge == showBackorderBadge) &&
            (identical(other.soldIndividually, soldIndividually) ||
                other.soldIndividually == soldIndividually) &&
            (identical(other.permalink, permalink) ||
                other.permalink == permalink) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._variation, _variation) &&
            const DeepCollectionEquality().equals(other._itemData, _itemData) &&
            (identical(other.prices, prices) || other.prices == prices) &&
            (identical(other.totals, totals) || other.totals == totals) &&
            (identical(other.catalogVisibility, catalogVisibility) ||
                other.catalogVisibility == catalogVisibility) &&
            (identical(other.extensions, extensions) ||
                other.extensions == extensions) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        key,
        id,
        type,
        quantity,
        quantityLimits,
        name,
        shortDescription,
        description,
        sku,
        const DeepCollectionEquality().hash(lowStockRemaining),
        backordersAllowed,
        showBackorderBadge,
        soldIndividually,
        permalink,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_variation),
        const DeepCollectionEquality().hash(_itemData),
        prices,
        totals,
        catalogVisibility,
        extensions,
        links
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditSingleCartItemResponseImplCopyWith<_$EditSingleCartItemResponseImpl>
      get copyWith => __$$EditSingleCartItemResponseImplCopyWithImpl<
          _$EditSingleCartItemResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditSingleCartItemResponseImplToJson(
      this,
    );
  }
}

abstract class _EditSingleCartItemResponse
    implements EditSingleCartItemResponse {
  const factory _EditSingleCartItemResponse(
      {@JsonKey(name: "key") final String? key,
      @JsonKey(name: "id") final int? id,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "quantity") final int? quantity,
      @JsonKey(name: "quantity_limits") final QuantityLimits? quantityLimits,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "short_description") final String? shortDescription,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "sku") final String? sku,
      @JsonKey(name: "low_stock_remaining") final dynamic lowStockRemaining,
      @JsonKey(name: "backorders_allowed") final bool? backordersAllowed,
      @JsonKey(name: "show_backorder_badge") final bool? showBackorderBadge,
      @JsonKey(name: "sold_individually") final bool? soldIndividually,
      @JsonKey(name: "permalink") final String? permalink,
      @JsonKey(name: "images") final List<dynamic>? images,
      @JsonKey(name: "variation") final List<dynamic>? variation,
      @JsonKey(name: "item_data") final List<dynamic>? itemData,
      @JsonKey(name: "prices") final Prices? prices,
      @JsonKey(name: "totals") final Totals? totals,
      @JsonKey(name: "catalog_visibility") final String? catalogVisibility,
      @JsonKey(name: "extensions") final Extensions? extensions,
      @JsonKey(name: "_links")
      final Links? links}) = _$EditSingleCartItemResponseImpl;

  factory _EditSingleCartItemResponse.fromJson(Map<String, dynamic> json) =
      _$EditSingleCartItemResponseImpl.fromJson;

  @override
  @JsonKey(name: "key")
  String? get key;
  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "quantity")
  int? get quantity;
  @override
  @JsonKey(name: "quantity_limits")
  QuantityLimits? get quantityLimits;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "short_description")
  String? get shortDescription;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "sku")
  String? get sku;
  @override
  @JsonKey(name: "low_stock_remaining")
  dynamic get lowStockRemaining;
  @override
  @JsonKey(name: "backorders_allowed")
  bool? get backordersAllowed;
  @override
  @JsonKey(name: "show_backorder_badge")
  bool? get showBackorderBadge;
  @override
  @JsonKey(name: "sold_individually")
  bool? get soldIndividually;
  @override
  @JsonKey(name: "permalink")
  String? get permalink;
  @override
  @JsonKey(name: "images")
  List<dynamic>? get images;
  @override
  @JsonKey(name: "variation")
  List<dynamic>? get variation;
  @override
  @JsonKey(name: "item_data")
  List<dynamic>? get itemData;
  @override
  @JsonKey(name: "prices")
  Prices? get prices;
  @override
  @JsonKey(name: "totals")
  Totals? get totals;
  @override
  @JsonKey(name: "catalog_visibility")
  String? get catalogVisibility;
  @override
  @JsonKey(name: "extensions")
  Extensions? get extensions;
  @override
  @JsonKey(name: "_links")
  Links? get links;
  @override
  @JsonKey(ignore: true)
  _$$EditSingleCartItemResponseImplCopyWith<_$EditSingleCartItemResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Extensions _$ExtensionsFromJson(Map<String, dynamic> json) {
  return _Extensions.fromJson(json);
}

/// @nodoc
mixin _$Extensions {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtensionsCopyWith<$Res> {
  factory $ExtensionsCopyWith(
          Extensions value, $Res Function(Extensions) then) =
      _$ExtensionsCopyWithImpl<$Res, Extensions>;
}

/// @nodoc
class _$ExtensionsCopyWithImpl<$Res, $Val extends Extensions>
    implements $ExtensionsCopyWith<$Res> {
  _$ExtensionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ExtensionsImplCopyWith<$Res> {
  factory _$$ExtensionsImplCopyWith(
          _$ExtensionsImpl value, $Res Function(_$ExtensionsImpl) then) =
      __$$ExtensionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExtensionsImplCopyWithImpl<$Res>
    extends _$ExtensionsCopyWithImpl<$Res, _$ExtensionsImpl>
    implements _$$ExtensionsImplCopyWith<$Res> {
  __$$ExtensionsImplCopyWithImpl(
      _$ExtensionsImpl _value, $Res Function(_$ExtensionsImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ExtensionsImpl implements _Extensions {
  const _$ExtensionsImpl();

  factory _$ExtensionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtensionsImplFromJson(json);

  @override
  String toString() {
    return 'Extensions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExtensionsImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtensionsImplToJson(
      this,
    );
  }
}

abstract class _Extensions implements Extensions {
  const factory _Extensions() = _$ExtensionsImpl;

  factory _Extensions.fromJson(Map<String, dynamic> json) =
      _$ExtensionsImpl.fromJson;
}

Links _$LinksFromJson(Map<String, dynamic> json) {
  return _Links.fromJson(json);
}

/// @nodoc
mixin _$Links {
  @JsonKey(name: "self")
  List<Collection>? get self => throw _privateConstructorUsedError;
  @JsonKey(name: "collection")
  List<Collection>? get collection => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksCopyWith<Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksCopyWith<$Res> {
  factory $LinksCopyWith(Links value, $Res Function(Links) then) =
      _$LinksCopyWithImpl<$Res, Links>;
  @useResult
  $Res call(
      {@JsonKey(name: "self") List<Collection>? self,
      @JsonKey(name: "collection") List<Collection>? collection});
}

/// @nodoc
class _$LinksCopyWithImpl<$Res, $Val extends Links>
    implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = freezed,
    Object? collection = freezed,
  }) {
    return _then(_value.copyWith(
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as List<Collection>?,
      collection: freezed == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as List<Collection>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinksImplCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$$LinksImplCopyWith(
          _$LinksImpl value, $Res Function(_$LinksImpl) then) =
      __$$LinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "self") List<Collection>? self,
      @JsonKey(name: "collection") List<Collection>? collection});
}

/// @nodoc
class __$$LinksImplCopyWithImpl<$Res>
    extends _$LinksCopyWithImpl<$Res, _$LinksImpl>
    implements _$$LinksImplCopyWith<$Res> {
  __$$LinksImplCopyWithImpl(
      _$LinksImpl _value, $Res Function(_$LinksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = freezed,
    Object? collection = freezed,
  }) {
    return _then(_$LinksImpl(
      self: freezed == self
          ? _value._self
          : self // ignore: cast_nullable_to_non_nullable
              as List<Collection>?,
      collection: freezed == collection
          ? _value._collection
          : collection // ignore: cast_nullable_to_non_nullable
              as List<Collection>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinksImpl implements _Links {
  const _$LinksImpl(
      {@JsonKey(name: "self") final List<Collection>? self,
      @JsonKey(name: "collection") final List<Collection>? collection})
      : _self = self,
        _collection = collection;

  factory _$LinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinksImplFromJson(json);

  final List<Collection>? _self;
  @override
  @JsonKey(name: "self")
  List<Collection>? get self {
    final value = _self;
    if (value == null) return null;
    if (_self is EqualUnmodifiableListView) return _self;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Collection>? _collection;
  @override
  @JsonKey(name: "collection")
  List<Collection>? get collection {
    final value = _collection;
    if (value == null) return null;
    if (_collection is EqualUnmodifiableListView) return _collection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Links(self: $self, collection: $collection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinksImpl &&
            const DeepCollectionEquality().equals(other._self, _self) &&
            const DeepCollectionEquality()
                .equals(other._collection, _collection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_self),
      const DeepCollectionEquality().hash(_collection));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinksImplCopyWith<_$LinksImpl> get copyWith =>
      __$$LinksImplCopyWithImpl<_$LinksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinksImplToJson(
      this,
    );
  }
}

abstract class _Links implements Links {
  const factory _Links(
          {@JsonKey(name: "self") final List<Collection>? self,
          @JsonKey(name: "collection") final List<Collection>? collection}) =
      _$LinksImpl;

  factory _Links.fromJson(Map<String, dynamic> json) = _$LinksImpl.fromJson;

  @override
  @JsonKey(name: "self")
  List<Collection>? get self;
  @override
  @JsonKey(name: "collection")
  List<Collection>? get collection;
  @override
  @JsonKey(ignore: true)
  _$$LinksImplCopyWith<_$LinksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Collection _$CollectionFromJson(Map<String, dynamic> json) {
  return _Collection.fromJson(json);
}

/// @nodoc
mixin _$Collection {
  @JsonKey(name: "href")
  String? get href => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionCopyWith<Collection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionCopyWith<$Res> {
  factory $CollectionCopyWith(
          Collection value, $Res Function(Collection) then) =
      _$CollectionCopyWithImpl<$Res, Collection>;
  @useResult
  $Res call({@JsonKey(name: "href") String? href});
}

/// @nodoc
class _$CollectionCopyWithImpl<$Res, $Val extends Collection>
    implements $CollectionCopyWith<$Res> {
  _$CollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
  }) {
    return _then(_value.copyWith(
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectionImplCopyWith<$Res>
    implements $CollectionCopyWith<$Res> {
  factory _$$CollectionImplCopyWith(
          _$CollectionImpl value, $Res Function(_$CollectionImpl) then) =
      __$$CollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "href") String? href});
}

/// @nodoc
class __$$CollectionImplCopyWithImpl<$Res>
    extends _$CollectionCopyWithImpl<$Res, _$CollectionImpl>
    implements _$$CollectionImplCopyWith<$Res> {
  __$$CollectionImplCopyWithImpl(
      _$CollectionImpl _value, $Res Function(_$CollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
  }) {
    return _then(_$CollectionImpl(
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionImpl implements _Collection {
  const _$CollectionImpl({@JsonKey(name: "href") this.href});

  factory _$CollectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionImplFromJson(json);

  @override
  @JsonKey(name: "href")
  final String? href;

  @override
  String toString() {
    return 'Collection(href: $href)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionImpl &&
            (identical(other.href, href) || other.href == href));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionImplCopyWith<_$CollectionImpl> get copyWith =>
      __$$CollectionImplCopyWithImpl<_$CollectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionImplToJson(
      this,
    );
  }
}

abstract class _Collection implements Collection {
  const factory _Collection({@JsonKey(name: "href") final String? href}) =
      _$CollectionImpl;

  factory _Collection.fromJson(Map<String, dynamic> json) =
      _$CollectionImpl.fromJson;

  @override
  @JsonKey(name: "href")
  String? get href;
  @override
  @JsonKey(ignore: true)
  _$$CollectionImplCopyWith<_$CollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Prices _$PricesFromJson(Map<String, dynamic> json) {
  return _Prices.fromJson(json);
}

/// @nodoc
mixin _$Prices {
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "regular_price")
  String? get regularPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_price")
  String? get salePrice => throw _privateConstructorUsedError;
  @JsonKey(name: "price_range")
  dynamic get priceRange => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_code")
  String? get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_symbol")
  String? get currencySymbol => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_minor_unit")
  int? get currencyMinorUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_decimal_separator")
  String? get currencyDecimalSeparator => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_thousand_separator")
  String? get currencyThousandSeparator => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_prefix")
  String? get currencyPrefix => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_suffix")
  String? get currencySuffix => throw _privateConstructorUsedError;
  @JsonKey(name: "raw_prices")
  RawPrices? get rawPrices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PricesCopyWith<Prices> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricesCopyWith<$Res> {
  factory $PricesCopyWith(Prices value, $Res Function(Prices) then) =
      _$PricesCopyWithImpl<$Res, Prices>;
  @useResult
  $Res call(
      {@JsonKey(name: "price") String? price,
      @JsonKey(name: "regular_price") String? regularPrice,
      @JsonKey(name: "sale_price") String? salePrice,
      @JsonKey(name: "price_range") dynamic priceRange,
      @JsonKey(name: "currency_code") String? currencyCode,
      @JsonKey(name: "currency_symbol") String? currencySymbol,
      @JsonKey(name: "currency_minor_unit") int? currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      String? currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      String? currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") String? currencyPrefix,
      @JsonKey(name: "currency_suffix") String? currencySuffix,
      @JsonKey(name: "raw_prices") RawPrices? rawPrices});

  $RawPricesCopyWith<$Res>? get rawPrices;
}

/// @nodoc
class _$PricesCopyWithImpl<$Res, $Val extends Prices>
    implements $PricesCopyWith<$Res> {
  _$PricesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? regularPrice = freezed,
    Object? salePrice = freezed,
    Object? priceRange = freezed,
    Object? currencyCode = freezed,
    Object? currencySymbol = freezed,
    Object? currencyMinorUnit = freezed,
    Object? currencyDecimalSeparator = freezed,
    Object? currencyThousandSeparator = freezed,
    Object? currencyPrefix = freezed,
    Object? currencySuffix = freezed,
    Object? rawPrices = freezed,
  }) {
    return _then(_value.copyWith(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      regularPrice: freezed == regularPrice
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      priceRange: freezed == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyMinorUnit: freezed == currencyMinorUnit
          ? _value.currencyMinorUnit
          : currencyMinorUnit // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyDecimalSeparator: freezed == currencyDecimalSeparator
          ? _value.currencyDecimalSeparator
          : currencyDecimalSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyThousandSeparator: freezed == currencyThousandSeparator
          ? _value.currencyThousandSeparator
          : currencyThousandSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyPrefix: freezed == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySuffix: freezed == currencySuffix
          ? _value.currencySuffix
          : currencySuffix // ignore: cast_nullable_to_non_nullable
              as String?,
      rawPrices: freezed == rawPrices
          ? _value.rawPrices
          : rawPrices // ignore: cast_nullable_to_non_nullable
              as RawPrices?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RawPricesCopyWith<$Res>? get rawPrices {
    if (_value.rawPrices == null) {
      return null;
    }

    return $RawPricesCopyWith<$Res>(_value.rawPrices!, (value) {
      return _then(_value.copyWith(rawPrices: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PricesImplCopyWith<$Res> implements $PricesCopyWith<$Res> {
  factory _$$PricesImplCopyWith(
          _$PricesImpl value, $Res Function(_$PricesImpl) then) =
      __$$PricesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "price") String? price,
      @JsonKey(name: "regular_price") String? regularPrice,
      @JsonKey(name: "sale_price") String? salePrice,
      @JsonKey(name: "price_range") dynamic priceRange,
      @JsonKey(name: "currency_code") String? currencyCode,
      @JsonKey(name: "currency_symbol") String? currencySymbol,
      @JsonKey(name: "currency_minor_unit") int? currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      String? currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      String? currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") String? currencyPrefix,
      @JsonKey(name: "currency_suffix") String? currencySuffix,
      @JsonKey(name: "raw_prices") RawPrices? rawPrices});

  @override
  $RawPricesCopyWith<$Res>? get rawPrices;
}

/// @nodoc
class __$$PricesImplCopyWithImpl<$Res>
    extends _$PricesCopyWithImpl<$Res, _$PricesImpl>
    implements _$$PricesImplCopyWith<$Res> {
  __$$PricesImplCopyWithImpl(
      _$PricesImpl _value, $Res Function(_$PricesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? regularPrice = freezed,
    Object? salePrice = freezed,
    Object? priceRange = freezed,
    Object? currencyCode = freezed,
    Object? currencySymbol = freezed,
    Object? currencyMinorUnit = freezed,
    Object? currencyDecimalSeparator = freezed,
    Object? currencyThousandSeparator = freezed,
    Object? currencyPrefix = freezed,
    Object? currencySuffix = freezed,
    Object? rawPrices = freezed,
  }) {
    return _then(_$PricesImpl(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      regularPrice: freezed == regularPrice
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      priceRange: freezed == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyMinorUnit: freezed == currencyMinorUnit
          ? _value.currencyMinorUnit
          : currencyMinorUnit // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyDecimalSeparator: freezed == currencyDecimalSeparator
          ? _value.currencyDecimalSeparator
          : currencyDecimalSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyThousandSeparator: freezed == currencyThousandSeparator
          ? _value.currencyThousandSeparator
          : currencyThousandSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyPrefix: freezed == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySuffix: freezed == currencySuffix
          ? _value.currencySuffix
          : currencySuffix // ignore: cast_nullable_to_non_nullable
              as String?,
      rawPrices: freezed == rawPrices
          ? _value.rawPrices
          : rawPrices // ignore: cast_nullable_to_non_nullable
              as RawPrices?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PricesImpl implements _Prices {
  const _$PricesImpl(
      {@JsonKey(name: "price") this.price,
      @JsonKey(name: "regular_price") this.regularPrice,
      @JsonKey(name: "sale_price") this.salePrice,
      @JsonKey(name: "price_range") this.priceRange,
      @JsonKey(name: "currency_code") this.currencyCode,
      @JsonKey(name: "currency_symbol") this.currencySymbol,
      @JsonKey(name: "currency_minor_unit") this.currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      this.currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      this.currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") this.currencyPrefix,
      @JsonKey(name: "currency_suffix") this.currencySuffix,
      @JsonKey(name: "raw_prices") this.rawPrices});

  factory _$PricesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PricesImplFromJson(json);

  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  @JsonKey(name: "regular_price")
  final String? regularPrice;
  @override
  @JsonKey(name: "sale_price")
  final String? salePrice;
  @override
  @JsonKey(name: "price_range")
  final dynamic priceRange;
  @override
  @JsonKey(name: "currency_code")
  final String? currencyCode;
  @override
  @JsonKey(name: "currency_symbol")
  final String? currencySymbol;
  @override
  @JsonKey(name: "currency_minor_unit")
  final int? currencyMinorUnit;
  @override
  @JsonKey(name: "currency_decimal_separator")
  final String? currencyDecimalSeparator;
  @override
  @JsonKey(name: "currency_thousand_separator")
  final String? currencyThousandSeparator;
  @override
  @JsonKey(name: "currency_prefix")
  final String? currencyPrefix;
  @override
  @JsonKey(name: "currency_suffix")
  final String? currencySuffix;
  @override
  @JsonKey(name: "raw_prices")
  final RawPrices? rawPrices;

  @override
  String toString() {
    return 'Prices(price: $price, regularPrice: $regularPrice, salePrice: $salePrice, priceRange: $priceRange, currencyCode: $currencyCode, currencySymbol: $currencySymbol, currencyMinorUnit: $currencyMinorUnit, currencyDecimalSeparator: $currencyDecimalSeparator, currencyThousandSeparator: $currencyThousandSeparator, currencyPrefix: $currencyPrefix, currencySuffix: $currencySuffix, rawPrices: $rawPrices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PricesImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.regularPrice, regularPrice) ||
                other.regularPrice == regularPrice) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            const DeepCollectionEquality()
                .equals(other.priceRange, priceRange) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.currencyMinorUnit, currencyMinorUnit) ||
                other.currencyMinorUnit == currencyMinorUnit) &&
            (identical(
                    other.currencyDecimalSeparator, currencyDecimalSeparator) ||
                other.currencyDecimalSeparator == currencyDecimalSeparator) &&
            (identical(other.currencyThousandSeparator,
                    currencyThousandSeparator) ||
                other.currencyThousandSeparator == currencyThousandSeparator) &&
            (identical(other.currencyPrefix, currencyPrefix) ||
                other.currencyPrefix == currencyPrefix) &&
            (identical(other.currencySuffix, currencySuffix) ||
                other.currencySuffix == currencySuffix) &&
            (identical(other.rawPrices, rawPrices) ||
                other.rawPrices == rawPrices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      price,
      regularPrice,
      salePrice,
      const DeepCollectionEquality().hash(priceRange),
      currencyCode,
      currencySymbol,
      currencyMinorUnit,
      currencyDecimalSeparator,
      currencyThousandSeparator,
      currencyPrefix,
      currencySuffix,
      rawPrices);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PricesImplCopyWith<_$PricesImpl> get copyWith =>
      __$$PricesImplCopyWithImpl<_$PricesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PricesImplToJson(
      this,
    );
  }
}

abstract class _Prices implements Prices {
  const factory _Prices(
      {@JsonKey(name: "price") final String? price,
      @JsonKey(name: "regular_price") final String? regularPrice,
      @JsonKey(name: "sale_price") final String? salePrice,
      @JsonKey(name: "price_range") final dynamic priceRange,
      @JsonKey(name: "currency_code") final String? currencyCode,
      @JsonKey(name: "currency_symbol") final String? currencySymbol,
      @JsonKey(name: "currency_minor_unit") final int? currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      final String? currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      final String? currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") final String? currencyPrefix,
      @JsonKey(name: "currency_suffix") final String? currencySuffix,
      @JsonKey(name: "raw_prices") final RawPrices? rawPrices}) = _$PricesImpl;

  factory _Prices.fromJson(Map<String, dynamic> json) = _$PricesImpl.fromJson;

  @override
  @JsonKey(name: "price")
  String? get price;
  @override
  @JsonKey(name: "regular_price")
  String? get regularPrice;
  @override
  @JsonKey(name: "sale_price")
  String? get salePrice;
  @override
  @JsonKey(name: "price_range")
  dynamic get priceRange;
  @override
  @JsonKey(name: "currency_code")
  String? get currencyCode;
  @override
  @JsonKey(name: "currency_symbol")
  String? get currencySymbol;
  @override
  @JsonKey(name: "currency_minor_unit")
  int? get currencyMinorUnit;
  @override
  @JsonKey(name: "currency_decimal_separator")
  String? get currencyDecimalSeparator;
  @override
  @JsonKey(name: "currency_thousand_separator")
  String? get currencyThousandSeparator;
  @override
  @JsonKey(name: "currency_prefix")
  String? get currencyPrefix;
  @override
  @JsonKey(name: "currency_suffix")
  String? get currencySuffix;
  @override
  @JsonKey(name: "raw_prices")
  RawPrices? get rawPrices;
  @override
  @JsonKey(ignore: true)
  _$$PricesImplCopyWith<_$PricesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RawPrices _$RawPricesFromJson(Map<String, dynamic> json) {
  return _RawPrices.fromJson(json);
}

/// @nodoc
mixin _$RawPrices {
  @JsonKey(name: "precision")
  int? get precision => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "regular_price")
  String? get regularPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_price")
  String? get salePrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RawPricesCopyWith<RawPrices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RawPricesCopyWith<$Res> {
  factory $RawPricesCopyWith(RawPrices value, $Res Function(RawPrices) then) =
      _$RawPricesCopyWithImpl<$Res, RawPrices>;
  @useResult
  $Res call(
      {@JsonKey(name: "precision") int? precision,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "regular_price") String? regularPrice,
      @JsonKey(name: "sale_price") String? salePrice});
}

/// @nodoc
class _$RawPricesCopyWithImpl<$Res, $Val extends RawPrices>
    implements $RawPricesCopyWith<$Res> {
  _$RawPricesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? precision = freezed,
    Object? price = freezed,
    Object? regularPrice = freezed,
    Object? salePrice = freezed,
  }) {
    return _then(_value.copyWith(
      precision: freezed == precision
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      regularPrice: freezed == regularPrice
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RawPricesImplCopyWith<$Res>
    implements $RawPricesCopyWith<$Res> {
  factory _$$RawPricesImplCopyWith(
          _$RawPricesImpl value, $Res Function(_$RawPricesImpl) then) =
      __$$RawPricesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "precision") int? precision,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "regular_price") String? regularPrice,
      @JsonKey(name: "sale_price") String? salePrice});
}

/// @nodoc
class __$$RawPricesImplCopyWithImpl<$Res>
    extends _$RawPricesCopyWithImpl<$Res, _$RawPricesImpl>
    implements _$$RawPricesImplCopyWith<$Res> {
  __$$RawPricesImplCopyWithImpl(
      _$RawPricesImpl _value, $Res Function(_$RawPricesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? precision = freezed,
    Object? price = freezed,
    Object? regularPrice = freezed,
    Object? salePrice = freezed,
  }) {
    return _then(_$RawPricesImpl(
      precision: freezed == precision
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      regularPrice: freezed == regularPrice
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RawPricesImpl implements _RawPrices {
  const _$RawPricesImpl(
      {@JsonKey(name: "precision") this.precision,
      @JsonKey(name: "price") this.price,
      @JsonKey(name: "regular_price") this.regularPrice,
      @JsonKey(name: "sale_price") this.salePrice});

  factory _$RawPricesImpl.fromJson(Map<String, dynamic> json) =>
      _$$RawPricesImplFromJson(json);

  @override
  @JsonKey(name: "precision")
  final int? precision;
  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  @JsonKey(name: "regular_price")
  final String? regularPrice;
  @override
  @JsonKey(name: "sale_price")
  final String? salePrice;

  @override
  String toString() {
    return 'RawPrices(precision: $precision, price: $price, regularPrice: $regularPrice, salePrice: $salePrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RawPricesImpl &&
            (identical(other.precision, precision) ||
                other.precision == precision) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.regularPrice, regularPrice) ||
                other.regularPrice == regularPrice) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, precision, price, regularPrice, salePrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RawPricesImplCopyWith<_$RawPricesImpl> get copyWith =>
      __$$RawPricesImplCopyWithImpl<_$RawPricesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RawPricesImplToJson(
      this,
    );
  }
}

abstract class _RawPrices implements RawPrices {
  const factory _RawPrices(
      {@JsonKey(name: "precision") final int? precision,
      @JsonKey(name: "price") final String? price,
      @JsonKey(name: "regular_price") final String? regularPrice,
      @JsonKey(name: "sale_price") final String? salePrice}) = _$RawPricesImpl;

  factory _RawPrices.fromJson(Map<String, dynamic> json) =
      _$RawPricesImpl.fromJson;

  @override
  @JsonKey(name: "precision")
  int? get precision;
  @override
  @JsonKey(name: "price")
  String? get price;
  @override
  @JsonKey(name: "regular_price")
  String? get regularPrice;
  @override
  @JsonKey(name: "sale_price")
  String? get salePrice;
  @override
  @JsonKey(ignore: true)
  _$$RawPricesImplCopyWith<_$RawPricesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuantityLimits _$QuantityLimitsFromJson(Map<String, dynamic> json) {
  return _QuantityLimits.fromJson(json);
}

/// @nodoc
mixin _$QuantityLimits {
  @JsonKey(name: "minimum")
  int? get minimum => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum")
  int? get maximum => throw _privateConstructorUsedError;
  @JsonKey(name: "multiple_of")
  int? get multipleOf => throw _privateConstructorUsedError;
  @JsonKey(name: "editable")
  bool? get editable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuantityLimitsCopyWith<QuantityLimits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuantityLimitsCopyWith<$Res> {
  factory $QuantityLimitsCopyWith(
          QuantityLimits value, $Res Function(QuantityLimits) then) =
      _$QuantityLimitsCopyWithImpl<$Res, QuantityLimits>;
  @useResult
  $Res call(
      {@JsonKey(name: "minimum") int? minimum,
      @JsonKey(name: "maximum") int? maximum,
      @JsonKey(name: "multiple_of") int? multipleOf,
      @JsonKey(name: "editable") bool? editable});
}

/// @nodoc
class _$QuantityLimitsCopyWithImpl<$Res, $Val extends QuantityLimits>
    implements $QuantityLimitsCopyWith<$Res> {
  _$QuantityLimitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minimum = freezed,
    Object? maximum = freezed,
    Object? multipleOf = freezed,
    Object? editable = freezed,
  }) {
    return _then(_value.copyWith(
      minimum: freezed == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as int?,
      maximum: freezed == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as int?,
      multipleOf: freezed == multipleOf
          ? _value.multipleOf
          : multipleOf // ignore: cast_nullable_to_non_nullable
              as int?,
      editable: freezed == editable
          ? _value.editable
          : editable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuantityLimitsImplCopyWith<$Res>
    implements $QuantityLimitsCopyWith<$Res> {
  factory _$$QuantityLimitsImplCopyWith(_$QuantityLimitsImpl value,
          $Res Function(_$QuantityLimitsImpl) then) =
      __$$QuantityLimitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "minimum") int? minimum,
      @JsonKey(name: "maximum") int? maximum,
      @JsonKey(name: "multiple_of") int? multipleOf,
      @JsonKey(name: "editable") bool? editable});
}

/// @nodoc
class __$$QuantityLimitsImplCopyWithImpl<$Res>
    extends _$QuantityLimitsCopyWithImpl<$Res, _$QuantityLimitsImpl>
    implements _$$QuantityLimitsImplCopyWith<$Res> {
  __$$QuantityLimitsImplCopyWithImpl(
      _$QuantityLimitsImpl _value, $Res Function(_$QuantityLimitsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minimum = freezed,
    Object? maximum = freezed,
    Object? multipleOf = freezed,
    Object? editable = freezed,
  }) {
    return _then(_$QuantityLimitsImpl(
      minimum: freezed == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as int?,
      maximum: freezed == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as int?,
      multipleOf: freezed == multipleOf
          ? _value.multipleOf
          : multipleOf // ignore: cast_nullable_to_non_nullable
              as int?,
      editable: freezed == editable
          ? _value.editable
          : editable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuantityLimitsImpl implements _QuantityLimits {
  const _$QuantityLimitsImpl(
      {@JsonKey(name: "minimum") this.minimum,
      @JsonKey(name: "maximum") this.maximum,
      @JsonKey(name: "multiple_of") this.multipleOf,
      @JsonKey(name: "editable") this.editable});

  factory _$QuantityLimitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuantityLimitsImplFromJson(json);

  @override
  @JsonKey(name: "minimum")
  final int? minimum;
  @override
  @JsonKey(name: "maximum")
  final int? maximum;
  @override
  @JsonKey(name: "multiple_of")
  final int? multipleOf;
  @override
  @JsonKey(name: "editable")
  final bool? editable;

  @override
  String toString() {
    return 'QuantityLimits(minimum: $minimum, maximum: $maximum, multipleOf: $multipleOf, editable: $editable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuantityLimitsImpl &&
            (identical(other.minimum, minimum) || other.minimum == minimum) &&
            (identical(other.maximum, maximum) || other.maximum == maximum) &&
            (identical(other.multipleOf, multipleOf) ||
                other.multipleOf == multipleOf) &&
            (identical(other.editable, editable) ||
                other.editable == editable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, minimum, maximum, multipleOf, editable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuantityLimitsImplCopyWith<_$QuantityLimitsImpl> get copyWith =>
      __$$QuantityLimitsImplCopyWithImpl<_$QuantityLimitsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuantityLimitsImplToJson(
      this,
    );
  }
}

abstract class _QuantityLimits implements QuantityLimits {
  const factory _QuantityLimits(
      {@JsonKey(name: "minimum") final int? minimum,
      @JsonKey(name: "maximum") final int? maximum,
      @JsonKey(name: "multiple_of") final int? multipleOf,
      @JsonKey(name: "editable") final bool? editable}) = _$QuantityLimitsImpl;

  factory _QuantityLimits.fromJson(Map<String, dynamic> json) =
      _$QuantityLimitsImpl.fromJson;

  @override
  @JsonKey(name: "minimum")
  int? get minimum;
  @override
  @JsonKey(name: "maximum")
  int? get maximum;
  @override
  @JsonKey(name: "multiple_of")
  int? get multipleOf;
  @override
  @JsonKey(name: "editable")
  bool? get editable;
  @override
  @JsonKey(ignore: true)
  _$$QuantityLimitsImplCopyWith<_$QuantityLimitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Totals _$TotalsFromJson(Map<String, dynamic> json) {
  return _Totals.fromJson(json);
}

/// @nodoc
mixin _$Totals {
  @JsonKey(name: "line_subtotal")
  String? get lineSubtotal => throw _privateConstructorUsedError;
  @JsonKey(name: "line_subtotal_tax")
  String? get lineSubtotalTax => throw _privateConstructorUsedError;
  @JsonKey(name: "line_total")
  String? get lineTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "line_total_tax")
  String? get lineTotalTax => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_code")
  String? get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_symbol")
  String? get currencySymbol => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_minor_unit")
  int? get currencyMinorUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_decimal_separator")
  String? get currencyDecimalSeparator => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_thousand_separator")
  String? get currencyThousandSeparator => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_prefix")
  String? get currencyPrefix => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_suffix")
  String? get currencySuffix => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TotalsCopyWith<Totals> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalsCopyWith<$Res> {
  factory $TotalsCopyWith(Totals value, $Res Function(Totals) then) =
      _$TotalsCopyWithImpl<$Res, Totals>;
  @useResult
  $Res call(
      {@JsonKey(name: "line_subtotal") String? lineSubtotal,
      @JsonKey(name: "line_subtotal_tax") String? lineSubtotalTax,
      @JsonKey(name: "line_total") String? lineTotal,
      @JsonKey(name: "line_total_tax") String? lineTotalTax,
      @JsonKey(name: "currency_code") String? currencyCode,
      @JsonKey(name: "currency_symbol") String? currencySymbol,
      @JsonKey(name: "currency_minor_unit") int? currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      String? currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      String? currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") String? currencyPrefix,
      @JsonKey(name: "currency_suffix") String? currencySuffix});
}

/// @nodoc
class _$TotalsCopyWithImpl<$Res, $Val extends Totals>
    implements $TotalsCopyWith<$Res> {
  _$TotalsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lineSubtotal = freezed,
    Object? lineSubtotalTax = freezed,
    Object? lineTotal = freezed,
    Object? lineTotalTax = freezed,
    Object? currencyCode = freezed,
    Object? currencySymbol = freezed,
    Object? currencyMinorUnit = freezed,
    Object? currencyDecimalSeparator = freezed,
    Object? currencyThousandSeparator = freezed,
    Object? currencyPrefix = freezed,
    Object? currencySuffix = freezed,
  }) {
    return _then(_value.copyWith(
      lineSubtotal: freezed == lineSubtotal
          ? _value.lineSubtotal
          : lineSubtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      lineSubtotalTax: freezed == lineSubtotalTax
          ? _value.lineSubtotalTax
          : lineSubtotalTax // ignore: cast_nullable_to_non_nullable
              as String?,
      lineTotal: freezed == lineTotal
          ? _value.lineTotal
          : lineTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      lineTotalTax: freezed == lineTotalTax
          ? _value.lineTotalTax
          : lineTotalTax // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyMinorUnit: freezed == currencyMinorUnit
          ? _value.currencyMinorUnit
          : currencyMinorUnit // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyDecimalSeparator: freezed == currencyDecimalSeparator
          ? _value.currencyDecimalSeparator
          : currencyDecimalSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyThousandSeparator: freezed == currencyThousandSeparator
          ? _value.currencyThousandSeparator
          : currencyThousandSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyPrefix: freezed == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySuffix: freezed == currencySuffix
          ? _value.currencySuffix
          : currencySuffix // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TotalsImplCopyWith<$Res> implements $TotalsCopyWith<$Res> {
  factory _$$TotalsImplCopyWith(
          _$TotalsImpl value, $Res Function(_$TotalsImpl) then) =
      __$$TotalsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "line_subtotal") String? lineSubtotal,
      @JsonKey(name: "line_subtotal_tax") String? lineSubtotalTax,
      @JsonKey(name: "line_total") String? lineTotal,
      @JsonKey(name: "line_total_tax") String? lineTotalTax,
      @JsonKey(name: "currency_code") String? currencyCode,
      @JsonKey(name: "currency_symbol") String? currencySymbol,
      @JsonKey(name: "currency_minor_unit") int? currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      String? currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      String? currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") String? currencyPrefix,
      @JsonKey(name: "currency_suffix") String? currencySuffix});
}

/// @nodoc
class __$$TotalsImplCopyWithImpl<$Res>
    extends _$TotalsCopyWithImpl<$Res, _$TotalsImpl>
    implements _$$TotalsImplCopyWith<$Res> {
  __$$TotalsImplCopyWithImpl(
      _$TotalsImpl _value, $Res Function(_$TotalsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lineSubtotal = freezed,
    Object? lineSubtotalTax = freezed,
    Object? lineTotal = freezed,
    Object? lineTotalTax = freezed,
    Object? currencyCode = freezed,
    Object? currencySymbol = freezed,
    Object? currencyMinorUnit = freezed,
    Object? currencyDecimalSeparator = freezed,
    Object? currencyThousandSeparator = freezed,
    Object? currencyPrefix = freezed,
    Object? currencySuffix = freezed,
  }) {
    return _then(_$TotalsImpl(
      lineSubtotal: freezed == lineSubtotal
          ? _value.lineSubtotal
          : lineSubtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      lineSubtotalTax: freezed == lineSubtotalTax
          ? _value.lineSubtotalTax
          : lineSubtotalTax // ignore: cast_nullable_to_non_nullable
              as String?,
      lineTotal: freezed == lineTotal
          ? _value.lineTotal
          : lineTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      lineTotalTax: freezed == lineTotalTax
          ? _value.lineTotalTax
          : lineTotalTax // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyMinorUnit: freezed == currencyMinorUnit
          ? _value.currencyMinorUnit
          : currencyMinorUnit // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyDecimalSeparator: freezed == currencyDecimalSeparator
          ? _value.currencyDecimalSeparator
          : currencyDecimalSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyThousandSeparator: freezed == currencyThousandSeparator
          ? _value.currencyThousandSeparator
          : currencyThousandSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyPrefix: freezed == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySuffix: freezed == currencySuffix
          ? _value.currencySuffix
          : currencySuffix // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TotalsImpl implements _Totals {
  const _$TotalsImpl(
      {@JsonKey(name: "line_subtotal") this.lineSubtotal,
      @JsonKey(name: "line_subtotal_tax") this.lineSubtotalTax,
      @JsonKey(name: "line_total") this.lineTotal,
      @JsonKey(name: "line_total_tax") this.lineTotalTax,
      @JsonKey(name: "currency_code") this.currencyCode,
      @JsonKey(name: "currency_symbol") this.currencySymbol,
      @JsonKey(name: "currency_minor_unit") this.currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      this.currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      this.currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") this.currencyPrefix,
      @JsonKey(name: "currency_suffix") this.currencySuffix});

  factory _$TotalsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TotalsImplFromJson(json);

  @override
  @JsonKey(name: "line_subtotal")
  final String? lineSubtotal;
  @override
  @JsonKey(name: "line_subtotal_tax")
  final String? lineSubtotalTax;
  @override
  @JsonKey(name: "line_total")
  final String? lineTotal;
  @override
  @JsonKey(name: "line_total_tax")
  final String? lineTotalTax;
  @override
  @JsonKey(name: "currency_code")
  final String? currencyCode;
  @override
  @JsonKey(name: "currency_symbol")
  final String? currencySymbol;
  @override
  @JsonKey(name: "currency_minor_unit")
  final int? currencyMinorUnit;
  @override
  @JsonKey(name: "currency_decimal_separator")
  final String? currencyDecimalSeparator;
  @override
  @JsonKey(name: "currency_thousand_separator")
  final String? currencyThousandSeparator;
  @override
  @JsonKey(name: "currency_prefix")
  final String? currencyPrefix;
  @override
  @JsonKey(name: "currency_suffix")
  final String? currencySuffix;

  @override
  String toString() {
    return 'Totals(lineSubtotal: $lineSubtotal, lineSubtotalTax: $lineSubtotalTax, lineTotal: $lineTotal, lineTotalTax: $lineTotalTax, currencyCode: $currencyCode, currencySymbol: $currencySymbol, currencyMinorUnit: $currencyMinorUnit, currencyDecimalSeparator: $currencyDecimalSeparator, currencyThousandSeparator: $currencyThousandSeparator, currencyPrefix: $currencyPrefix, currencySuffix: $currencySuffix)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalsImpl &&
            (identical(other.lineSubtotal, lineSubtotal) ||
                other.lineSubtotal == lineSubtotal) &&
            (identical(other.lineSubtotalTax, lineSubtotalTax) ||
                other.lineSubtotalTax == lineSubtotalTax) &&
            (identical(other.lineTotal, lineTotal) ||
                other.lineTotal == lineTotal) &&
            (identical(other.lineTotalTax, lineTotalTax) ||
                other.lineTotalTax == lineTotalTax) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.currencyMinorUnit, currencyMinorUnit) ||
                other.currencyMinorUnit == currencyMinorUnit) &&
            (identical(
                    other.currencyDecimalSeparator, currencyDecimalSeparator) ||
                other.currencyDecimalSeparator == currencyDecimalSeparator) &&
            (identical(other.currencyThousandSeparator,
                    currencyThousandSeparator) ||
                other.currencyThousandSeparator == currencyThousandSeparator) &&
            (identical(other.currencyPrefix, currencyPrefix) ||
                other.currencyPrefix == currencyPrefix) &&
            (identical(other.currencySuffix, currencySuffix) ||
                other.currencySuffix == currencySuffix));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lineSubtotal,
      lineSubtotalTax,
      lineTotal,
      lineTotalTax,
      currencyCode,
      currencySymbol,
      currencyMinorUnit,
      currencyDecimalSeparator,
      currencyThousandSeparator,
      currencyPrefix,
      currencySuffix);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalsImplCopyWith<_$TotalsImpl> get copyWith =>
      __$$TotalsImplCopyWithImpl<_$TotalsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TotalsImplToJson(
      this,
    );
  }
}

abstract class _Totals implements Totals {
  const factory _Totals(
          {@JsonKey(name: "line_subtotal") final String? lineSubtotal,
          @JsonKey(name: "line_subtotal_tax") final String? lineSubtotalTax,
          @JsonKey(name: "line_total") final String? lineTotal,
          @JsonKey(name: "line_total_tax") final String? lineTotalTax,
          @JsonKey(name: "currency_code") final String? currencyCode,
          @JsonKey(name: "currency_symbol") final String? currencySymbol,
          @JsonKey(name: "currency_minor_unit") final int? currencyMinorUnit,
          @JsonKey(name: "currency_decimal_separator")
          final String? currencyDecimalSeparator,
          @JsonKey(name: "currency_thousand_separator")
          final String? currencyThousandSeparator,
          @JsonKey(name: "currency_prefix") final String? currencyPrefix,
          @JsonKey(name: "currency_suffix") final String? currencySuffix}) =
      _$TotalsImpl;

  factory _Totals.fromJson(Map<String, dynamic> json) = _$TotalsImpl.fromJson;

  @override
  @JsonKey(name: "line_subtotal")
  String? get lineSubtotal;
  @override
  @JsonKey(name: "line_subtotal_tax")
  String? get lineSubtotalTax;
  @override
  @JsonKey(name: "line_total")
  String? get lineTotal;
  @override
  @JsonKey(name: "line_total_tax")
  String? get lineTotalTax;
  @override
  @JsonKey(name: "currency_code")
  String? get currencyCode;
  @override
  @JsonKey(name: "currency_symbol")
  String? get currencySymbol;
  @override
  @JsonKey(name: "currency_minor_unit")
  int? get currencyMinorUnit;
  @override
  @JsonKey(name: "currency_decimal_separator")
  String? get currencyDecimalSeparator;
  @override
  @JsonKey(name: "currency_thousand_separator")
  String? get currencyThousandSeparator;
  @override
  @JsonKey(name: "currency_prefix")
  String? get currencyPrefix;
  @override
  @JsonKey(name: "currency_suffix")
  String? get currencySuffix;
  @override
  @JsonKey(ignore: true)
  _$$TotalsImplCopyWith<_$TotalsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
