// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'membership.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Membership _$MembershipFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Membership',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['id', 'project', 'user', 'created'],
        );
        final val = Membership(
          id: $checkedConvert('id', (v) => v as String),
          project: $checkedConvert('project', (v) => v as String),
          user: $checkedConvert('user', (v) => v as String),
          role: $checkedConvert(
              'role', (v) => $enumDecodeNullable(_$RoleEnumEnumMap, v)),
          created:
              $checkedConvert('created', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$MembershipToJson(Membership instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'project': instance.project,
    'user': instance.user,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('role', _$RoleEnumEnumMap[instance.role]);
  val['created'] = instance.created.toIso8601String();
  return val;
}

const _$RoleEnumEnumMap = {
  RoleEnum.OWNER: 'OWNER',
  RoleEnum.MEMBER: 'MEMBER',
  RoleEnum.MANAGER: 'MANAGER',
  RoleEnum.DESIGNER: 'DESIGNER',
};
