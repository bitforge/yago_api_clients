# SubscriptionApi

All URIs are relative to *https://dev.yago.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscriptionCreate**](SubscriptionApi.md#subscriptionCreate) | **POST** /api/subscription/ | 
[**subscriptionDestroy**](SubscriptionApi.md#subscriptionDestroy) | **DELETE** /api/subscription/ | 
[**subscriptionRetrieve**](SubscriptionApi.md#subscriptionRetrieve) | **GET** /api/subscription/ | 


<a name="subscriptionCreate"></a>
# **subscriptionCreate**
> NewSubscription subscriptionCreate(newSubscription)



Create a new stripe Subscription for a Genie pricing plan in state incomplete. Use client_secret to submit payment method with a stripe element to activate subscription.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.SubscriptionApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://dev.yago.cloud");
    
    // Configure API key authorization: cookieAuth
    ApiKeyAuth cookieAuth = (ApiKeyAuth) defaultClient.getAuthentication("cookieAuth");
    cookieAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //cookieAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: jwtAuth
    HttpBearerAuth jwtAuth = (HttpBearerAuth) defaultClient.getAuthentication("jwtAuth");
    jwtAuth.setBearerToken("BEARER TOKEN");

    // Configure API key authorization: tokenAuth
    ApiKeyAuth tokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("tokenAuth");
    tokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //tokenAuth.setApiKeyPrefix("Token");

    SubscriptionApi apiInstance = new SubscriptionApi(defaultClient);
    NewSubscription newSubscription = new NewSubscription(); // NewSubscription | 
    try {
      NewSubscription result = apiInstance.subscriptionCreate(newSubscription);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SubscriptionApi#subscriptionCreate");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newSubscription** | [**NewSubscription**](NewSubscription.md)|  |

### Return type

[**NewSubscription**](NewSubscription.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** |  |  -  |

<a name="subscriptionDestroy"></a>
# **subscriptionDestroy**
> subscriptionDestroy()



Cancel current subscription. Subscription will be valid until current payment schedule is finished.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.SubscriptionApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://dev.yago.cloud");
    
    // Configure API key authorization: cookieAuth
    ApiKeyAuth cookieAuth = (ApiKeyAuth) defaultClient.getAuthentication("cookieAuth");
    cookieAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //cookieAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: jwtAuth
    HttpBearerAuth jwtAuth = (HttpBearerAuth) defaultClient.getAuthentication("jwtAuth");
    jwtAuth.setBearerToken("BEARER TOKEN");

    // Configure API key authorization: tokenAuth
    ApiKeyAuth tokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("tokenAuth");
    tokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //tokenAuth.setApiKeyPrefix("Token");

    SubscriptionApi apiInstance = new SubscriptionApi(defaultClient);
    try {
      apiInstance.subscriptionDestroy();
    } catch (ApiException e) {
      System.err.println("Exception when calling SubscriptionApi#subscriptionDestroy");
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

null (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | No response body |  -  |

<a name="subscriptionRetrieve"></a>
# **subscriptionRetrieve**
> Subscription subscriptionRetrieve()



Get details of active subscription i customer is signed up.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.SubscriptionApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://dev.yago.cloud");
    
    // Configure API key authorization: cookieAuth
    ApiKeyAuth cookieAuth = (ApiKeyAuth) defaultClient.getAuthentication("cookieAuth");
    cookieAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //cookieAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: jwtAuth
    HttpBearerAuth jwtAuth = (HttpBearerAuth) defaultClient.getAuthentication("jwtAuth");
    jwtAuth.setBearerToken("BEARER TOKEN");

    // Configure API key authorization: tokenAuth
    ApiKeyAuth tokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("tokenAuth");
    tokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //tokenAuth.setApiKeyPrefix("Token");

    SubscriptionApi apiInstance = new SubscriptionApi(defaultClient);
    try {
      Subscription result = apiInstance.subscriptionRetrieve();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SubscriptionApi#subscriptionRetrieve");
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

[**Subscription**](Subscription.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** |  |  -  |

