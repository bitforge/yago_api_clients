# openapi.api.UsersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev.yago.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersList**](UsersApi.md#userslist) | **GET** /api/users/ | 
[**usersMeRetrieve**](UsersApi.md#usersmeretrieve) | **GET** /api/users/me/ | 
[**usersMeUpdate**](UsersApi.md#usersmeupdate) | **PUT** /api/users/me/ | 
[**usersRetrieve**](UsersApi.md#usersretrieve) | **GET** /api/users/{id}/ | 


# **usersList**
> List<User> usersList(projects)



Lists all users that are members in the same projects.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = UsersApi();
final projects = []; // List<String> | 

try {
    final result = api_instance.usersList(projects);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projects** | [**List<String>**](String.md)|  | [optional] [default to const []]

### Return type

[**List<User>**](User.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersMeRetrieve**
> User usersMeRetrieve()



Get or update current user details.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = UsersApi();

try {
    final result = api_instance.usersMeRetrieve();
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersMeRetrieve: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersMeUpdate**
> User usersMeUpdate(user)



Get or update current user details.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = UsersApi();
final user = User(); // User | 

try {
    final result = api_instance.usersMeUpdate(user);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersMeUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md)|  | [optional] 

### Return type

[**User**](User.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersRetrieve**
> User usersRetrieve(id)



Details of a single user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: jwtAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('jwtAuth').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = UsersApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this User.

try {
    final result = api_instance.usersRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A UUID string identifying this User. | 

### Return type

[**User**](User.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

