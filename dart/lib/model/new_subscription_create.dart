//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NewSubscriptionCreate {
  /// Returns a new [NewSubscriptionCreate] instance.
  NewSubscriptionCreate({
    @required this.plan,
    @required this.paymentMethod,
    @required this.tosAccepted,
  });

  String plan;

  PaymentMethodEnum paymentMethod;

  bool tosAccepted;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewSubscriptionCreate &&
     other.plan == plan &&
     other.paymentMethod == paymentMethod &&
     other.tosAccepted == tosAccepted;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (plan == null ? 0 : plan.hashCode) +
    (paymentMethod == null ? 0 : paymentMethod.hashCode) +
    (tosAccepted == null ? 0 : tosAccepted.hashCode);

  @override
  String toString() => 'NewSubscriptionCreate[plan=$plan, paymentMethod=$paymentMethod, tosAccepted=$tosAccepted]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'plan'] = plan;
      json[r'payment_method'] = paymentMethod;
      json[r'tos_accepted'] = tosAccepted;
    return json;
  }

  /// Returns a new [NewSubscriptionCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewSubscriptionCreate fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NewSubscriptionCreate(
        plan: mapValueOfType<String>(json, r'plan'),
        paymentMethod: PaymentMethodEnum.fromJson(json[r'payment_method']),
        tosAccepted: mapValueOfType<bool>(json, r'tos_accepted'),
      );
    }
    return null;
  }

  static List<NewSubscriptionCreate> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NewSubscriptionCreate.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NewSubscriptionCreate>[];

  static Map<String, NewSubscriptionCreate> mapFromJson(dynamic json) {
    final map = <String, NewSubscriptionCreate>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NewSubscriptionCreate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NewSubscriptionCreate-objects as value to a dart map
  static Map<String, List<NewSubscriptionCreate>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NewSubscriptionCreate>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NewSubscriptionCreate.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

