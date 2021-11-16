# genie.StatsApi

All URIs are relative to *https://genie-ar.ch*

Method | HTTP request | Description
------------- | ------------- | -------------
[**stats_global_create**](StatsApi.md#stats_global_create) | **POST** /api/stats/global/ | 
[**stats_project_create**](StatsApi.md#stats_project_create) | **POST** /api/stats/project/{id}/ | 


# **stats_global_create**
> SummaryStats stats_global_create(global_statistics)



Traffic analytics over all projects and models.

### Example

* Api Key Authentication (cookieAuth):
* Bearer (JWT) Authentication (jwtAuth):
* Api Key Authentication (tokenAuth):

```python
import time
import genie
from genie.api import stats_api
from genie.model.chronic_stats import ChronicStats
from genie.model.summary_stats import SummaryStats
from genie.model.global_statistics import GlobalStatistics
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
    api_instance = stats_api.StatsApi(api_client)
    global_statistics = GlobalStatistics(
        report_format=ReportFormatEnum("summary"),
        time_range=TimeRangeEnum("24h"),
        filter_events=FilterEventsEnum("all"),
        filter_project="filter_project_example",
        group_by=GlobalStatisticsGroupByEnum("all"),
    ) # GlobalStatistics | 

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.stats_global_create(global_statistics)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling StatsApi->stats_global_create: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **global_statistics** | [**GlobalStatistics**](GlobalStatistics.md)|  |

### Return type

[**SummaryStats**](SummaryStats.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** |  |  -  |
**201** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stats_project_create**
> SummaryStats stats_project_create(id, projects_statistics)



Traffic for single project and all models of that project. Raises 404 if the user is not allowed to view data of this project.

### Example

* Api Key Authentication (cookieAuth):
* Bearer (JWT) Authentication (jwtAuth):
* Api Key Authentication (tokenAuth):

```python
import time
import genie
from genie.api import stats_api
from genie.model.projects_statistics import ProjectsStatistics
from genie.model.chronic_stats import ChronicStats
from genie.model.summary_stats import SummaryStats
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
    api_instance = stats_api.StatsApi(api_client)
    id = "id_example" # str | 
    projects_statistics = ProjectsStatistics(
        report_format=ReportFormatEnum("summary"),
        time_range=TimeRangeEnum("24h"),
        filter_events=FilterEventsEnum("all"),
        group_by=ProjectsStatisticsGroupByEnum("all"),
    ) # ProjectsStatistics | 

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.stats_project_create(id, projects_statistics)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling StatsApi->stats_project_create: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  |
 **projects_statistics** | [**ProjectsStatistics**](ProjectsStatistics.md)|  |

### Return type

[**SummaryStats**](SummaryStats.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** |  |  -  |
**201** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

