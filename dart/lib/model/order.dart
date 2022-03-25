//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Order {
  /// Returns a new [Order] instance.
  Order({
    @required this.id,
    @required this.project,
    this.state,
    this.price,
    @required this.priceCurrency,
    @required this.created,
    @required this.modified,
    @required this.modelCount,
  });

  int id;

  String project;

  OrderState state;

  /// Estimation of order in CHF including taxes. Payment price for User before starting production.
  double price;

  String priceCurrency;

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
    (id == null ? 0 : id.hashCode) +
    (project == null ? 0 : project.hashCode) +
    (state == null ? 0 : state.hashCode) +
    (price == null ? 0 : price.hashCode) +
    (priceCurrency == null ? 0 : priceCurrency.hashCode) +
    (created == null ? 0 : created.hashCode) +
    (modified == null ? 0 : modified.hashCode) +
    (modelCount == null ? 0 : modelCount.hashCode);

  @override
  String toString() => 'Order[id=$id, project=$project, state=$state, price=$price, priceCurrency=$priceCurrency, created=$created, modified=$modified, modelCount=$modelCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'project'] = project;
      json[r'state'] = state == null ? null : state;
    if (price != null) {
      json[r'price'] = price;
    }
      json[r'price_currency'] = priceCurrency;
      json[r'created'] = created.toUtc().toIso8601String();
      json[r'modified'] = modified.toUtc().toIso8601String();
      json[r'model_count'] = modelCount;
    return json;
  }

  /// Returns a new [Order] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Order fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Order(
        id: mapValueOfType<int>(json, r'id'),
        project: mapValueOfType<String>(json, r'project'),
        state: OrderState.fromJson(json[r'state']),
        price: mapValueOfType<double>(json, r'price'),
        priceCurrency: mapValueOfType<String>(json, r'price_currency'),
        created: mapDateTime(json, r'created', ''),
        modified: mapDateTime(json, r'modified', ''),
        modelCount: mapValueOfType<int>(json, r'model_count'),
      );
    }
    return null;
  }

  static List<Order> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Order.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Order>[];

  static Map<String, Order> mapFromJson(dynamic json) {
    final map = <String, Order>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Order.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Order-objects as value to a dart map
  static Map<String, List<Order>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Order>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Order.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

