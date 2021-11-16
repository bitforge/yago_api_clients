# Genie.Api.Api.PlansApi

All URIs are relative to *https://genie-ar.ch*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PlansList**](PlansApi.md#planslist) | **GET** /api/plans/ | 


<a name="planslist"></a>
# **PlansList**
> List&lt;PricingPlan&gt; PlansList ()



List all available pricing plans

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api.Api;
using Genie.Api.Client;
using Genie.Api.Model;

namespace Example
{
    public class PlansListExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://genie-ar.ch";
            var apiInstance = new PlansApi(config);

            try
            {
                List<PricingPlan> result = apiInstance.PlansList();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling PlansApi.PlansList: " + e.Message );
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

[**List&lt;PricingPlan&gt;**](PricingPlan.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

