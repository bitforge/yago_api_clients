//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TimeRangeEnum {
  /// Instantiate a new enum with the provided [value].
  const TimeRangeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const n24h = TimeRangeEnum._(r'24h');
  static const n48h = TimeRangeEnum._(r'48h');
  static const n7d = TimeRangeEnum._(r'7d');
  static const n14d = TimeRangeEnum._(r'14d');
  static const n1m = TimeRangeEnum._(r'1m');
  static const n2m = TimeRangeEnum._(r'2m');
  static const n3m = TimeRangeEnum._(r'3m');
  static const n6m = TimeRangeEnum._(r'6m');
  static const n1y = TimeRangeEnum._(r'1y');
  static const n2y = TimeRangeEnum._(r'2y');

  /// List of all possible values in this [enum][TimeRangeEnum].
  static const values = <TimeRangeEnum>[
    n24h,
    n48h,
    n7d,
    n14d,
    n1m,
    n2m,
    n3m,
    n6m,
    n1y,
    n2y,
  ];

  static TimeRangeEnum? fromJson(dynamic value) => TimeRangeEnumTypeTransformer().decode(value);

  static List<TimeRangeEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TimeRangeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimeRangeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TimeRangeEnum] to String,
/// and [decode] dynamic data back to [TimeRangeEnum].
class TimeRangeEnumTypeTransformer {
  factory TimeRangeEnumTypeTransformer() => _instance ??= const TimeRangeEnumTypeTransformer._();

  const TimeRangeEnumTypeTransformer._();

  String encode(TimeRangeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TimeRangeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TimeRangeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'24h':
          return TimeRangeEnum.n24h;
        case r'48h':
          return TimeRangeEnum.n48h;
        case r'7d':
          return TimeRangeEnum.n7d;
        case r'14d':
          return TimeRangeEnum.n14d;
        case r'1m':
          return TimeRangeEnum.n1m;
        case r'2m':
          return TimeRangeEnum.n2m;
        case r'3m':
          return TimeRangeEnum.n3m;
        case r'6m':
          return TimeRangeEnum.n6m;
        case r'1y':
          return TimeRangeEnum.n1y;
        case r'2y':
          return TimeRangeEnum.n2y;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TimeRangeEnumTypeTransformer] instance.
  static TimeRangeEnumTypeTransformer? _instance;
}
