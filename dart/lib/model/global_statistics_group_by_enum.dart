//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// * `all` - - * `events` - Events * `models` - Modelle * `platforms` - Plattformen * `languages` - Sprachen * `devices` - Gerätehersteller * `browsers` - Browser * `countries` - Länder * `projects` - Projekte
class GlobalStatisticsGroupByEnum {
  /// Instantiate a new enum with the provided [value].
  const GlobalStatisticsGroupByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const all = GlobalStatisticsGroupByEnum._(r'all');
  static const events = GlobalStatisticsGroupByEnum._(r'events');
  static const models = GlobalStatisticsGroupByEnum._(r'models');
  static const platforms = GlobalStatisticsGroupByEnum._(r'platforms');
  static const languages = GlobalStatisticsGroupByEnum._(r'languages');
  static const devices = GlobalStatisticsGroupByEnum._(r'devices');
  static const browsers = GlobalStatisticsGroupByEnum._(r'browsers');
  static const countries = GlobalStatisticsGroupByEnum._(r'countries');
  static const projects = GlobalStatisticsGroupByEnum._(r'projects');

  /// List of all possible values in this [enum][GlobalStatisticsGroupByEnum].
  static const values = <GlobalStatisticsGroupByEnum>[
    all,
    events,
    models,
    platforms,
    languages,
    devices,
    browsers,
    countries,
    projects,
  ];

  static GlobalStatisticsGroupByEnum? fromJson(dynamic value) =>
      GlobalStatisticsGroupByEnumTypeTransformer().decode(value);

  static List<GlobalStatisticsGroupByEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GlobalStatisticsGroupByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GlobalStatisticsGroupByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GlobalStatisticsGroupByEnum] to String,
/// and [decode] dynamic data back to [GlobalStatisticsGroupByEnum].
class GlobalStatisticsGroupByEnumTypeTransformer {
  factory GlobalStatisticsGroupByEnumTypeTransformer() =>
      _instance ??= const GlobalStatisticsGroupByEnumTypeTransformer._();

  const GlobalStatisticsGroupByEnumTypeTransformer._();

  String encode(GlobalStatisticsGroupByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GlobalStatisticsGroupByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GlobalStatisticsGroupByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'all':
          return GlobalStatisticsGroupByEnum.all;
        case r'events':
          return GlobalStatisticsGroupByEnum.events;
        case r'models':
          return GlobalStatisticsGroupByEnum.models;
        case r'platforms':
          return GlobalStatisticsGroupByEnum.platforms;
        case r'languages':
          return GlobalStatisticsGroupByEnum.languages;
        case r'devices':
          return GlobalStatisticsGroupByEnum.devices;
        case r'browsers':
          return GlobalStatisticsGroupByEnum.browsers;
        case r'countries':
          return GlobalStatisticsGroupByEnum.countries;
        case r'projects':
          return GlobalStatisticsGroupByEnum.projects;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GlobalStatisticsGroupByEnumTypeTransformer] instance.
  static GlobalStatisticsGroupByEnumTypeTransformer? _instance;
}
