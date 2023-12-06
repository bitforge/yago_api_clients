//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of yago;

/// * `CHF` - CHF 🇨🇭 * `EUR` - EUR 🇪🇺 * `GBP` - GBP 🇬🇧 * `USD` - USD 🇺🇸
class PriceCurrencyEnum {
  /// Instantiate a new enum with the provided [value].
  const PriceCurrencyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

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

  static PriceCurrencyEnum? fromJson(dynamic value) => PriceCurrencyEnumTypeTransformer().decode(value);

  static List<PriceCurrencyEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PriceCurrencyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PriceCurrencyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
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
  PriceCurrencyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CHF':
          return PriceCurrencyEnum.CHF;
        case r'EUR':
          return PriceCurrencyEnum.EUR;
        case r'GBP':
          return PriceCurrencyEnum.GBP;
        case r'USD':
          return PriceCurrencyEnum.USD;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PriceCurrencyEnumTypeTransformer] instance.
  static PriceCurrencyEnumTypeTransformer? _instance;
}
