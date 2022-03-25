//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PriceCurrencyEnum {
  /// Instantiate a new enum with the provided [value].
  const PriceCurrencyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const CHF = PriceCurrencyEnum._(r'CHF');
  static const EUR = PriceCurrencyEnum._(r'EUR');
  static const GBP = PriceCurrencyEnum._(r'GBP');
  static const USD = PriceCurrencyEnum._(r'USD');

  /// List of all possible values in this [enum][PriceCurrencyEnum].
  static const values = <PriceCurrencyEnum>[
    CHF,
    EUR,
    GBP,
    USD,
  ];

  static PriceCurrencyEnum fromJson(dynamic value) =>
    PriceCurrencyEnumTypeTransformer().decode(value);

  static List<PriceCurrencyEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PriceCurrencyEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PriceCurrencyEnum>[];
}

/// Transformation class that can [encode] an instance of [PriceCurrencyEnum] to String,
/// and [decode] dynamic data back to [PriceCurrencyEnum].
class PriceCurrencyEnumTypeTransformer {
  factory PriceCurrencyEnumTypeTransformer() => _instance ??= const PriceCurrencyEnumTypeTransformer._();

  const PriceCurrencyEnumTypeTransformer._();

  String encode(PriceCurrencyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PriceCurrencyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PriceCurrencyEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'CHF': return PriceCurrencyEnum.CHF;
        case r'EUR': return PriceCurrencyEnum.EUR;
        case r'GBP': return PriceCurrencyEnum.GBP;
        case r'USD': return PriceCurrencyEnum.USD;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PriceCurrencyEnumTypeTransformer] instance.
  static PriceCurrencyEnumTypeTransformer _instance;
}

