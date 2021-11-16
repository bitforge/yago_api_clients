# Genie.Api.MembershipsApi

All URIs are relative to *https://genie-ar.ch*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MembershipsCreate**](MembershipsApi.md#membershipscreate) | **POST** /api/memberships/ | 
[**MembershipsDestroy**](MembershipsApi.md#membershipsdestroy) | **DELETE** /api/memberships/{id}/ | 
[**MembershipsList**](MembershipsApi.md#membershipslist) | **GET** /api/memberships/ | 


<a name="membershipscreate"></a>
# **MembershipsCreate**
> Membership MembershipsCreate (Membership membership)



Add a new project membership.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class MembershipsCreateExample
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

            var apiInstance = new MembershipsApi(config);
            var membership = new Membership(); // Membership | 

            try
            {
                Membership result = apiInstance.MembershipsCreate(membership);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MembershipsApi.MembershipsCreate: " + e.Message );
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
 **membership** | [**Membership**](Membership.md)|  | 

### Return type

[**Membership**](Membership.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="membershipsdestroy"></a>
# **MembershipsDestroy**
> void MembershipsDestroy (Guid id)



Remove a project member. Only OWNERS can do this.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class MembershipsDestroyExample
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

            var apiInstance = new MembershipsApi(config);
            var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d;  // Guid | A UUID string identifying this Project member.

            try
            {
                apiInstance.MembershipsDestroy(id);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MembershipsApi.MembershipsDestroy: " + e.Message );
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
 **id** | **Guid**| A UUID string identifying this Project member. | 

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

<a name="membershipslist"></a>
# **MembershipsList**
> List&lt;Membership&gt; MembershipsList (Guid? project = null, Guid? user = null)



All project memberships of projects the user is also a member of. Can be filtered by `project` and `user`.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class MembershipsListExample
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

            var apiInstance = new MembershipsApi(config);
            var project = 38400000-8cf0-11bd-b23e-10b96e4ef00d;  // Guid? |  (optional) 
            var user = 38400000-8cf0-11bd-b23e-10b96e4ef00d;  // Guid? |  (optional) 

            try
            {
                List<Membership> result = apiInstance.MembershipsList(project, user);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MembershipsApi.MembershipsList: " + e.Message );
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
 **project** | **Guid?**|  | [optional] 
 **user** | **Guid?**|  | [optional] 

### Return type

[**List&lt;Membership&gt;**](Membership.md)

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

