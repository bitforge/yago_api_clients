# genie.ModelsApi

All URIs are relative to *https://genie-ar.ch*

Method | HTTP request | Description
------------- | ------------- | -------------
[**models_create**](ModelsApi.md#models_create) | **POST** /api/models/ | 
[**models_destroy**](ModelsApi.md#models_destroy) | **DELETE** /api/models/{id}/ | 
[**models_glb_destroy**](ModelsApi.md#models_glb_destroy) | **DELETE** /api/models/{id}/glb/ | 
[**models_glb_update**](ModelsApi.md#models_glb_update) | **PUT** /api/models/{id}/glb/ | 
[**models_image_destroy**](ModelsApi.md#models_image_destroy) | **DELETE** /api/models/{id}/image/ | 
[**models_image_update**](ModelsApi.md#models_image_update) | **PUT** /api/models/{id}/image/ | 
[**models_list**](ModelsApi.md#models_list) | **GET** /api/models/ | 
[**models_partial_update**](ModelsApi.md#models_partial_update) | **PATCH** /api/models/{id}/ | 
[**models_retrieve**](ModelsApi.md#models_retrieve) | **GET** /api/models/{id}/ | 
[**models_update**](ModelsApi.md#models_update) | **PUT** /api/models/{id}/ | 
[**models_usdz_destroy**](ModelsApi.md#models_usdz_destroy) | **DELETE** /api/models/{id}/usdz/ | 
[**models_usdz_update**](ModelsApi.md#models_usdz_update) | **PUT** /api/models/{id}/usdz/ | 


# **models_create**
> ModelCreate models_create(model_create)



Add a new model. Change details and translations later via PUT or PATCH.

### Example

* Api Key Authentication (cookieAuth):
* Bearer (JWT) Authentication (jwtAuth):
* Api Key Authentication (tokenAuth):

```python
import time
import genie
from genie.api import models_api
from genie.model.model_create import ModelCreate
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
    api_instance = models_api.ModelsApi(api_client)
    model_create = ModelCreate(
        project="project_example",
        name_de="name_de_example",
        name_en="name_en_example",
        name_fr="name_fr_example",
        name_it="name_it_example",
    ) # ModelCreate | 

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.models_create(model_create)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling ModelsApi->models_create: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model_create** | [**ModelCreate**](ModelCreate.md)|  |

### Return type

[**ModelCreate**](ModelCreate.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **models_destroy**
> models_destroy(id)



Remove a model. Be cautious, this is permanent!

### Example

* Api Key Authentication (cookieAuth):
* Bearer (JWT) Authentication (jwtAuth):
* Api Key Authentication (tokenAuth):

```python
import time
import genie
from genie.api import models_api
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
    api_instance = models_api.ModelsApi(api_client)
    id = "id_example" # str | A UUID string identifying this Model.

    # example passing only required values which don't have defaults set
    try:
        api_instance.models_destroy(id)
    except genie.ApiException as e:
        print("Exception when calling ModelsApi->models_destroy: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| A UUID string identifying this Model. |

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

# **models_glb_destroy**
> models_glb_destroy(id)



Delete a file.

### Example

* Api Key Authentication (cookieAuth):
* Bearer (JWT) Authentication (jwtAuth):
* Api Key Authentication (tokenAuth):

```python
import time
import genie
from genie.api import models_api
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
    api_instance = models_api.ModelsApi(api_client)
    id = "id_example" # str | 

    # example passing only required values which don't have defaults set
    try:
        api_instance.models_glb_destroy(id)
    except genie.ApiException as e:
        print("Exception when calling ModelsApi->models_glb_destroy: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  |

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

# **models_glb_update**
> FileUpload models_glb_update(id)



Upload a file. Max size 30MB. Filename is required!

### Example

* Api Key Authentication (cookieAuth):
* Bearer (JWT) Authentication (jwtAuth):
* Api Key Authentication (tokenAuth):

```python
import time
import genie
from genie.api import models_api
from genie.model.file_upload import FileUpload
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
    api_instance = models_api.ModelsApi(api_client)
    id = "id_example" # str | A UUID identifying this object.
    body = open('/path/to/file', 'rb') # file_type |  (optional)

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.models_glb_update(id)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling ModelsApi->models_glb_update: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.models_glb_update(id, body=body)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling ModelsApi->models_glb_update: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| A UUID identifying this object. |
 **content_disposition** | **str**| The original filename. | defaults to "attachment; filename=name.ext"
 **body** | **file_type**|  | [optional]

### Return type

[**FileUpload**](FileUpload.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **models_image_destroy**
> models_image_destroy(id)



Delete an image.

### Example

* Api Key Authentication (cookieAuth):
* Bearer (JWT) Authentication (jwtAuth):
* Api Key Authentication (tokenAuth):

```python
import time
import genie
from genie.api import models_api
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
    api_instance = models_api.ModelsApi(api_client)
    id = "id_example" # str | 

    # example passing only required values which don't have defaults set
    try:
        api_instance.models_image_destroy(id)
    except genie.ApiException as e:
        print("Exception when calling ModelsApi->models_image_destroy: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  |

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

# **models_image_update**
> FileUpload models_image_update(id)



Upload an image. Max size 30MB. Filename is required!

### Example

* Api Key Authentication (cookieAuth):
* Bearer (JWT) Authentication (jwtAuth):
* Api Key Authentication (tokenAuth):

```python
import time
import genie
from genie.api import models_api
from genie.model.file_upload import FileUpload
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
    api_instance = models_api.ModelsApi(api_client)
    id = "id_example" # str | A UUID identifying this object.
    body = open('/path/to/file', 'rb') # file_type |  (optional)

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.models_image_update(id)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling ModelsApi->models_image_update: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.models_image_update(id, body=body)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling ModelsApi->models_image_update: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| A UUID identifying this object. |
 **content_disposition** | **str**| The original filename. | defaults to "attachment; filename=name.ext"
 **body** | **file_type**|  | [optional]

### Return type

[**FileUpload**](FileUpload.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: image/*
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **models_list**
> [Model] models_list()



Lists all models for all projects the user is a member of. Can be filtered by `project`.

### Example

* Api Key Authentication (cookieAuth):
* Bearer (JWT) Authentication (jwtAuth):
* Api Key Authentication (tokenAuth):

```python
import time
import genie
from genie.api import models_api
from genie.model.model import Model
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
    api_instance = models_api.ModelsApi(api_client)
    project = "project_example" # str |  (optional)
    status = "DRAFT" # str | DRAFT=In development, READY=Modelling complete, ONLINE=Active use. (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.models_list(project=project, status=status)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling ModelsApi->models_list: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **str**|  | [optional]
 **status** | **str**| DRAFT&#x3D;In development, READY&#x3D;Modelling complete, ONLINE&#x3D;Active use. | [optional]

### Return type

[**[Model]**](Model.md)

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

# **models_partial_update**
> ModelUpdate models_partial_update(id)



Change as subset of model details.

### Example

* Api Key Authentication (cookieAuth):
* Bearer (JWT) Authentication (jwtAuth):
* Api Key Authentication (tokenAuth):

```python
import time
import genie
from genie.api import models_api
from genie.model.patched_model_update import PatchedModelUpdate
from genie.model.model_update import ModelUpdate
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
    api_instance = models_api.ModelsApi(api_client)
    id = "id_example" # str | A UUID string identifying this Model.
    patched_model_update = PatchedModelUpdate(
        name_de="name_de_example",
        name_en="name_en_example",
        name_fr="name_fr_example",
        name_it="name_it_example",
        status=None,
        description_de="description_de_example",
        description_en="description_en_example",
        description_fr="description_fr_example",
        description_it="description_it_example",
        number=0,
        site_url_de="site_url_de_example",
        site_url_en="site_url_en_example",
        site_url_fr="site_url_fr_example",
        site_url_it="site_url_it_example",
        scaleable=True,
        sku="sku_example",
        price="48072",
    ) # PatchedModelUpdate |  (optional)

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.models_partial_update(id)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling ModelsApi->models_partial_update: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.models_partial_update(id, patched_model_update=patched_model_update)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling ModelsApi->models_partial_update: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| A UUID string identifying this Model. |
 **patched_model_update** | [**PatchedModelUpdate**](PatchedModelUpdate.md)|  | [optional]

### Return type

[**ModelUpdate**](ModelUpdate.md)

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

# **models_retrieve**
> Model models_retrieve(id)



Details of a single model.

### Example

* Api Key Authentication (cookieAuth):
* Bearer (JWT) Authentication (jwtAuth):
* Api Key Authentication (tokenAuth):

```python
import time
import genie
from genie.api import models_api
from genie.model.model import Model
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
    api_instance = models_api.ModelsApi(api_client)
    id = "id_example" # str | A UUID string identifying this Model.

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.models_retrieve(id)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling ModelsApi->models_retrieve: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| A UUID string identifying this Model. |

### Return type

[**Model**](Model.md)

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

# **models_update**
> ModelUpdate models_update(id)



Change model details. Translated field are all optional expcet for `name_de`.

### Example

* Api Key Authentication (cookieAuth):
* Bearer (JWT) Authentication (jwtAuth):
* Api Key Authentication (tokenAuth):

```python
import time
import genie
from genie.api import models_api
from genie.model.model_update import ModelUpdate
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
    api_instance = models_api.ModelsApi(api_client)
    id = "id_example" # str | A UUID string identifying this Model.
    model_update = ModelUpdate(
        name_de="name_de_example",
        name_en="name_en_example",
        name_fr="name_fr_example",
        name_it="name_it_example",
        status=None,
        description_de="description_de_example",
        description_en="description_en_example",
        description_fr="description_fr_example",
        description_it="description_it_example",
        number=0,
        site_url_de="site_url_de_example",
        site_url_en="site_url_en_example",
        site_url_fr="site_url_fr_example",
        site_url_it="site_url_it_example",
        scaleable=True,
        sku="sku_example",
        price="48072",
    ) # ModelUpdate |  (optional)

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.models_update(id)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling ModelsApi->models_update: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.models_update(id, model_update=model_update)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling ModelsApi->models_update: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| A UUID string identifying this Model. |
 **model_update** | [**ModelUpdate**](ModelUpdate.md)|  | [optional]

### Return type

[**ModelUpdate**](ModelUpdate.md)

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

# **models_usdz_destroy**
> models_usdz_destroy(id)



Delete a file.

### Example

* Api Key Authentication (cookieAuth):
* Bearer (JWT) Authentication (jwtAuth):
* Api Key Authentication (tokenAuth):

```python
import time
import genie
from genie.api import models_api
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
    api_instance = models_api.ModelsApi(api_client)
    id = "id_example" # str | 

    # example passing only required values which don't have defaults set
    try:
        api_instance.models_usdz_destroy(id)
    except genie.ApiException as e:
        print("Exception when calling ModelsApi->models_usdz_destroy: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  |

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

# **models_usdz_update**
> FileUpload models_usdz_update(id)



Upload a file. Max size 30MB. Filename is required!

### Example

* Api Key Authentication (cookieAuth):
* Bearer (JWT) Authentication (jwtAuth):
* Api Key Authentication (tokenAuth):

```python
import time
import genie
from genie.api import models_api
from genie.model.file_upload import FileUpload
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
    api_instance = models_api.ModelsApi(api_client)
    id = "id_example" # str | A UUID identifying this object.
    body = open('/path/to/file', 'rb') # file_type |  (optional)

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.models_usdz_update(id)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling ModelsApi->models_usdz_update: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.models_usdz_update(id, body=body)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling ModelsApi->models_usdz_update: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| A UUID identifying this object. |
 **content_disposition** | **str**| The original filename. | defaults to "attachment; filename=name.ext"
 **body** | **file_type**|  | [optional]

### Return type

[**FileUpload**](FileUpload.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

