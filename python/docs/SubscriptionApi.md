# genie.SubscriptionApi

All URIs are relative to *https://genie-ar.ch*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscription_create**](SubscriptionApi.md#subscription_create) | **POST** /api/subscription/ | 
[**subscription_destroy**](SubscriptionApi.md#subscription_destroy) | **DELETE** /api/subscription/ | 
[**subscription_retrieve**](SubscriptionApi.md#subscription_retrieve) | **GET** /api/subscription/ | 


# **subscription_create**
> NewSubscription subscription_create(new_subscription)



Create a new stripe Subscription for a Genie pricing plan in state incomplete. Use client_secret to submit payment method with a stripe element to activate subscription.

### Example

* Api Key Authentication (cookieAuth):
* Bearer (JWT) Authentication (jwtAuth):
* Api Key Authentication (tokenAuth):

```python
import time
import genie
from genie.api import subscription_api
from genie.model.new_subscription import NewSubscription
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
    api_instance = subscription_api.SubscriptionApi(api_client)
    new_subscription = NewSubscription(
        plan=PlanEnum("FREE"),
        payment_method=PaymentMethodEnum("NONE"),
        tos_accepted=True,
    ) # NewSubscription | 

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.subscription_create(new_subscription)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling SubscriptionApi->subscription_create: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_subscription** | [**NewSubscription**](NewSubscription.md)|  |

### Return type

[**NewSubscription**](NewSubscription.md)

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

# **subscription_destroy**
> subscription_destroy()



Cancel current subscription. Subscription will be valid until current payment schedule is finished.

### Example

* Api Key Authentication (cookieAuth):
* Bearer (JWT) Authentication (jwtAuth):
* Api Key Authentication (tokenAuth):

```python
import time
import genie
from genie.api import subscription_api
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
    api_instance = subscription_api.SubscriptionApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        api_instance.subscription_destroy()
    except genie.ApiException as e:
        print("Exception when calling SubscriptionApi->subscription_destroy: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

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
**204** | No response body |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscription_retrieve**
> Subscription subscription_retrieve()



Get details of active subscription i customer is signed up.

### Example

* Api Key Authentication (cookieAuth):
* Bearer (JWT) Authentication (jwtAuth):
* Api Key Authentication (tokenAuth):

```python
import time
import genie
from genie.api import subscription_api
from genie.model.subscription import Subscription
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
    api_instance = subscription_api.SubscriptionApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        api_response = api_instance.subscription_retrieve()
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling SubscriptionApi->subscription_retrieve: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

[**Subscription**](Subscription.md)

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

