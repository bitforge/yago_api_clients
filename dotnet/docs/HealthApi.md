# Genie.Api.Api.HealthApi

All URIs are relative to *https://genie-ar.ch*

Method | HTTP request | Description
------------- | ------------- | -------------
[**HealthRetrieve**](HealthApi.md#healthretrieve) | **GET** /api/health/ | 


<a name="healthretrieve"></a>
# **HealthRetrieve**
> HealthStatus HealthRetrieve ()



Check health status of required subsystems.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api.Api;
using Genie.Api.Client;
using Genie.Api.Model;

namespace Example
{
    public class HealthRetrieveExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://genie-ar.ch";
            var apiInstance = new HealthApi(config);

            try
            {
                HealthStatus result = apiInstance.HealthRetrieve();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling HealthApi.HealthRetrieve: " + e.Message );
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

[**HealthStatus**](HealthStatus.md)

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

