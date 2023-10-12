// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_verified.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserVerified _$UserVerifiedFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserVerified',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['id', 'email', 'access', 'refresh'],
        );
        final val = UserVerified(
          id: $checkedConvert('id', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          firstName: $checkedConvert('first_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
          dateJoined: $checkedConvert('date_joined',
              (v) => v == null ? null : DateTime.parse(v as String)),
          access: $checkedConvert('access', (v) => v as String),
          refresh: $checkedConvert('refresh', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'dateJoined': 'date_joined'
      },
    );

Map<String, dynamic> _$UserVerifiedToJson(UserVerified instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'email': instance.email,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('date_joined', instance.dateJoined?.toIso8601String());
  val['access'] = instance.access;
  val['refresh'] = instance.refresh;
  return val;
}
