# yago_cloud.api.StatsApi

## Load the API package
```dart
import 'package:yago_cloud/api.dart';
```

All URIs are relative to *https://yago.cloud*

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
import 'package:yago_cloud/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';

final api = YagoCloud().getStatsApi();
final GlobalStatistics globalStatistics = ; // GlobalStatistics | 

try {
    final response = api.statsGlobalChronicCreate(globalStatistics);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StatsApi->statsGlobalChronicCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **globalStatistics** | [**GlobalStatistics**](GlobalStatistics.md)|  | 

### Return type

[**List&lt;ChronicStats&gt;**](ChronicStats.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statsGlobalSummaryCreate**
> SummaryStats statsGlobalSummaryCreate(globalStatistics)



Traffic analytics over all projects and models.

### Example
```dart
import 'package:yago_cloud/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';

final api = YagoCloud().getStatsApi();
final GlobalStatistics globalStatistics = ; // GlobalStatistics | 

try {
    final response = api.statsGlobalSummaryCreate(globalStatistics);
    print(response);
} catch on DioException (e) {
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

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statsProjectChronicCreate**
> List<ChronicStats> statsProjectChronicCreate(id, projectStatistics)



Chronic statistics for single project and all models of that project.

### Example
```dart
import 'package:yago_cloud/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';

final api = YagoCloud().getStatsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final ProjectStatistics projectStatistics = ; // ProjectStatistics | 

try {
    final response = api.statsProjectChronicCreate(id, projectStatistics);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StatsApi->statsProjectChronicCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **projectStatistics** | [**ProjectStatistics**](ProjectStatistics.md)|  | 

### Return type

[**List&lt;ChronicStats&gt;**](ChronicStats.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statsProjectSummaryCreate**
> SummaryStats statsProjectSummaryCreate(id, projectStatistics)



Summary statistics for single project and all models of that project.

### Example
```dart
import 'package:yago_cloud/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';

final api = YagoCloud().getStatsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final ProjectStatistics projectStatistics = ; // ProjectStatistics | 

try {
    final response = api.statsProjectSummaryCreate(id, projectStatistics);
    print(response);
} catch on DioException (e) {
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

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

