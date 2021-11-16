# Genie.Api.Api.SubscriptionApi

All URIs are relative to *https://genie-ar.ch*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SubscriptionCreate**](SubscriptionApi.md#subscriptioncreate) | **POST** /api/subscription/ | 
[**SubscriptionDestroy**](SubscriptionApi.md#subscriptiondestroy) | **DELETE** /api/subscription/ | 
[**SubscriptionRetrieve**](SubscriptionApi.md#subscriptionretrieve) | **GET** /api/subscription/ | 


<a name="subscriptioncreate"></a>
# **SubscriptionCreate**
> NewSubscription SubscriptionCreate (NewSubscription newSubscription)



Create a new stripe Subscription for a Genie pricing plan in state incomplete. Use client_secret to submit payment method with a stripe element to activate subscription.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api.Api;
using Genie.Api.Client;
using Genie.Api.Model;

namespace Example
{
    public class SubscriptionCreateExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://genie-ar.ch";
            // Configure API key authorization: cookieAuth
            config.AddApiKey("sessionid", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("sessionid", "Bearer");
            // Configure Bearer token for authorization: jwtAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";
            // Configure API key authorization: tokenAuth
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new SubscriptionApi(config);
            var newSubscription = new NewSubscription(); // NewSubscription | 

            try
            {
                NewSubscription result = apiInstance.SubscriptionCreate(newSubscription);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SubscriptionApi.SubscriptionCreate: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
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
| **200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="subscriptiondestroy"></a>
# **SubscriptionDestroy**
> void SubscriptionDestroy ()



Cancel current subscription. Subscription will be valid until current payment schedule is finished.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api.Api;
using Genie.Api.Client;
using Genie.Api.Model;

namespace Example
{
    public class SubscriptionDestroyExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://genie-ar.ch";
            // Configure API key authorization: cookieAuth
            config.AddApiKey("sessionid", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("sessionid", "Bearer");
            // Configure Bearer token for authorization: jwtAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";
            // Configure API key authorization: tokenAuth
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new SubscriptionApi(config);

            try
            {
                apiInstance.SubscriptionDestroy();
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SubscriptionApi.SubscriptionDestroy: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | No response body |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="subscriptionretrieve"></a>
# **SubscriptionRetrieve**
> Subscription SubscriptionRetrieve ()



Get details of active subscription i customer is signed up.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api.Api;
using Genie.Api.Client;
using Genie.Api.Model;

namespace Example
{
    public class SubscriptionRetrieveExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://genie-ar.ch";
            // Configure API key authorization: cookieAuth
            config.AddApiKey("sessionid", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("sessionid", "Bearer");
            // Configure Bearer token for authorization: jwtAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";
            // Configure API key authorization: tokenAuth
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new SubscriptionApi(config);

            try
            {
                Subscription result = apiInstance.SubscriptionRetrieve();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SubscriptionApi.SubscriptionRetrieve: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
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
| **200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

