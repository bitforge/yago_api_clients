//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderModelUpdate {
  /// Returns a new [OrderModelUpdate] instance.
  OrderModelUpdate({
    @required this.name,
    this.website,
    this.widthMm,
    this.heightMm,
    this.depthMm,
  });

  String name;

  String website;

  double widthMm;

  double heightMm;

  double depthMm;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderModelUpdate &&
     other.name == name &&
     other.website == website &&
     other.widthMm == widthMm &&
     other.heightMm == heightMm &&
     other.depthMm == depthMm;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (name == null ? 0 : name.hashCode) +
    (website == null ? 0 : website.hashCode) +
    (widthMm == null ? 0 : widthMm.hashCode) +
    (heightMm == null ? 0 : heightMm.hashCode) +
    (depthMm == null ? 0 : depthMm.hashCode);

  @override
  String toString() => 'OrderModelUpdate[name=$name, website=$website, widthMm=$widthMm, heightMm=$heightMm, depthMm=$depthMm]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = name;
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
    return json;
  }

  /// Returns a new [OrderModelUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderModelUpdate fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrderModelUpdate(
        name: mapValueOfType<String>(json, r'name'),
        website: mapValueOfType<String>(json, r'website'),
        widthMm: mapValueOfType<double>(json, r'width_mm'),
        heightMm: mapValueOfType<double>(json, r'height_mm'),
        depthMm: mapValueOfType<double>(json, r'depth_mm'),
      );
    }
    return null;
  }

  static List<OrderModelUpdate> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrderModelUpdate.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrderModelUpdate>[];

  static Map<String, OrderModelUpdate> mapFromJson(dynamic json) {
    final map = <String, OrderModelUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrderModelUpdate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderModelUpdate-objects as value to a dart map
  static Map<String, List<OrderModelUpdate>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderModelUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrderModelUpdate.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

