//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// * `NONE` - None (Not subscribed) * `STRIPE` - Credit card (stripe) * `BILL` - Pay by bill
class PaymentMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const PaymentMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NONE = PaymentMethodEnum._(r'NONE');
  static const STRIPE = PaymentMethodEnum._(r'STRIPE');
  static const BILL = PaymentMethodEnum._(r'BILL');

  /// List of all possible values in this [enum][PaymentMethodEnum].
  static const values = <PaymentMethodEnum>[
    NONE,
    STRIPE,
    BILL,
  ];

  static PaymentMethodEnum? fromJson(dynamic value) => PaymentMethodEnumTypeTransformer().decode(value);

  static List<PaymentMethodEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PaymentMethodEnum] to String,
/// and [decode] dynamic data back to [PaymentMethodEnum].
class PaymentMethodEnumTypeTransformer {
  factory PaymentMethodEnumTypeTransformer() => _instance ??= const PaymentMethodEnumTypeTransformer._();

  const PaymentMethodEnumTypeTransformer._();

  String encode(PaymentMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PaymentMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PaymentMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NONE':
          return PaymentMethodEnum.NONE;
        case r'STRIPE':
          return PaymentMethodEnum.STRIPE;
        case r'BILL':
          return PaymentMethodEnum.BILL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PaymentMethodEnumTypeTransformer] instance.
  static PaymentMethodEnumTypeTransformer? _instance;
}
