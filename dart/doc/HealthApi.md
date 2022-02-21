# openapi.api.HealthApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev.yago.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthRetrieve**](HealthApi.md#healthretrieve) | **GET** /api/health/ | 


# **healthRetrieve**
> HealthStatus healthRetrieve()



Check health status of required subsystems.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HealthApi();

try {
    final result = api_instance.healthRetrieve();
    print(result);
} catch (e) {
    print('Exception when calling HealthApi->healthRetrieve: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HealthStatus**](HealthStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

