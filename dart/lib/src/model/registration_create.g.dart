// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegistrationCreate _$RegistrationCreateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'RegistrationCreate',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['email', 'password', 'redirect_url'],
        );
        final val = RegistrationCreate(
          customer: $checkedConvert('customer', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String),
          firstName: $checkedConvert('first_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
          password: $checkedConvert('password', (v) => v as String),
          redirectUrl: $checkedConvert('redirect_url', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'redirectUrl': 'redirect_url'
      },
    );

Map<String, dynamic> _$RegistrationCreateToJson(RegistrationCreate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer', instance.customer);
  val['email'] = instance.email;
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  val['password'] = instance.password;
  val['redirect_url'] = instance.redirectUrl;
  return val;
}
