# openapi.api.PlansApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev.yago.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**plansList**](PlansApi.md#planslist) | **GET** /api/plans/ | 


# **plansList**
> List<PricingPlan> plansList()



List all available pricing plans

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = PlansApi();

try {
    final result = api_instance.plansList();
    print(result);
} catch (e) {
    print('Exception when calling PlansApi->plansList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<PricingPlan>**](PricingPlan.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

