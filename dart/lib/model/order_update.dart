//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderUpdate {
  /// Returns a new [OrderUpdate] instance.
  OrderUpdate({
    required this.price,
    this.priceCurrency,
  });

  double price;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PriceCurrencyEnum? priceCurrency;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is OrderUpdate && other.price == price && other.priceCurrency == priceCurrency;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (price.hashCode) + (priceCurrency == null ? 0 : priceCurrency!.hashCode);

  @override
  String toString() => 'OrderUpdate[price=$price, priceCurrency=$priceCurrency]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'price'] = this.price;
    if (this.priceCurrency != null) {
      json[r'price_currency'] = this.priceCurrency;
    } else {
      json[r'price_currency'] = null;
    }
    return json;
  }

  /// Returns a new [OrderUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderUpdate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderUpdate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderUpdate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderUpdate(
        price: mapValueOfType<double>(json, r'price')!,
        priceCurrency: PriceCurrencyEnum.fromJson(json[r'price_currency']),
      );
    }
    return null;
  }

  static List<OrderUpdate> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OrderUpdate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderUpdate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderUpdate> mapFromJson(dynamic json) {
    final map = <String, OrderUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderUpdate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderUpdate-objects as value to a dart map
  static Map<String, List<OrderUpdate>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OrderUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderUpdate.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'price',
  };
}
