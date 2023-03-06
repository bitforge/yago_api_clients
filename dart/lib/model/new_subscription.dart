//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NewSubscription {
  /// Returns a new [NewSubscription] instance.
  NewSubscription({
    required this.plan,
    required this.paymentMethod,
    required this.tosAccepted,
    this.customerId,
    this.subscriptionId,
    this.clientSecret,
  });

  String plan;

  PaymentMethodEnum paymentMethod;

  bool tosAccepted;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customerId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subscriptionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientSecret;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewSubscription &&
          other.plan == plan &&
          other.paymentMethod == paymentMethod &&
          other.tosAccepted == tosAccepted &&
          other.customerId == customerId &&
          other.subscriptionId == subscriptionId &&
          other.clientSecret == clientSecret;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (plan.hashCode) +
      (paymentMethod.hashCode) +
      (tosAccepted.hashCode) +
      (customerId == null ? 0 : customerId!.hashCode) +
      (subscriptionId == null ? 0 : subscriptionId!.hashCode) +
      (clientSecret == null ? 0 : clientSecret!.hashCode);

  @override
  String toString() =>
      'NewSubscription[plan=$plan, paymentMethod=$paymentMethod, tosAccepted=$tosAccepted, customerId=$customerId, subscriptionId=$subscriptionId, clientSecret=$clientSecret]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'plan'] = this.plan;
    json[r'payment_method'] = this.paymentMethod;
    json[r'tos_accepted'] = this.tosAccepted;
    if (this.customerId != null) {
      json[r'customer_id'] = this.customerId;
    } else {
      json[r'customer_id'] = null;
    }
    if (this.subscriptionId != null) {
      json[r'subscription_id'] = this.subscriptionId;
    } else {
      json[r'subscription_id'] = null;
    }
    if (this.clientSecret != null) {
      json[r'client_secret'] = this.clientSecret;
    } else {
      json[r'client_secret'] = null;
    }
    return json;
  }

  /// Returns a new [NewSubscription] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewSubscription? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NewSubscription[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NewSubscription[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NewSubscription(
        plan: mapValueOfType<String>(json, r'plan')!,
        paymentMethod: PaymentMethodEnum.fromJson(json[r'payment_method'])!,
        tosAccepted: mapValueOfType<bool>(json, r'tos_accepted')!,
        customerId: mapValueOfType<String>(json, r'customer_id'),
        subscriptionId: mapValueOfType<String>(json, r'subscription_id'),
        clientSecret: mapValueOfType<String>(json, r'client_secret'),
      );
    }
    return null;
  }

  static List<NewSubscription>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NewSubscription>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewSubscription.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewSubscription> mapFromJson(dynamic json) {
    final map = <String, NewSubscription>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewSubscription.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewSubscription-objects as value to a dart map
  static Map<String, List<NewSubscription>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NewSubscription>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewSubscription.listFromJson(
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
    'plan',
    'payment_method',
    'tos_accepted',
  };
}
