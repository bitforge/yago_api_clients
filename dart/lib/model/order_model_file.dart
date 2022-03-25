//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderModelFile {
  /// Returns a new [OrderModelFile] instance.
  OrderModelFile({
    @required this.id,
    @required this.name,
    @required this.file,
    @required this.created,
  });

  String id;

  String name;

  String file;

  DateTime created;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderModelFile &&
     other.id == id &&
     other.name == name &&
     other.file == file &&
     other.created == created;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (file == null ? 0 : file.hashCode) +
    (created == null ? 0 : created.hashCode);

  @override
  String toString() => 'OrderModelFile[id=$id, name=$name, file=$file, created=$created]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'name'] = name;
      json[r'file'] = file;
      json[r'created'] = created.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [OrderModelFile] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderModelFile fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrderModelFile(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        file: mapValueOfType<String>(json, r'file'),
        created: mapDateTime(json, r'created', ''),
      );
    }
    return null;
  }

  static List<OrderModelFile> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrderModelFile.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrderModelFile>[];

  static Map<String, OrderModelFile> mapFromJson(dynamic json) {
    final map = <String, OrderModelFile>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrderModelFile.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderModelFile-objects as value to a dart map
  static Map<String, List<OrderModelFile>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderModelFile>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrderModelFile.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

