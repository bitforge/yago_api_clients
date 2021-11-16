//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CollectionMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const CollectionMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const chargeAutomatically = CollectionMethodEnum._(r'charge_automatically');
  static const sendInvoice = CollectionMethodEnum._(r'send_invoice');

  /// List of all possible values in this [enum][CollectionMethodEnum].
  static const values = <CollectionMethodEnum>[
    chargeAutomatically,
    sendInvoice,
  ];

  static CollectionMethodEnum fromJson(dynamic value) =>
    CollectionMethodEnumTypeTransformer().decode(value);

  static List<CollectionMethodEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CollectionMethodEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CollectionMethodEnum>[];
}

/// Transformation class that can [encode] an instance of [CollectionMethodEnum] to String,
/// and [decode] dynamic data back to [CollectionMethodEnum].
class CollectionMethodEnumTypeTransformer {
  factory CollectionMethodEnumTypeTransformer() => _instance ??= const CollectionMethodEnumTypeTransformer._();

  const CollectionMethodEnumTypeTransformer._();

  String encode(CollectionMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CollectionMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CollectionMethodEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'charge_automatically': return CollectionMethodEnum.chargeAutomatically;
        case r'send_invoice': return CollectionMethodEnum.sendInvoice;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CollectionMethodEnumTypeTransformer] instance.
  static CollectionMethodEnumTypeTransformer _instance;
}

