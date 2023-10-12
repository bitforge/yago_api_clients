# yago_cloud.api.SubscriptionApi

## Load the API package
```dart
import 'package:yago_cloud/api.dart';
```

All URIs are relative to *https://yago.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscriptionCreate**](SubscriptionApi.md#subscriptioncreate) | **POST** /api/subscription/ | 
[**subscriptionDestroy**](SubscriptionApi.md#subscriptiondestroy) | **DELETE** /api/subscription/ | 
[**subscriptionRetrieve**](SubscriptionApi.md#subscriptionretrieve) | **GET** /api/subscription/ | 


# **subscriptionCreate**
> NewSubscription subscriptionCreate(newSubscriptionCreate)



Create a new subscription for a Yago pricing plan.

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

final api = YagoCloud().getSubscriptionApi();
final NewSubscriptionCreate newSubscriptionCreate = ; // NewSubscriptionCreate | 

try {
    final response = api.subscriptionCreate(newSubscriptionCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SubscriptionApi->subscriptionCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newSubscriptionCreate** | [**NewSubscriptionCreate**](NewSubscriptionCreate.md)|  | 

### Return type

[**NewSubscription**](NewSubscription.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionDestroy**
> subscriptionDestroy()



Cancel current subscription.

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

final api = YagoCloud().getSubscriptionApi();

try {
    api.subscriptionDestroy();
} catch on DioException (e) {
    print('Exception when calling SubscriptionApi->subscriptionDestroy: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionRetrieve**
> Subscription subscriptionRetrieve()



Get details of active subscription if customer is signed up.

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

final api = YagoCloud().getSubscriptionApi();

try {
    final response = api.subscriptionRetrieve();
    print(response);
} catch on DioException (e) {
    print('Exception when calling SubscriptionApi->subscriptionRetrieve: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Subscription**](Subscription.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

