//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PlanEnum {
  /// Instantiate a new enum with the provided [value].
  const PlanEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const FREE = PlanEnum._(r'FREE');
  static const STARTER = PlanEnum._(r'STARTER');
  static const LITE = PlanEnum._(r'LITE');
  static const PRO = PlanEnum._(r'PRO');
  static const PREMIUM = PlanEnum._(r'PREMIUM');

  /// List of all possible values in this [enum][PlanEnum].
  static const values = <PlanEnum>[
    FREE,
    STARTER,
    LITE,
    PRO,
    PREMIUM,
  ];

  static PlanEnum fromJson(dynamic value) =>
    PlanEnumTypeTransformer().decode(value);

  static List<PlanEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PlanEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PlanEnum>[];
}

/// Transformation class that can [encode] an instance of [PlanEnum] to String,
/// and [decode] dynamic data back to [PlanEnum].
class PlanEnumTypeTransformer {
  factory PlanEnumTypeTransformer() => _instance ??= const PlanEnumTypeTransformer._();

  const PlanEnumTypeTransformer._();

  String encode(PlanEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PlanEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PlanEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'FREE': return PlanEnum.FREE;
        case r'STARTER': return PlanEnum.STARTER;
        case r'LITE': return PlanEnum.LITE;
        case r'PRO': return PlanEnum.PRO;
        case r'PREMIUM': return PlanEnum.PREMIUM;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PlanEnumTypeTransformer] instance.
  static PlanEnumTypeTransformer _instance;
}

