# openapi.api.StatsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev.yago.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**statsGlobalChronicCreate**](StatsApi.md#statsglobalchroniccreate) | **POST** /api/stats/global/chronic/ | 
[**statsGlobalSummaryCreate**](StatsApi.md#statsglobalsummarycreate) | **POST** /api/stats/global/summary/ | 
[**statsProjectChronicCreate**](StatsApi.md#statsprojectchroniccreate) | **POST** /api/stats/project/{id}/chronic/ | 
[**statsProjectSummaryCreate**](StatsApi.md#statsprojectsummarycreate) | **POST** /api/stats/project/{id}/summary/ | 


# **statsGlobalChronicCreate**
> List<ChronicStats> statsGlobalChronicCreate(globalStatistics)



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
    final result = api_instance.statsGlobalChronicCreate(globalStatistics);
    print(result);
} catch (e) {
    print('Exception when calling StatsApi->statsGlobalChronicCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **globalStatistics** | [**GlobalStatistics**](GlobalStatistics.md)|  | 

### Return type

[**List<ChronicStats>**](ChronicStats.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statsGlobalSummaryCreate**
> SummaryStats statsGlobalSummaryCreate(globalStatistics)



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
    final result = api_instance.statsGlobalSummaryCreate(globalStatistics);
    print(result);
} catch (e) {
    print('Exception when calling StatsApi->statsGlobalSummaryCreate: $e\n');
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

# **statsProjectChronicCreate**
> List<ChronicStats> statsProjectChronicCreate(id, projectStatistics)



Chronic statistics for single project and all models of that project.

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
final projectStatistics = ProjectStatistics(); // ProjectStatistics | 

try {
    final result = api_instance.statsProjectChronicCreate(id, projectStatistics);
    print(result);
} catch (e) {
    print('Exception when calling StatsApi->statsProjectChronicCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **projectStatistics** | [**ProjectStatistics**](ProjectStatistics.md)|  | 

### Return type

[**List<ChronicStats>**](ChronicStats.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statsProjectSummaryCreate**
> SummaryStats statsProjectSummaryCreate(id, projectStatistics)



Summary statistics for single project and all models of that project.

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
final projectStatistics = ProjectStatistics(); // ProjectStatistics | 

try {
    final result = api_instance.statsProjectSummaryCreate(id, projectStatistics);
    print(result);
} catch (e) {
    print('Exception when calling StatsApi->statsProjectSummaryCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **projectStatistics** | [**ProjectStatistics**](ProjectStatistics.md)|  | 

### Return type

[**SummaryStats**](SummaryStats.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

