//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ProjectStatisticsGroupByEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectStatisticsGroupByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const all = ProjectStatisticsGroupByEnum._(r'all');
  static const events = ProjectStatisticsGroupByEnum._(r'events');
  static const models = ProjectStatisticsGroupByEnum._(r'models');
  static const platforms = ProjectStatisticsGroupByEnum._(r'platforms');
  static const languages = ProjectStatisticsGroupByEnum._(r'languages');
  static const devices = ProjectStatisticsGroupByEnum._(r'devices');
  static const browsers = ProjectStatisticsGroupByEnum._(r'browsers');
  static const countries = ProjectStatisticsGroupByEnum._(r'countries');

  /// List of all possible values in this [enum][ProjectStatisticsGroupByEnum].
  static const values = <ProjectStatisticsGroupByEnum>[
    all,
    events,
    models,
    platforms,
    languages,
    devices,
    browsers,
    countries,
  ];

  static ProjectStatisticsGroupByEnum fromJson(dynamic value) =>
    ProjectStatisticsGroupByEnumTypeTransformer().decode(value);

  static List<ProjectStatisticsGroupByEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ProjectStatisticsGroupByEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ProjectStatisticsGroupByEnum>[];
}

/// Transformation class that can [encode] an instance of [ProjectStatisticsGroupByEnum] to String,
/// and [decode] dynamic data back to [ProjectStatisticsGroupByEnum].
class ProjectStatisticsGroupByEnumTypeTransformer {
  factory ProjectStatisticsGroupByEnumTypeTransformer() => _instance ??= const ProjectStatisticsGroupByEnumTypeTransformer._();

  const ProjectStatisticsGroupByEnumTypeTransformer._();

  String encode(ProjectStatisticsGroupByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectStatisticsGroupByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectStatisticsGroupByEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'all': return ProjectStatisticsGroupByEnum.all;
        case r'events': return ProjectStatisticsGroupByEnum.events;
        case r'models': return ProjectStatisticsGroupByEnum.models;
        case r'platforms': return ProjectStatisticsGroupByEnum.platforms;
        case r'languages': return ProjectStatisticsGroupByEnum.languages;
        case r'devices': return ProjectStatisticsGroupByEnum.devices;
        case r'browsers': return ProjectStatisticsGroupByEnum.browsers;
        case r'countries': return ProjectStatisticsGroupByEnum.countries;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectStatisticsGroupByEnumTypeTransformer] instance.
  static ProjectStatisticsGroupByEnumTypeTransformer _instance;
}
