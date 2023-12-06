//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of yago;

class NewSubscriptionCreate {
  /// Returns a new [NewSubscriptionCreate] instance.
  NewSubscriptionCreate({
    required this.plan,
    required this.paymentMethod,
    required this.tosAccepted,
  });

  String plan;

  PaymentMethodEnum paymentMethod;

  bool tosAccepted;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewSubscriptionCreate &&
          other.plan == plan &&
          other.paymentMethod == paymentMethod &&
          other.tosAccepted == tosAccepted;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (plan.hashCode) + (paymentMethod.hashCode) + (tosAccepted.hashCode);

  @override
  String toString() => 'NewSubscriptionCreate[plan=$plan, paymentMethod=$paymentMethod, tosAccepted=$tosAccepted]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'plan'] = this.plan;
    json[r'payment_method'] = this.paymentMethod;
    json[r'tos_accepted'] = this.tosAccepted;
    return json;
  }

  /// Returns a new [NewSubscriptionCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewSubscriptionCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NewSubscriptionCreate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NewSubscriptionCreate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NewSubscriptionCreate(
        plan: mapValueOfType<String>(json, r'plan')!,
        paymentMethod: PaymentMethodEnum.fromJson(json[r'payment_method'])!,
        tosAccepted: mapValueOfType<bool>(json, r'tos_accepted')!,
      );
    }
    return null;
  }

  static List<NewSubscriptionCreate> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NewSubscriptionCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewSubscriptionCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewSubscriptionCreate> mapFromJson(dynamic json) {
    final map = <String, NewSubscriptionCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewSubscriptionCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewSubscriptionCreate-objects as value to a dart map
  static Map<String, List<NewSubscriptionCreate>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NewSubscriptionCreate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NewSubscriptionCreate.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'plan',
    'payment_method',
    'tos_accepted',
  };
}
