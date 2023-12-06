//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of yago;

class OrderModelCreate {
  /// Returns a new [OrderModelCreate] instance.
  OrderModelCreate({
    required this.name,
    this.website,
    this.widthMm,
    this.heightMm,
    this.depthMm,
  });

  String name;

  String? website;

  double? widthMm;

  double? heightMm;

  double? depthMm;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderModelCreate &&
          other.name == name &&
          other.website == website &&
          other.widthMm == widthMm &&
          other.heightMm == heightMm &&
          other.depthMm == depthMm;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name.hashCode) +
      (website == null ? 0 : website!.hashCode) +
      (widthMm == null ? 0 : widthMm!.hashCode) +
      (heightMm == null ? 0 : heightMm!.hashCode) +
      (depthMm == null ? 0 : depthMm!.hashCode);

  @override
  String toString() =>
      'OrderModelCreate[name=$name, website=$website, widthMm=$widthMm, heightMm=$heightMm, depthMm=$depthMm]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'name'] = this.name;
    if (this.website != null) {
      json[r'website'] = this.website;
    } else {
      json[r'website'] = null;
    }
    if (this.widthMm != null) {
      json[r'width_mm'] = this.widthMm;
    } else {
      json[r'width_mm'] = null;
    }
    if (this.heightMm != null) {
      json[r'height_mm'] = this.heightMm;
    } else {
      json[r'height_mm'] = null;
    }
    if (this.depthMm != null) {
      json[r'depth_mm'] = this.depthMm;
    } else {
      json[r'depth_mm'] = null;
    }
    return json;
  }

  /// Returns a new [OrderModelCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderModelCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderModelCreate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderModelCreate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderModelCreate(
        name: mapValueOfType<String>(json, r'name')!,
        website: mapValueOfType<String>(json, r'website'),
        widthMm: mapValueOfType<double>(json, r'width_mm'),
        heightMm: mapValueOfType<double>(json, r'height_mm'),
        depthMm: mapValueOfType<double>(json, r'depth_mm'),
      );
    }
    return null;
  }

  static List<OrderModelCreate> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OrderModelCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderModelCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderModelCreate> mapFromJson(dynamic json) {
    final map = <String, OrderModelCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderModelCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderModelCreate-objects as value to a dart map
  static Map<String, List<OrderModelCreate>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OrderModelCreate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderModelCreate.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}
