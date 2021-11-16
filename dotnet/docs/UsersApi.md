# Genie.Api.UsersApi

All URIs are relative to *https://genie-ar.ch*

Method | HTTP request | Description
------------- | ------------- | -------------
[**UsersList**](UsersApi.md#userslist) | **GET** /api/users/ | 
[**UsersMeRetrieve**](UsersApi.md#usersmeretrieve) | **GET** /api/users/me/ | 
[**UsersRetrieve**](UsersApi.md#usersretrieve) | **GET** /api/users/{id}/ | 


<a name="userslist"></a>
# **UsersList**
> List&lt;User&gt; UsersList (List<Guid> projects = null)



Lists all users that are members in the same projects.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class UsersListExample
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

            var apiInstance = new UsersApi(config);
            var projects = new List<Guid>(); // List<Guid> |  (optional) 

            try
            {
                List<User> result = apiInstance.UsersList(projects);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UsersApi.UsersList: " + e.Message );
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
 **projects** | [**List&lt;Guid&gt;**](Guid.md)|  | [optional] 

### Return type

[**List&lt;User&gt;**](User.md)

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

<a name="usersmeretrieve"></a>
# **UsersMeRetrieve**
> User UsersMeRetrieve ()



Show details of the user currently logged in.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class UsersMeRetrieveExample
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

            var apiInstance = new UsersApi(config);

            try
            {
                User result = apiInstance.UsersMeRetrieve();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UsersApi.UsersMeRetrieve: " + e.Message );
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

[**User**](User.md)

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

<a name="usersretrieve"></a>
# **UsersRetrieve**
> User UsersRetrieve (Guid id)



Details of a single user.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class UsersRetrieveExample
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

            var apiInstance = new UsersApi(config);
            var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d;  // Guid | A UUID string identifying this User.

            try
            {
                User result = apiInstance.UsersRetrieve(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UsersApi.UsersRetrieve: " + e.Message );
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
 **id** | **Guid**| A UUID string identifying this User. | 

### Return type

[**User**](User.md)

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

