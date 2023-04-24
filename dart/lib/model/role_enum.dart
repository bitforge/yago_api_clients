//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// * `OWNER` - Owner * `MEMBER` - Member * `MANAGER` - Manager * `DESIGNER` - Designer
class RoleEnum {
  /// Instantiate a new enum with the provided [value].
  const RoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OWNER = RoleEnum._(r'OWNER');
  static const MEMBER = RoleEnum._(r'MEMBER');
  static const MANAGER = RoleEnum._(r'MANAGER');
  static const DESIGNER = RoleEnum._(r'DESIGNER');

  /// List of all possible values in this [enum][RoleEnum].
  static const values = <RoleEnum>[
    OWNER,
    MEMBER,
    MANAGER,
    DESIGNER,
  ];

  static RoleEnum? fromJson(dynamic value) => RoleEnumTypeTransformer().decode(value);

  static List<RoleEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RoleEnum] to String,
/// and [decode] dynamic data back to [RoleEnum].
class RoleEnumTypeTransformer {
  factory RoleEnumTypeTransformer() => _instance ??= const RoleEnumTypeTransformer._();

  const RoleEnumTypeTransformer._();

  String encode(RoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OWNER':
          return RoleEnum.OWNER;
        case r'MEMBER':
          return RoleEnum.MEMBER;
        case r'MANAGER':
          return RoleEnum.MANAGER;
        case r'DESIGNER':
          return RoleEnum.DESIGNER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RoleEnumTypeTransformer] instance.
  static RoleEnumTypeTransformer? _instance;
}
