// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => $checkedCreate(
      'User',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'id',
            'email',
            'customer_name',
            'date_joined',
            'is_active',
            'is_staff',
            'is_superuser',
            'is_contractor'
          ],
        );
        final val = User(
          id: $checkedConvert('id', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          firstName: $checkedConvert('first_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
          customerName: $checkedConvert('customer_name', (v) => v as String),
          dateJoined: $checkedConvert(
              'date_joined', (v) => DateTime.parse(v as String)),
          isActive: $checkedConvert('is_active', (v) => v as bool),
          isStaff: $checkedConvert('is_staff', (v) => v as bool),
          isSuperuser: $checkedConvert('is_superuser', (v) => v as bool),
          isContractor: $checkedConvert('is_contractor', (v) => v as bool),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'customerName': 'customer_name',
        'dateJoined': 'date_joined',
        'isActive': 'is_active',
        'isStaff': 'is_staff',
        'isSuperuser': 'is_superuser',
        'isContractor': 'is_contractor'
      },
    );

Map<String, dynamic> _$UserToJson(User instance) {
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
  val['customer_name'] = instance.customerName;
  val['date_joined'] = instance.dateJoined.toIso8601String();
  val['is_active'] = instance.isActive;
  val['is_staff'] = instance.isStaff;
  val['is_superuser'] = instance.isSuperuser;
  val['is_contractor'] = instance.isContractor;
  return val;
}
