# openapi.api.StatsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://genie-ar.ch*

Method | HTTP request | Description
------------- | ------------- | -------------
[**statsGlobalCreate**](StatsApi.md#statsglobalcreate) | **POST** /api/stats/global/ | 
[**statsProjectCreate**](StatsApi.md#statsprojectcreate) | **POST** /api/stats/project/{id}/ | 


# **statsGlobalCreate**
> SummaryStats statsGlobalCreate(globalStatistics)



Traffic analytics over all projects and models.

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

final api_instance = StatsApi();
final globalStatistics = GlobalStatistics(); // GlobalStatistics | 

try {
    final result = api_instance.statsGlobalCreate(globalStatistics);
    print(result);
} catch (e) {
    print('Exception when calling StatsApi->statsGlobalCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **globalStatistics** | [**GlobalStatistics**](GlobalStatistics.md)|  | 

### Return type

[**SummaryStats**](SummaryStats.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statsProjectCreate**
> SummaryStats statsProjectCreate(id, projectsStatistics)



Traffic for single project and all models of that project. Raises 404 if the user is not allowed to view data of this project.

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

final api_instance = StatsApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final projectsStatistics = ProjectsStatistics(); // ProjectsStatistics | 

try {
    final result = api_instance.statsProjectCreate(id, projectsStatistics);
    print(result);
} catch (e) {
    print('Exception when calling StatsApi->statsProjectCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **projectsStatistics** | [**ProjectsStatistics**](ProjectsStatistics.md)|  | 

### Return type

[**SummaryStats**](SummaryStats.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

