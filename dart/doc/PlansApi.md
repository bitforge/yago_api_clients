# yago_cloud.api.PlansApi

## Load the API package
```dart
import 'package:yago_cloud/api.dart';
```

All URIs are relative to *https://yago.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**plansList**](PlansApi.md#planslist) | **GET** /api/plans/ | 


# **plansList**
> List<PricingPlan> plansList()



List all available pricing plans

### Example
```dart
import 'package:yago_cloud/api.dart';

final api = YagoCloud().getPlansApi();

try {
    final response = api.plansList();
    print(response);
} catch on DioException (e) {
    print('Exception when calling PlansApi->plansList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;PricingPlan&gt;**](PricingPlan.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

