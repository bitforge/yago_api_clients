# openapi.api.RegistrationApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev.yago.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**registrationCreate**](RegistrationApi.md#registrationcreate) | **POST** /api/registration/ | 
[**registrationVerifyCreate**](RegistrationApi.md#registrationverifycreate) | **POST** /api/registration/verify/{code}/ | 


# **registrationCreate**
> Registration registrationCreate(registrationCreate)



Create a new registeration and sends out an activation email.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = RegistrationApi();
final registrationCreate = RegistrationCreate(); // RegistrationCreate | 

try {
    final result = api_instance.registrationCreate(registrationCreate);
    print(result);
} catch (e) {
    print('Exception when calling RegistrationApi->registrationCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registrationCreate** | [**RegistrationCreate**](RegistrationCreate.md)|  | 

### Return type

[**Registration**](Registration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registrationVerifyCreate**
> UserVerified registrationVerifyCreate(code)



Verifiy registration email, create user and return login token

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = RegistrationApi();
final code = code_example; // String | 

try {
    final result = api_instance.registrationVerifyCreate(code);
    print(result);
} catch (e) {
    print('Exception when calling RegistrationApi->registrationVerifyCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**|  | 

### Return type

[**UserVerified**](UserVerified.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

