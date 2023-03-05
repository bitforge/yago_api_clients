//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderModel {
  /// Returns a new [OrderModel] instance.
  OrderModel({
    required this.id,
    required this.name,
    required this.order,
    required this.state,
    this.website,
    this.widthMm,
    this.heightMm,
    this.depthMm,
    required this.model,
    required this.created,
    required this.modified,
  });

  int id;

  String name;

  int order;

  OrderState state;

  String? website;

  double? widthMm;

  double? heightMm;

  double? depthMm;

  /// Resulting model after order is finished. Available when state is IN_PROGRESS.
  String? model;

  DateTime created;

  DateTime modified;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderModel &&
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
      (id.hashCode) +
      (name.hashCode) +
      (order.hashCode) +
      (state.hashCode) +
      (website == null ? 0 : website!.hashCode) +
      (widthMm == null ? 0 : widthMm!.hashCode) +
      (heightMm == null ? 0 : heightMm!.hashCode) +
      (depthMm == null ? 0 : depthMm!.hashCode) +
      (model == null ? 0 : model!.hashCode) +
      (created.hashCode) +
      (modified.hashCode);

  @override
  String toString() =>
      'OrderModel[id=$id, name=$name, order=$order, state=$state, website=$website, widthMm=$widthMm, heightMm=$heightMm, depthMm=$depthMm, model=$model, created=$created, modified=$modified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = this.id;
    json[r'name'] = this.name;
    json[r'order'] = this.order;
    json[r'state'] = this.state;
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
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    json[r'created'] = this.created.toUtc().toIso8601String();
    json[r'modified'] = this.modified.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [OrderModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderModel(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        order: mapValueOfType<int>(json, r'order')!,
        state: OrderState.fromJson(json[r'state'])!,
        website: mapValueOfType<String>(json, r'website'),
        widthMm: mapValueOfType<double>(json, r'width_mm'),
        heightMm: mapValueOfType<double>(json, r'height_mm'),
        depthMm: mapValueOfType<double>(json, r'depth_mm'),
        model: mapValueOfType<String>(json, r'model'),
        created: mapDateTime(json, r'created', '')!,
        modified: mapDateTime(json, r'modified', '')!,
      );
    }
    return null;
  }

  static List<OrderModel>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OrderModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderModel> mapFromJson(dynamic json) {
    final map = <String, OrderModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderModel-objects as value to a dart map
  static Map<String, List<OrderModel>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OrderModel>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderModel.listFromJson(
          entry.value,
          growable: growable,
        );
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
    'name',
    'order',
    'state',
    'model',
    'created',
    'modified',
  };
}
