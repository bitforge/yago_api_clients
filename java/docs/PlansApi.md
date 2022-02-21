# PlansApi

All URIs are relative to *https://dev.yago.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**plansList**](PlansApi.md#plansList) | **GET** /api/plans/ | 


<a name="plansList"></a>
# **plansList**
> List&lt;PricingPlan&gt; plansList()



List all available pricing plans

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.models.*;
import yago.client.apis.PlansApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://dev.yago.cloud");

    PlansApi apiInstance = new PlansApi(defaultClient);
    try {
      List<PricingPlan> result = apiInstance.plansList();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PlansApi#plansList");
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

[**List&lt;PricingPlan&gt;**](PricingPlan.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** |  |  -  |

