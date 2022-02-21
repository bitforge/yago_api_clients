# openapi.api.AuthApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev.yago.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authGoogleCreate**](AuthApi.md#authgooglecreate) | **POST** /api/auth/google/ | 
[**authLoginCreate**](AuthApi.md#authlogincreate) | **POST** /api/auth/login/ | 
[**authPasswordResetConfirmCreate**](AuthApi.md#authpasswordresetconfirmcreate) | **POST** /api/auth/password/reset/confirm/ | 
[**authPasswordResetCreate**](AuthApi.md#authpasswordresetcreate) | **POST** /api/auth/password/reset/ | 
[**authRefreshCreate**](AuthApi.md#authrefreshcreate) | **POST** /api/auth/refresh/ | 
[**authVerifyCreate**](AuthApi.md#authverifycreate) | **POST** /api/auth/verify/ | 


# **authGoogleCreate**
> TokenObtainResponse authGoogleCreate(googleIdToken)



Takes a Google ID token and returns an access and refresh token for this API. If token is valid and user does not already exist, a new Genie user will be created.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AuthApi();
final googleIdToken = GoogleIdToken(); // GoogleIdToken | 

try {
    final result = api_instance.authGoogleCreate(googleIdToken);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authGoogleCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **googleIdToken** | [**GoogleIdToken**](GoogleIdToken.md)|  | 

### Return type

[**TokenObtainResponse**](TokenObtainResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authLoginCreate**
> TokenObtainResponse authLoginCreate(tokenObtainRequest)



Takes a set of user credentials and returns an access and refresh JSON web token pair to prove the authentication of those credentials.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AuthApi();
final tokenObtainRequest = TokenObtainRequest(); // TokenObtainRequest | 

try {
    final result = api_instance.authLoginCreate(tokenObtainRequest);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authLoginCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenObtainRequest** | [**TokenObtainRequest**](TokenObtainRequest.md)|  | 

### Return type

[**TokenObtainResponse**](TokenObtainResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authPasswordResetConfirmCreate**
> PasswordResetConfirm authPasswordResetConfirmCreate(passwordResetConfirm)



Password reset e-mail link is confirmed, reset the user's password.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AuthApi();
final passwordResetConfirm = PasswordResetConfirm(); // PasswordResetConfirm | 

try {
    final result = api_instance.authPasswordResetConfirmCreate(passwordResetConfirm);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authPasswordResetConfirmCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **passwordResetConfirm** | [**PasswordResetConfirm**](PasswordResetConfirm.md)|  | 

### Return type

[**PasswordResetConfirm**](PasswordResetConfirm.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authPasswordResetCreate**
> PasswordReset authPasswordResetCreate(passwordReset)



Request password reset. Send an email to the user first.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AuthApi();
final passwordReset = PasswordReset(); // PasswordReset | 

try {
    final result = api_instance.authPasswordResetCreate(passwordReset);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authPasswordResetCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **passwordReset** | [**PasswordReset**](PasswordReset.md)|  | 

### Return type

[**PasswordReset**](PasswordReset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authRefreshCreate**
> TokenRefreshResponse authRefreshCreate(tokenRefreshRequest)



Takes a refresh type JSON web token and returns an access type JSON web token if the refresh token is valid.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AuthApi();
final tokenRefreshRequest = TokenRefreshRequest(); // TokenRefreshRequest | 

try {
    final result = api_instance.authRefreshCreate(tokenRefreshRequest);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authRefreshCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenRefreshRequest** | [**TokenRefreshRequest**](TokenRefreshRequest.md)|  | 

### Return type

[**TokenRefreshResponse**](TokenRefreshResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authVerifyCreate**
> authVerifyCreate(tokenVerify)



Takes a token and indicates if it is valid.  This view provides no information about a token's fitness for a particular use.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AuthApi();
final tokenVerify = TokenVerify(); // TokenVerify | 

try {
    api_instance.authVerifyCreate(tokenVerify);
} catch (e) {
    print('Exception when calling AuthApi->authVerifyCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenVerify** | [**TokenVerify**](TokenVerify.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

