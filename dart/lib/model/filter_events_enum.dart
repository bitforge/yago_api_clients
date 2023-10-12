//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// * `all` - Alle * `ar` - AR Views * `model` - Model Views
class FilterEventsEnum {
  /// Instantiate a new enum with the provided [value].
  const FilterEventsEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const all = FilterEventsEnum._(r'all');
  static const ar = FilterEventsEnum._(r'ar');
  static const model = FilterEventsEnum._(r'model');

  /// List of all possible values in this [enum][FilterEventsEnum].
  static const values = <FilterEventsEnum>[
    all,
    ar,
    model,
  ];

  static FilterEventsEnum? fromJson(dynamic value) => FilterEventsEnumTypeTransformer().decode(value);

  static List<FilterEventsEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FilterEventsEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilterEventsEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FilterEventsEnum] to String,
/// and [decode] dynamic data back to [FilterEventsEnum].
class FilterEventsEnumTypeTransformer {
  factory FilterEventsEnumTypeTransformer() => _instance ??= const FilterEventsEnumTypeTransformer._();

  const FilterEventsEnumTypeTransformer._();

  String encode(FilterEventsEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FilterEventsEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FilterEventsEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'all':
          return FilterEventsEnum.all;
        case r'ar':
          return FilterEventsEnum.ar;
        case r'model':
          return FilterEventsEnum.model;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FilterEventsEnumTypeTransformer] instance.
  static FilterEventsEnumTypeTransformer? _instance;
}
