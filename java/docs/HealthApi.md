# HealthApi

All URIs are relative to *https://dev.yago.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthRetrieve**](HealthApi.md#healthRetrieve) | **GET** /api/health/ | 


<a name="healthRetrieve"></a>
# **healthRetrieve**
> HealthStatus healthRetrieve()



Check health status of required subsystems.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.models.*;
import yago.client.apis.HealthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://dev.yago.cloud");

    HealthApi apiInstance = new HealthApi(defaultClient);
    try {
      HealthStatus result = apiInstance.healthRetrieve();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling HealthApi#healthRetrieve");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** |  |  -  |

