//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderModel {
  /// Returns a new [OrderModel] instance.
  OrderModel({
    @required this.id,
    @required this.name,
    @required this.order,
    this.state,
    this.website,
    this.widthMm,
    this.heightMm,
    this.depthMm,
    this.model,
    @required this.created,
    @required this.modified,
  });

  int id;

  String name;

  int order;

  OrderState state;

  String website;

  double widthMm;

  double heightMm;

  double depthMm;

  /// Resulting model after order is finished. Available when state is IN_PROGRESS.
  String model;

  DateTime created;

  DateTime modified;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderModel &&
     other.id == id &&
     other.name == name &&
     other.order == order &&
     other.state == state &&
     other.website == website &&
     other.widthMm == widthMm &&
     other.heightMm == heightMm &&
     other.depthMm == depthMm &&
     other.model == model &&
     other.created == created &&
     other.modified == modified;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (order == null ? 0 : order.hashCode) +
    (state == null ? 0 : state.hashCode) +
    (website == null ? 0 : website.hashCode) +
    (widthMm == null ? 0 : widthMm.hashCode) +
    (heightMm == null ? 0 : heightMm.hashCode) +
    (depthMm == null ? 0 : depthMm.hashCode) +
    (model == null ? 0 : model.hashCode) +
    (created == null ? 0 : created.hashCode) +
    (modified == null ? 0 : modified.hashCode);

  @override
  String toString() => 'OrderModel[id=$id, name=$name, order=$order, state=$state, website=$website, widthMm=$widthMm, heightMm=$heightMm, depthMm=$depthMm, model=$model, created=$created, modified=$modified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'name'] = name;
      json[r'order'] = order;
      json[r'state'] = state == null ? null : state;
    if (website != null) {
      json[r'website'] = website;
    }
    if (widthMm != null) {
      json[r'width_mm'] = widthMm;
    }
    if (heightMm != null) {
      json[r'height_mm'] = heightMm;
    }
    if (depthMm != null) {
      json[r'depth_mm'] = depthMm;
    }
      json[r'model'] = model == null ? null : model;
      json[r'created'] = created.toUtc().toIso8601String();
      json[r'modified'] = modified.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [OrderModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderModel fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrderModel(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        order: mapValueOfType<int>(json, r'order'),
        state: OrderState.fromJson(json[r'state']),
        website: mapValueOfType<String>(json, r'website'),
        widthMm: mapValueOfType<double>(json, r'width_mm'),
        heightMm: mapValueOfType<double>(json, r'height_mm'),
        depthMm: mapValueOfType<double>(json, r'depth_mm'),
        model: mapValueOfType<String>(json, r'model'),
        created: mapDateTime(json, r'created', ''),
        modified: mapDateTime(json, r'modified', ''),
      );
    }
    return null;
  }

  static List<OrderModel> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrderModel.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrderModel>[];

  static Map<String, OrderModel> mapFromJson(dynamic json) {
    final map = <String, OrderModel>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrderModel.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderModel-objects as value to a dart map
  static Map<String, List<OrderModel>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderModel>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrderModel.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

