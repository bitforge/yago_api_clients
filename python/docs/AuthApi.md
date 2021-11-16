# genie.AuthApi

All URIs are relative to *https://genie-ar.ch*

Method | HTTP request | Description
------------- | ------------- | -------------
[**auth_create**](AuthApi.md#auth_create) | **POST** /api/auth/ | 
[**auth_google_create**](AuthApi.md#auth_google_create) | **POST** /api/auth/google/ | 
[**auth_password_reset_confirm_create**](AuthApi.md#auth_password_reset_confirm_create) | **POST** /api/auth/password/reset/confirm/ | 
[**auth_password_reset_create**](AuthApi.md#auth_password_reset_create) | **POST** /api/auth/password/reset/ | 
[**auth_refresh_create**](AuthApi.md#auth_refresh_create) | **POST** /api/auth/refresh/ | 
[**auth_verify_create**](AuthApi.md#auth_verify_create) | **POST** /api/auth/verify/ | 


# **auth_create**
> TokenObtainResponse auth_create(token_obtain_request)



Takes a set of user credentials and returns an access and refresh JSON web token pair to prove the authentication of those credentials.

### Example


```python
import time
import genie
from genie.api import auth_api
from genie.model.token_obtain_response import TokenObtainResponse
from genie.model.token_obtain_request import TokenObtainRequest
from pprint import pprint
# Defining the host is optional and defaults to https://genie-ar.ch
# See configuration.py for a list of all supported configuration parameters.
configuration = genie.Configuration(
    host = "https://genie-ar.ch"
)


# Enter a context with an instance of the API client
with genie.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = auth_api.AuthApi(api_client)
    token_obtain_request = TokenObtainRequest(
        email="email_example",
        password="password_example",
    ) # TokenObtainRequest | 

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.auth_create(token_obtain_request)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling AuthApi->auth_create: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_obtain_request** | [**TokenObtainRequest**](TokenObtainRequest.md)|  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **auth_google_create**
> TokenObtainResponse auth_google_create(google_id_token)



Takes a Google ID token and returns an access and refresh token for this API. If token is valid and user does not already exist, a new Genie user will be created.

### Example


```python
import time
import genie
from genie.api import auth_api
from genie.model.google_id_token import GoogleIdToken
from genie.model.token_obtain_response import TokenObtainResponse
from pprint import pprint
# Defining the host is optional and defaults to https://genie-ar.ch
# See configuration.py for a list of all supported configuration parameters.
configuration = genie.Configuration(
    host = "https://genie-ar.ch"
)


# Enter a context with an instance of the API client
with genie.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = auth_api.AuthApi(api_client)
    google_id_token = GoogleIdToken(
        token="token_example",
    ) # GoogleIdToken | 

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.auth_google_create(google_id_token)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling AuthApi->auth_google_create: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **google_id_token** | [**GoogleIdToken**](GoogleIdToken.md)|  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **auth_password_reset_confirm_create**
> PasswordResetConfirm auth_password_reset_confirm_create(password_reset_confirm)



Password reset e-mail link is confirmed, reset the user's password.

### Example


```python
import time
import genie
from genie.api import auth_api
from genie.model.password_reset_confirm import PasswordResetConfirm
from pprint import pprint
# Defining the host is optional and defaults to https://genie-ar.ch
# See configuration.py for a list of all supported configuration parameters.
configuration = genie.Configuration(
    host = "https://genie-ar.ch"
)


# Enter a context with an instance of the API client
with genie.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = auth_api.AuthApi(api_client)
    password_reset_confirm = PasswordResetConfirm(
        new_password1="new_password1_example",
        new_password2="new_password2_example",
        uid="uid_example",
        token="token_example",
    ) # PasswordResetConfirm | 

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.auth_password_reset_confirm_create(password_reset_confirm)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling AuthApi->auth_password_reset_confirm_create: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password_reset_confirm** | [**PasswordResetConfirm**](PasswordResetConfirm.md)|  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **auth_password_reset_create**
> PasswordReset auth_password_reset_create(password_reset)



Request password reset. Send an email to the user first.

### Example


```python
import time
import genie
from genie.api import auth_api
from genie.model.password_reset import PasswordReset
from pprint import pprint
# Defining the host is optional and defaults to https://genie-ar.ch
# See configuration.py for a list of all supported configuration parameters.
configuration = genie.Configuration(
    host = "https://genie-ar.ch"
)


# Enter a context with an instance of the API client
with genie.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = auth_api.AuthApi(api_client)
    password_reset = PasswordReset(
        email="email_example",
    ) # PasswordReset | 

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.auth_password_reset_create(password_reset)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling AuthApi->auth_password_reset_create: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password_reset** | [**PasswordReset**](PasswordReset.md)|  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **auth_refresh_create**
> TokenRefreshResponse auth_refresh_create(token_refresh_request)



Takes a refresh type JSON web token and returns an access type JSON web token if the refresh token is valid.

### Example


```python
import time
import genie
from genie.api import auth_api
from genie.model.token_refresh_response import TokenRefreshResponse
from genie.model.token_refresh_request import TokenRefreshRequest
from pprint import pprint
# Defining the host is optional and defaults to https://genie-ar.ch
# See configuration.py for a list of all supported configuration parameters.
configuration = genie.Configuration(
    host = "https://genie-ar.ch"
)


# Enter a context with an instance of the API client
with genie.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = auth_api.AuthApi(api_client)
    token_refresh_request = TokenRefreshRequest(
        refresh="refresh_example",
    ) # TokenRefreshRequest | 

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.auth_refresh_create(token_refresh_request)
        pprint(api_response)
    except genie.ApiException as e:
        print("Exception when calling AuthApi->auth_refresh_create: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_refresh_request** | [**TokenRefreshRequest**](TokenRefreshRequest.md)|  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **auth_verify_create**
> auth_verify_create(token_verify)



Takes a token and indicates if it is valid.  This view provides no information about a token's fitness for a particular use.

### Example


```python
import time
import genie
from genie.api import auth_api
from genie.model.token_verify import TokenVerify
from pprint import pprint
# Defining the host is optional and defaults to https://genie-ar.ch
# See configuration.py for a list of all supported configuration parameters.
configuration = genie.Configuration(
    host = "https://genie-ar.ch"
)


# Enter a context with an instance of the API client
with genie.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = auth_api.AuthApi(api_client)
    token_verify = TokenVerify(
        token="token_example",
    ) # TokenVerify | 

    # example passing only required values which don't have defaults set
    try:
        api_instance.auth_verify_create(token_verify)
    except genie.ApiException as e:
        print("Exception when calling AuthApi->auth_verify_create: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_verify** | [**TokenVerify**](TokenVerify.md)|  |

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
**200** | No response body |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

