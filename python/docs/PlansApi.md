# genie.PlansApi

All URIs are relative to *https://genie-ar.ch*

Method | HTTP request | Description
------------- | ------------- | -------------
[**plans_list**](PlansApi.md#plans_list) | **GET** /api/plans/ | 


# **plans_list**
> [PricingPlan] plans_list()



List all available pricing plans

### Example


```python
import time
import genie
from genie.api import plans_api
from genie.model.pricing_plan import PricingPlan
from pprint import pprint
# Defining the host is optional and defaults to https://genie-ar.ch
# See configuration.py for a list of all supported configuration parameters.
configuration = genie.Configuration(
    host = "https://genie-ar.ch"
)


# Enter a context with an instance of the API client
with genie.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = plans_api.PlansApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        api_response = api_instance.plans_list()
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling PlansApi->plans_list: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

[**[PricingPlan]**](PricingPlan.md)

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

