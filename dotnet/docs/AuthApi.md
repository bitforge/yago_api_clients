# Genie.Api.Api.AuthApi

All URIs are relative to *https://genie-ar.ch*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AuthCreate**](AuthApi.md#authcreate) | **POST** /api/auth/ | 
[**AuthGoogleCreate**](AuthApi.md#authgooglecreate) | **POST** /api/auth/google/ | 
[**AuthPasswordResetConfirmCreate**](AuthApi.md#authpasswordresetconfirmcreate) | **POST** /api/auth/password/reset/confirm/ | 
[**AuthPasswordResetCreate**](AuthApi.md#authpasswordresetcreate) | **POST** /api/auth/password/reset/ | 
[**AuthRefreshCreate**](AuthApi.md#authrefreshcreate) | **POST** /api/auth/refresh/ | 
[**AuthVerifyCreate**](AuthApi.md#authverifycreate) | **POST** /api/auth/verify/ | 


<a name="authcreate"></a>
# **AuthCreate**
> TokenObtainResponse AuthCreate (TokenObtainRequest tokenObtainRequest)



Takes a set of user credentials and returns an access and refresh JSON web token pair to prove the authentication of those credentials.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api.Api;
using Genie.Api.Client;
using Genie.Api.Model;

namespace Example
{
    public class AuthCreateExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://genie-ar.ch";
            var apiInstance = new AuthApi(config);
            var tokenObtainRequest = new TokenObtainRequest(); // TokenObtainRequest | 

            try
            {
                TokenObtainResponse result = apiInstance.AuthCreate(tokenObtainRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AuthApi.AuthCreate: " + e.Message );
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
 **tokenObtainRequest** | [**TokenObtainRequest**](TokenObtainRequest.md)|  | 

### Return type

[**TokenObtainResponse**](TokenObtainResponse.md)

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

<a name="authgooglecreate"></a>
# **AuthGoogleCreate**
> TokenObtainResponse AuthGoogleCreate (GoogleIdToken googleIdToken)



Takes a Google ID token and returns an access and refresh token for this API. If token is valid and user does not already exist, a new Genie user will be created.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api.Api;
using Genie.Api.Client;
using Genie.Api.Model;

namespace Example
{
    public class AuthGoogleCreateExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://genie-ar.ch";
            var apiInstance = new AuthApi(config);
            var googleIdToken = new GoogleIdToken(); // GoogleIdToken | 

            try
            {
                TokenObtainResponse result = apiInstance.AuthGoogleCreate(googleIdToken);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AuthApi.AuthGoogleCreate: " + e.Message );
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
 **googleIdToken** | [**GoogleIdToken**](GoogleIdToken.md)|  | 

### Return type

[**TokenObtainResponse**](TokenObtainResponse.md)

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

<a name="authpasswordresetconfirmcreate"></a>
# **AuthPasswordResetConfirmCreate**
> PasswordResetConfirm AuthPasswordResetConfirmCreate (PasswordResetConfirm passwordResetConfirm)



Password reset e-mail link is confirmed, reset the user's password.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api.Api;
using Genie.Api.Client;
using Genie.Api.Model;

namespace Example
{
    public class AuthPasswordResetConfirmCreateExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://genie-ar.ch";
            var apiInstance = new AuthApi(config);
            var passwordResetConfirm = new PasswordResetConfirm(); // PasswordResetConfirm | 

            try
            {
                PasswordResetConfirm result = apiInstance.AuthPasswordResetConfirmCreate(passwordResetConfirm);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AuthApi.AuthPasswordResetConfirmCreate: " + e.Message );
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
 **passwordResetConfirm** | [**PasswordResetConfirm**](PasswordResetConfirm.md)|  | 

### Return type

[**PasswordResetConfirm**](PasswordResetConfirm.md)

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

<a name="authpasswordresetcreate"></a>
# **AuthPasswordResetCreate**
> PasswordReset AuthPasswordResetCreate (PasswordReset passwordReset)



Request password reset. Send an email to the user first.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api.Api;
using Genie.Api.Client;
using Genie.Api.Model;

namespace Example
{
    public class AuthPasswordResetCreateExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://genie-ar.ch";
            var apiInstance = new AuthApi(config);
            var passwordReset = new PasswordReset(); // PasswordReset | 

            try
            {
                PasswordReset result = apiInstance.AuthPasswordResetCreate(passwordReset);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AuthApi.AuthPasswordResetCreate: " + e.Message );
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
 **passwordReset** | [**PasswordReset**](PasswordReset.md)|  | 

### Return type

[**PasswordReset**](PasswordReset.md)

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

<a name="authrefreshcreate"></a>
# **AuthRefreshCreate**
> TokenRefreshResponse AuthRefreshCreate (TokenRefreshRequest tokenRefreshRequest)



Takes a refresh type JSON web token and returns an access type JSON web token if the refresh token is valid.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api.Api;
using Genie.Api.Client;
using Genie.Api.Model;

namespace Example
{
    public class AuthRefreshCreateExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://genie-ar.ch";
            var apiInstance = new AuthApi(config);
            var tokenRefreshRequest = new TokenRefreshRequest(); // TokenRefreshRequest | 

            try
            {
                TokenRefreshResponse result = apiInstance.AuthRefreshCreate(tokenRefreshRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AuthApi.AuthRefreshCreate: " + e.Message );
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
 **tokenRefreshRequest** | [**TokenRefreshRequest**](TokenRefreshRequest.md)|  | 

### Return type

[**TokenRefreshResponse**](TokenRefreshResponse.md)

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

<a name="authverifycreate"></a>
# **AuthVerifyCreate**
> void AuthVerifyCreate (TokenVerify tokenVerify)



Takes a token and indicates if it is valid.  This view provides no information about a token's fitness for a particular use.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api.Api;
using Genie.Api.Client;
using Genie.Api.Model;

namespace Example
{
    public class AuthVerifyCreateExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://genie-ar.ch";
            var apiInstance = new AuthApi(config);
            var tokenVerify = new TokenVerify(); // TokenVerify | 

            try
            {
                apiInstance.AuthVerifyCreate(tokenVerify);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AuthApi.AuthVerifyCreate: " + e.Message );
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
 **tokenVerify** | [**TokenVerify**](TokenVerify.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | No response body |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

