//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderUpdate {
  /// Returns a new [OrderUpdate] instance.
  OrderUpdate({
    @required this.price,
    this.priceCurrency,
  });

  double price;

  PriceCurrencyEnum priceCurrency;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderUpdate &&
     other.price == price &&
     other.priceCurrency == priceCurrency;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (price == null ? 0 : price.hashCode) +
    (priceCurrency == null ? 0 : priceCurrency.hashCode);

  @override
  String toString() => 'OrderUpdate[price=$price, priceCurrency=$priceCurrency]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'price'] = price;
    if (priceCurrency != null) {
      json[r'price_currency'] = priceCurrency;
    }
    return json;
  }

  /// Returns a new [OrderUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderUpdate fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrderUpdate(
        price: mapValueOfType<double>(json, r'price'),
        priceCurrency: PriceCurrencyEnum.fromJson(json[r'price_currency']),
      );
    }
    return null;
  }

  static List<OrderUpdate> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrderUpdate.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrderUpdate>[];

  static Map<String, OrderUpdate> mapFromJson(dynamic json) {
    final map = <String, OrderUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrderUpdate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderUpdate-objects as value to a dart map
  static Map<String, List<OrderUpdate>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrderUpdate.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

