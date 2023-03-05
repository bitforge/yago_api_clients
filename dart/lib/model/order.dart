//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Order {
  /// Returns a new [Order] instance.
  Order({
    required this.id,
    required this.project,
    required this.state,
    this.price,
    required this.priceCurrency,
    required this.created,
    required this.modified,
    required this.modelCount,
  });

  int id;

  String project;

  OrderState state;

  /// Estimation of order in CHF including taxes. Payment price for User before starting production.
  double? price;

  String? priceCurrency;

  DateTime created;

  DateTime modified;

  int modelCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Order &&
     other.id == id &&
     other.project == project &&
     other.state == state &&
     other.price == price &&
     other.priceCurrency == priceCurrency &&
     other.created == created &&
     other.modified == modified &&
     other.modelCount == modelCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (project.hashCode) +
    (state.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (priceCurrency == null ? 0 : priceCurrency!.hashCode) +
    (created.hashCode) +
    (modified.hashCode) +
    (modelCount.hashCode);

  @override
  String toString() => 'Order[id=$id, project=$project, state=$state, price=$price, priceCurrency=$priceCurrency, created=$created, modified=$modified, modelCount=$modelCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'project'] = this.project;
      json[r'state'] = this.state;
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.priceCurrency != null) {
      json[r'price_currency'] = this.priceCurrency;
    } else {
      json[r'price_currency'] = null;
    }
      json[r'created'] = this.created.toUtc().toIso8601String();
      json[r'modified'] = this.modified.toUtc().toIso8601String();
      json[r'model_count'] = this.modelCount;
    return json;
  }

  /// Returns a new [Order] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Order? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Order[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Order[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Order(
        id: mapValueOfType<int>(json, r'id')!,
        project: mapValueOfType<String>(json, r'project')!,
        state: OrderState.fromJson(json[r'state'])!,
        price: mapValueOfType<double>(json, r'price'),
        priceCurrency: mapValueOfType<String>(json, r'price_currency'),
        created: mapDateTime(json, r'created', '')!,
        modified: mapDateTime(json, r'modified', '')!,
        modelCount: mapValueOfType<int>(json, r'model_count')!,
      );
    }
    return null;
  }

  static List<Order>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Order>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Order.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Order> mapFromJson(dynamic json) {
    final map = <String, Order>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Order.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Order-objects as value to a dart map
  static Map<String, List<Order>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Order>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Order.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'project',
    'state',
    'price_currency',
    'created',
    'modified',
    'model_count',
  };
}

