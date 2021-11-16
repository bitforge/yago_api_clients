//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StripeSubscriptionStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const StripeSubscriptionStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const active = StripeSubscriptionStatusEnum._(r'active');
  static const canceled = StripeSubscriptionStatusEnum._(r'canceled');
  static const incomplete = StripeSubscriptionStatusEnum._(r'incomplete');
  static const incompleteExpired = StripeSubscriptionStatusEnum._(r'incomplete_expired');
  static const pastDue = StripeSubscriptionStatusEnum._(r'past_due');
  static const trialing = StripeSubscriptionStatusEnum._(r'trialing');
  static const unpaid = StripeSubscriptionStatusEnum._(r'unpaid');

  /// List of all possible values in this [enum][StripeSubscriptionStatusEnum].
  static const values = <StripeSubscriptionStatusEnum>[
    active,
    canceled,
    incomplete,
    incompleteExpired,
    pastDue,
    trialing,
    unpaid,
  ];

  static StripeSubscriptionStatusEnum fromJson(dynamic value) =>
    StripeSubscriptionStatusEnumTypeTransformer().decode(value);

  static List<StripeSubscriptionStatusEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(StripeSubscriptionStatusEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <StripeSubscriptionStatusEnum>[];
}

/// Transformation class that can [encode] an instance of [StripeSubscriptionStatusEnum] to String,
/// and [decode] dynamic data back to [StripeSubscriptionStatusEnum].
class StripeSubscriptionStatusEnumTypeTransformer {
  factory StripeSubscriptionStatusEnumTypeTransformer() => _instance ??= const StripeSubscriptionStatusEnumTypeTransformer._();

  const StripeSubscriptionStatusEnumTypeTransformer._();

  String encode(StripeSubscriptionStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StripeSubscriptionStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StripeSubscriptionStatusEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'active': return StripeSubscriptionStatusEnum.active;
        case r'canceled': return StripeSubscriptionStatusEnum.canceled;
        case r'incomplete': return StripeSubscriptionStatusEnum.incomplete;
        case r'incomplete_expired': return StripeSubscriptionStatusEnum.incompleteExpired;
        case r'past_due': return StripeSubscriptionStatusEnum.pastDue;
        case r'trialing': return StripeSubscriptionStatusEnum.trialing;
        case r'unpaid': return StripeSubscriptionStatusEnum.unpaid;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StripeSubscriptionStatusEnumTypeTransformer] instance.
  static StripeSubscriptionStatusEnumTypeTransformer _instance;
}

