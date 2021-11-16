//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ProjectsStatisticsGroupByEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectsStatisticsGroupByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const all = ProjectsStatisticsGroupByEnum._(r'all');
  static const events = ProjectsStatisticsGroupByEnum._(r'events');
  static const models = ProjectsStatisticsGroupByEnum._(r'models');
  static const platforms = ProjectsStatisticsGroupByEnum._(r'platforms');
  static const languages = ProjectsStatisticsGroupByEnum._(r'languages');
  static const devices = ProjectsStatisticsGroupByEnum._(r'devices');
  static const browsers = ProjectsStatisticsGroupByEnum._(r'browsers');
  static const countries = ProjectsStatisticsGroupByEnum._(r'countries');

  /// List of all possible values in this [enum][ProjectsStatisticsGroupByEnum].
  static const values = <ProjectsStatisticsGroupByEnum>[
    all,
    events,
    models,
    platforms,
    languages,
    devices,
    browsers,
    countries,
  ];

  static ProjectsStatisticsGroupByEnum fromJson(dynamic value) =>
    ProjectsStatisticsGroupByEnumTypeTransformer().decode(value);

  static List<ProjectsStatisticsGroupByEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ProjectsStatisticsGroupByEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ProjectsStatisticsGroupByEnum>[];
}

/// Transformation class that can [encode] an instance of [ProjectsStatisticsGroupByEnum] to String,
/// and [decode] dynamic data back to [ProjectsStatisticsGroupByEnum].
class ProjectsStatisticsGroupByEnumTypeTransformer {
  factory ProjectsStatisticsGroupByEnumTypeTransformer() => _instance ??= const ProjectsStatisticsGroupByEnumTypeTransformer._();

  const ProjectsStatisticsGroupByEnumTypeTransformer._();

  String encode(ProjectsStatisticsGroupByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectsStatisticsGroupByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectsStatisticsGroupByEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'all': return ProjectsStatisticsGroupByEnum.all;
        case r'events': return ProjectsStatisticsGroupByEnum.events;
        case r'models': return ProjectsStatisticsGroupByEnum.models;
        case r'platforms': return ProjectsStatisticsGroupByEnum.platforms;
        case r'languages': return ProjectsStatisticsGroupByEnum.languages;
        case r'devices': return ProjectsStatisticsGroupByEnum.devices;
        case r'browsers': return ProjectsStatisticsGroupByEnum.browsers;
        case r'countries': return ProjectsStatisticsGroupByEnum.countries;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectsStatisticsGroupByEnumTypeTransformer] instance.
  static ProjectsStatisticsGroupByEnumTypeTransformer _instance;
}

