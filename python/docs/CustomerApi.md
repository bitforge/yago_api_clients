# genie.CustomerApi

All URIs are relative to *https://genie-ar.ch*

Method | HTTP request | Description
------------- | ------------- | -------------
[**customer_billing_address_partial_update**](CustomerApi.md#customer_billing_address_partial_update) | **PATCH** /api/customer/billing_address/ | 
[**customer_billing_address_retrieve**](CustomerApi.md#customer_billing_address_retrieve) | **GET** /api/customer/billing_address/ | 
[**customer_billing_address_update**](CustomerApi.md#customer_billing_address_update) | **PUT** /api/customer/billing_address/ | 
[**customer_retrieve**](CustomerApi.md#customer_retrieve) | **GET** /api/customer/ | 


# **customer_billing_address_partial_update**
> Address customer_billing_address_partial_update()



Update customer billing address. Required prior to subscribing to Genie AR services

### Example

* Api Key Authentication (cookieAuth):
* Bearer (JWT) Authentication (jwtAuth):
* Api Key Authentication (tokenAuth):

```python
import time
import genie
from genie.api import customer_api
from genie.model.address import Address
from genie.model.patched_address import PatchedAddress
from pprint import pprint
# Defining the host is optional and defaults to https://genie-ar.ch
# See configuration.py for a list of all supported configuration parameters.
configuration = genie.Configuration(
    host = "https://genie-ar.ch"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: cookieAuth
configuration.api_key['cookieAuth'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['cookieAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): jwtAuth
configuration = genie.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Configure API key authorization: tokenAuth
configuration.api_key['tokenAuth'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['tokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with genie.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = customer_api.CustomerApi(api_client)
    patched_address = PatchedAddress(
        name="name_example",
        email="email_example",
        phone="phone_example",
        line1="line1_example",
        line2="line2_example",
        postal_code="postal_code_example",
        city="city_example",
        state="state_example",
        country=CountryEnum("AF"),
    ) # PatchedAddress |  (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.customer_billing_address_partial_update(patched_address=patched_address)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling CustomerApi->customer_billing_address_partial_update: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patched_address** | [**PatchedAddress**](PatchedAddress.md)|  | [optional]

### Return type

[**Address**](Address.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customer_billing_address_retrieve**
> Address customer_billing_address_retrieve()



Update customer billing address. Required prior to subscribing to Genie AR services

### Example

* Api Key Authentication (cookieAuth):
* Bearer (JWT) Authentication (jwtAuth):
* Api Key Authentication (tokenAuth):

```python
import time
import genie
from genie.api import customer_api
from genie.model.address import Address
from pprint import pprint
# Defining the host is optional and defaults to https://genie-ar.ch
# See configuration.py for a list of all supported configuration parameters.
configuration = genie.Configuration(
    host = "https://genie-ar.ch"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: cookieAuth
configuration.api_key['cookieAuth'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['cookieAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): jwtAuth
configuration = genie.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Configure API key authorization: tokenAuth
configuration.api_key['tokenAuth'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['tokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with genie.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = customer_api.CustomerApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        api_response = api_instance.customer_billing_address_retrieve()
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling CustomerApi->customer_billing_address_retrieve: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

[**Address**](Address.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customer_billing_address_update**
> Address customer_billing_address_update(address)



Update customer billing address. Required prior to subscribing to Genie AR services

### Example

* Api Key Authentication (cookieAuth):
* Bearer (JWT) Authentication (jwtAuth):
* Api Key Authentication (tokenAuth):

```python
import time
import genie
from genie.api import customer_api
from genie.model.address import Address
from pprint import pprint
# Defining the host is optional and defaults to https://genie-ar.ch
# See configuration.py for a list of all supported configuration parameters.
configuration = genie.Configuration(
    host = "https://genie-ar.ch"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: cookieAuth
configuration.api_key['cookieAuth'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['cookieAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): jwtAuth
configuration = genie.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Configure API key authorization: tokenAuth
configuration.api_key['tokenAuth'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['tokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with genie.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = customer_api.CustomerApi(api_client)
    address = Address(
        name="name_example",
        email="email_example",
        phone="phone_example",
        line1="line1_example",
        line2="line2_example",
        postal_code="postal_code_example",
        city="city_example",
        state="state_example",
        country=CountryEnum("AF"),
    ) # Address | 

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.customer_billing_address_update(address)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling CustomerApi->customer_billing_address_update: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | [**Address**](Address.md)|  |

### Return type

[**Address**](Address.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customer_retrieve**
> Customer customer_retrieve()



Returns the customer associated with the current user account

### Example

* Api Key Authentication (cookieAuth):
* Bearer (JWT) Authentication (jwtAuth):
* Api Key Authentication (tokenAuth):

```python
import time
import genie
from genie.api import customer_api
from genie.model.customer import Customer
from pprint import pprint
# Defining the host is optional and defaults to https://genie-ar.ch
# See configuration.py for a list of all supported configuration parameters.
configuration = genie.Configuration(
    host = "https://genie-ar.ch"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: cookieAuth
configuration.api_key['cookieAuth'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['cookieAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): jwtAuth
configuration = genie.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Configure API key authorization: tokenAuth
configuration.api_key['tokenAuth'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['tokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with genie.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = customer_api.CustomerApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        api_response = api_instance.customer_retrieve()
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling CustomerApi->customer_retrieve: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

[**Customer**](Customer.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

