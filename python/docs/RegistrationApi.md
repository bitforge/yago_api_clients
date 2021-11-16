# genie.RegistrationApi

All URIs are relative to *https://genie-ar.ch*

Method | HTTP request | Description
------------- | ------------- | -------------
[**registration_create**](RegistrationApi.md#registration_create) | **POST** /api/registration/ | 
[**registration_verify_create**](RegistrationApi.md#registration_verify_create) | **POST** /api/registration/verify/{code}/ | 


# **registration_create**
> Registration registration_create(registration_create)



Create a new registeration and sends out an activation email.

### Example


```python
import time
import genie
from genie.api import registration_api
from genie.model.registration_create import RegistrationCreate
from genie.model.registration import Registration
from pprint import pprint
# Defining the host is optional and defaults to https://genie-ar.ch
# See configuration.py for a list of all supported configuration parameters.
configuration = genie.Configuration(
    host = "https://genie-ar.ch"
)


# Enter a context with an instance of the API client
with genie.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = registration_api.RegistrationApi(api_client)
    registration_create = RegistrationCreate(
        customer="customer_example",
        email="email_example",
        first_name="first_name_example",
        last_name="last_name_example",
        password="password_example",
        redirect_url="redirect_url_example",
    ) # RegistrationCreate | 

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.registration_create(registration_create)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling RegistrationApi->registration_create: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registration_create** | [**RegistrationCreate**](RegistrationCreate.md)|  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registration_verify_create**
> UserVerified registration_verify_create(code)



Verifiy registration email, create user and return login token

### Example


```python
import time
import genie
from genie.api import registration_api
from genie.model.user_verified import UserVerified
from pprint import pprint
# Defining the host is optional and defaults to https://genie-ar.ch
# See configuration.py for a list of all supported configuration parameters.
configuration = genie.Configuration(
    host = "https://genie-ar.ch"
)


# Enter a context with an instance of the API client
with genie.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = registration_api.RegistrationApi(api_client)
    code = "code_example" # str | 

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.registration_verify_create(code)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling RegistrationApi->registration_verify_create: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **str**|  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

