//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderModelFile {
  /// Returns a new [OrderModelFile] instance.
  OrderModelFile({
    required this.id,
    required this.name,
    required this.file,
    required this.created,
  });

  String id;

  String name;

  String file;

  DateTime created;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderModelFile && other.id == id && other.name == name && other.file == file && other.created == created;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) + (name.hashCode) + (file.hashCode) + (created.hashCode);

  @override
  String toString() => 'OrderModelFile[id=$id, name=$name, file=$file, created=$created]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = this.id;
    json[r'name'] = this.name;
    json[r'file'] = this.file;
    json[r'created'] = this.created.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [OrderModelFile] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderModelFile? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderModelFile[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderModelFile[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderModelFile(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        file: mapValueOfType<String>(json, r'file')!,
        created: mapDateTime(json, r'created', r'')!,
      );
    }
    return null;
  }

  static List<OrderModelFile> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OrderModelFile>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderModelFile.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderModelFile> mapFromJson(dynamic json) {
    final map = <String, OrderModelFile>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderModelFile.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderModelFile-objects as value to a dart map
  static Map<String, List<OrderModelFile>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OrderModelFile>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderModelFile.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'file',
    'created',
  };
}
