# AuthApi

All URIs are relative to *https://dev.yago.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authGoogleCreate**](AuthApi.md#authGoogleCreate) | **POST** /api/auth/google/ | 
[**authLoginCreate**](AuthApi.md#authLoginCreate) | **POST** /api/auth/login/ | 
[**authPasswordResetConfirmCreate**](AuthApi.md#authPasswordResetConfirmCreate) | **POST** /api/auth/password/reset/confirm/ | 
[**authPasswordResetCreate**](AuthApi.md#authPasswordResetCreate) | **POST** /api/auth/password/reset/ | 
[**authRefreshCreate**](AuthApi.md#authRefreshCreate) | **POST** /api/auth/refresh/ | 
[**authVerifyCreate**](AuthApi.md#authVerifyCreate) | **POST** /api/auth/verify/ | 


<a name="authGoogleCreate"></a>
# **authGoogleCreate**
> TokenObtainResponse authGoogleCreate(googleIdToken)



Takes a Google ID token and returns an access and refresh token for this API. If token is valid and user does not already exist, a new Genie user will be created.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.models.*;
import yago.client.apis.AuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://dev.yago.cloud");

    AuthApi apiInstance = new AuthApi(defaultClient);
    GoogleIdToken googleIdToken = new GoogleIdToken(); // GoogleIdToken | 
    try {
      TokenObtainResponse result = apiInstance.authGoogleCreate(googleIdToken);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthApi#authGoogleCreate");
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
**200** |  |  -  |

<a name="authLoginCreate"></a>
# **authLoginCreate**
> TokenObtainResponse authLoginCreate(tokenObtainRequest)



Takes a set of user credentials and returns an access and refresh JSON web token pair to prove the authentication of those credentials.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.models.*;
import yago.client.apis.AuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://dev.yago.cloud");

    AuthApi apiInstance = new AuthApi(defaultClient);
    TokenObtainRequest tokenObtainRequest = new TokenObtainRequest(); // TokenObtainRequest | 
    try {
      TokenObtainResponse result = apiInstance.authLoginCreate(tokenObtainRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthApi#authLoginCreate");
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
**200** |  |  -  |

<a name="authPasswordResetConfirmCreate"></a>
# **authPasswordResetConfirmCreate**
> PasswordResetConfirm authPasswordResetConfirmCreate(passwordResetConfirm)



Password reset e-mail link is confirmed, reset the user&#39;s password.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.models.*;
import yago.client.apis.AuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://dev.yago.cloud");

    AuthApi apiInstance = new AuthApi(defaultClient);
    PasswordResetConfirm passwordResetConfirm = new PasswordResetConfirm(); // PasswordResetConfirm | 
    try {
      PasswordResetConfirm result = apiInstance.authPasswordResetConfirmCreate(passwordResetConfirm);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthApi#authPasswordResetConfirmCreate");
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
**200** |  |  -  |

<a name="authPasswordResetCreate"></a>
# **authPasswordResetCreate**
> PasswordReset authPasswordResetCreate(passwordReset)



Request password reset. Send an email to the user first.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.models.*;
import yago.client.apis.AuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://dev.yago.cloud");

    AuthApi apiInstance = new AuthApi(defaultClient);
    PasswordReset passwordReset = new PasswordReset(); // PasswordReset | 
    try {
      PasswordReset result = apiInstance.authPasswordResetCreate(passwordReset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthApi#authPasswordResetCreate");
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
**200** |  |  -  |

<a name="authRefreshCreate"></a>
# **authRefreshCreate**
> TokenRefreshResponse authRefreshCreate(tokenRefreshRequest)



Takes a refresh type JSON web token and returns an access type JSON web token if the refresh token is valid.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.models.*;
import yago.client.apis.AuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://dev.yago.cloud");

    AuthApi apiInstance = new AuthApi(defaultClient);
    TokenRefreshRequest tokenRefreshRequest = new TokenRefreshRequest(); // TokenRefreshRequest | 
    try {
      TokenRefreshResponse result = apiInstance.authRefreshCreate(tokenRefreshRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthApi#authRefreshCreate");
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
**200** |  |  -  |

<a name="authVerifyCreate"></a>
# **authVerifyCreate**
> authVerifyCreate(tokenVerify)



Takes a token and indicates if it is valid.  This view provides no information about a token&#39;s fitness for a particular use.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.models.*;
import yago.client.apis.AuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://dev.yago.cloud");

    AuthApi apiInstance = new AuthApi(defaultClient);
    TokenVerify tokenVerify = new TokenVerify(); // TokenVerify | 
    try {
      apiInstance.authVerifyCreate(tokenVerify);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthApi#authVerifyCreate");
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
 **tokenVerify** | [**TokenVerify**](TokenVerify.md)|  |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | No response body |  -  |

