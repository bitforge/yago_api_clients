//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ModelStatus {
  /// Instantiate a new enum with the provided [value].
  const ModelStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const DRAFT = ModelStatus._(r'DRAFT');
  static const READY = ModelStatus._(r'READY');
  static const ONLINE = ModelStatus._(r'ONLINE');

  /// List of all possible values in this [enum][ModelStatus].
  static const values = <ModelStatus>[
    DRAFT,
    READY,
    ONLINE,
  ];

  static ModelStatus fromJson(dynamic value) =>
    ModelStatusTypeTransformer().decode(value);

  static List<ModelStatus> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ModelStatus.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ModelStatus>[];
}

/// Transformation class that can [encode] an instance of [ModelStatus] to String,
/// and [decode] dynamic data back to [ModelStatus].
class ModelStatusTypeTransformer {
  factory ModelStatusTypeTransformer() => _instance ??= const ModelStatusTypeTransformer._();

  const ModelStatusTypeTransformer._();

  String encode(ModelStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a ModelStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ModelStatus decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'DRAFT': return ModelStatus.DRAFT;
        case r'READY': return ModelStatus.READY;
        case r'ONLINE': return ModelStatus.ONLINE;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ModelStatusTypeTransformer] instance.
  static ModelStatusTypeTransformer _instance;
}

