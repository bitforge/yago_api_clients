# Genie.Api.Api.RegistrationApi

All URIs are relative to *https://genie-ar.ch*

Method | HTTP request | Description
------------- | ------------- | -------------
[**RegistrationCreate**](RegistrationApi.md#registrationcreate) | **POST** /api/registration/ | 
[**RegistrationVerifyCreate**](RegistrationApi.md#registrationverifycreate) | **POST** /api/registration/verify/{code}/ | 


<a name="registrationcreate"></a>
# **RegistrationCreate**
> Registration RegistrationCreate (RegistrationCreate registrationCreate)



Create a new registeration and sends out an activation email.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api.Api;
using Genie.Api.Client;
using Genie.Api.Model;

namespace Example
{
    public class RegistrationCreateExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://genie-ar.ch";
            var apiInstance = new RegistrationApi(config);
            var registrationCreate = new RegistrationCreate(); // RegistrationCreate | 

            try
            {
                Registration result = apiInstance.RegistrationCreate(registrationCreate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RegistrationApi.RegistrationCreate: " + e.Message );
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
 **registrationCreate** | [**RegistrationCreate**](RegistrationCreate.md)|  | 

### Return type

[**Registration**](Registration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="registrationverifycreate"></a>
# **RegistrationVerifyCreate**
> UserVerified RegistrationVerifyCreate (string code)



Verifiy registration email, create user and return login token

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api.Api;
using Genie.Api.Client;
using Genie.Api.Model;

namespace Example
{
    public class RegistrationVerifyCreateExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://genie-ar.ch";
            var apiInstance = new RegistrationApi(config);
            var code = code_example;  // string | 

            try
            {
                UserVerified result = apiInstance.RegistrationVerifyCreate(code);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RegistrationApi.RegistrationVerifyCreate: " + e.Message );
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
 **code** | **string**|  | 

### Return type

[**UserVerified**](UserVerified.md)

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

