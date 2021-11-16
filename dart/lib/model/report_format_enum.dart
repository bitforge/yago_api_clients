//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ReportFormatEnum {
  /// Instantiate a new enum with the provided [value].
  const ReportFormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const summary = ReportFormatEnum._(r'summary');
  static const chronic = ReportFormatEnum._(r'chronic');

  /// List of all possible values in this [enum][ReportFormatEnum].
  static const values = <ReportFormatEnum>[
    summary,
    chronic,
  ];

  static ReportFormatEnum fromJson(dynamic value) =>
    ReportFormatEnumTypeTransformer().decode(value);

  static List<ReportFormatEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ReportFormatEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ReportFormatEnum>[];
}

/// Transformation class that can [encode] an instance of [ReportFormatEnum] to String,
/// and [decode] dynamic data back to [ReportFormatEnum].
class ReportFormatEnumTypeTransformer {
  factory ReportFormatEnumTypeTransformer() => _instance ??= const ReportFormatEnumTypeTransformer._();

  const ReportFormatEnumTypeTransformer._();

  String encode(ReportFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ReportFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ReportFormatEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'summary': return ReportFormatEnum.summary;
        case r'chronic': return ReportFormatEnum.chronic;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ReportFormatEnumTypeTransformer] instance.
  static ReportFormatEnumTypeTransformer _instance;
}

