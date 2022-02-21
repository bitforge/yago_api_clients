# HealthAPI

All URIs are relative to *https://cap.bitforge.zuerich*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthRetrieve**](HealthAPI.md#healthretrieve) | **GET** /api/health/ | 


# **healthRetrieve**
```swift
    open class func healthRetrieve(completion: @escaping (_ data: HealthStatus?, _ error: Error?) -> Void)
```



Check health status of required subsystems.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import YagoApi


HealthAPI.healthRetrieve() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
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

