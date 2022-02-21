# RegistrationApi

All URIs are relative to *https://dev.yago.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**registrationCreate**](RegistrationApi.md#registrationCreate) | **POST** /api/registration/ | 
[**registrationVerifyCreate**](RegistrationApi.md#registrationVerifyCreate) | **POST** /api/registration/verify/{code}/ | 


<a name="registrationCreate"></a>
# **registrationCreate**
> Registration registrationCreate(registrationCreate)



Create a new registeration and sends out an activation email.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.models.*;
import yago.client.apis.RegistrationApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://dev.yago.cloud");

    RegistrationApi apiInstance = new RegistrationApi(defaultClient);
    RegistrationCreate registrationCreate = new RegistrationCreate(); // RegistrationCreate | 
    try {
      Registration result = apiInstance.registrationCreate(registrationCreate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RegistrationApi#registrationCreate");
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
**200** |  |  -  |

<a name="registrationVerifyCreate"></a>
# **registrationVerifyCreate**
> UserVerified registrationVerifyCreate(code)



Verifiy registration email, create user and return login token

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.models.*;
import yago.client.apis.RegistrationApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://dev.yago.cloud");

    RegistrationApi apiInstance = new RegistrationApi(defaultClient);
    String code = "code_example"; // String | 
    try {
      UserVerified result = apiInstance.registrationVerifyCreate(code);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RegistrationApi#registrationVerifyCreate");
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
 **code** | **String**|  |

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
**200** |  |  -  |

