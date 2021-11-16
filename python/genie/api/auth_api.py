"""
    Genie API

    Augemented Reality Made Easy.  # noqa: E501

    The version of the OpenAPI document: 1.0.0
    Contact: hello@genie-ar.ch
    Generated by: https://openapi-generator.tech
"""


import re  # noqa: F401
import sys  # noqa: F401

from genie.api_client import ApiClient, Endpoint as _Endpoint
from genie.model_utils import (  # noqa: F401
    check_allowed_values,
    check_validations,
    date,
    datetime,
    file_type,
    none_type,
    validate_and_convert_types
)
from genie.model.google_id_token import GoogleIdToken
from genie.model.password_reset import PasswordReset
from genie.model.password_reset_confirm import PasswordResetConfirm
from genie.model.token_obtain_request import TokenObtainRequest
from genie.model.token_obtain_response import TokenObtainResponse
from genie.model.token_refresh_request import TokenRefreshRequest
from genie.model.token_refresh_response import TokenRefreshResponse
from genie.model.token_verify import TokenVerify


class AuthApi(object):
    """NOTE: This class is auto generated by OpenAPI Generator
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client
        self.auth_create_endpoint = _Endpoint(
            settings={
                'response_type': (TokenObtainResponse,),
                'auth': [],
                'endpoint_path': '/api/auth/',
                'operation_id': 'auth_create',
                'http_method': 'POST',
                'servers': None,
            },
            params_map={
                'all': [
                    'token_obtain_request',
                ],
                'required': [
                    'token_obtain_request',
                ],
                'nullable': [
                ],
                'enum': [
                ],
                'validation': [
                ]
            },
            root_map={
                'validations': {
                },
                'allowed_values': {
                },
                'openapi_types': {
                    'token_obtain_request':
                        (TokenObtainRequest,),
                },
                'attribute_map': {
                },
                'location_map': {
                    'token_obtain_request': 'body',
                },
                'collection_format_map': {
                }
            },
            headers_map={
                'accept': [
                    'application/json'
                ],
                'content_type': [
                    'application/json'
                ]
            },
            api_client=api_client
        )
        self.auth_google_create_endpoint = _Endpoint(
            settings={
                'response_type': (TokenObtainResponse,),
                'auth': [],
                'endpoint_path': '/api/auth/google/',
                'operation_id': 'auth_google_create',
                'http_method': 'POST',
                'servers': None,
            },
            params_map={
                'all': [
                    'google_id_token',
                ],
                'required': [
                    'google_id_token',
                ],
                'nullable': [
                ],
                'enum': [
                ],
                'validation': [
                ]
            },
            root_map={
                'validations': {
                },
                'allowed_values': {
                },
                'openapi_types': {
                    'google_id_token':
                        (GoogleIdToken,),
                },
                'attribute_map': {
                },
                'location_map': {
                    'google_id_token': 'body',
                },
                'collection_format_map': {
                }
            },
            headers_map={
                'accept': [
                    'application/json'
                ],
                'content_type': [
                    'application/json'
                ]
            },
            api_client=api_client
        )
        self.auth_password_reset_confirm_create_endpoint = _Endpoint(
            settings={
                'response_type': (PasswordResetConfirm,),
                'auth': [],
                'endpoint_path': '/api/auth/password/reset/confirm/',
                'operation_id': 'auth_password_reset_confirm_create',
                'http_method': 'POST',
                'servers': None,
            },
            params_map={
                'all': [
                    'password_reset_confirm',
                ],
                'required': [
                    'password_reset_confirm',
                ],
                'nullable': [
                ],
                'enum': [
                ],
                'validation': [
                ]
            },
            root_map={
                'validations': {
                },
                'allowed_values': {
                },
                'openapi_types': {
                    'password_reset_confirm':
                        (PasswordResetConfirm,),
                },
                'attribute_map': {
                },
                'location_map': {
                    'password_reset_confirm': 'body',
                },
                'collection_format_map': {
                }
            },
            headers_map={
                'accept': [
                    'application/json'
                ],
                'content_type': [
                    'application/json'
                ]
            },
            api_client=api_client
        )
        self.auth_password_reset_create_endpoint = _Endpoint(
            settings={
                'response_type': (PasswordReset,),
                'auth': [],
                'endpoint_path': '/api/auth/password/reset/',
                'operation_id': 'auth_password_reset_create',
                'http_method': 'POST',
                'servers': None,
            },
            params_map={
                'all': [
                    'password_reset',
                ],
                'required': [
                    'password_reset',
                ],
                'nullable': [
                ],
                'enum': [
                ],
                'validation': [
                ]
            },
            root_map={
                'validations': {
                },
                'allowed_values': {
                },
                'openapi_types': {
                    'password_reset':
                        (PasswordReset,),
                },
                'attribute_map': {
                },
                'location_map': {
                    'password_reset': 'body',
                },
                'collection_format_map': {
                }
            },
            headers_map={
                'accept': [
                    'application/json'
                ],
                'content_type': [
                    'application/json'
                ]
            },
            api_client=api_client
        )
        self.auth_refresh_create_endpoint = _Endpoint(
            settings={
                'response_type': (TokenRefreshResponse,),
                'auth': [],
                'endpoint_path': '/api/auth/refresh/',
                'operation_id': 'auth_refresh_create',
                'http_method': 'POST',
                'servers': None,
            },
            params_map={
                'all': [
                    'token_refresh_request',
                ],
                'required': [
                    'token_refresh_request',
                ],
                'nullable': [
                ],
                'enum': [
                ],
                'validation': [
                ]
            },
            root_map={
                'validations': {
                },
                'allowed_values': {
                },
                'openapi_types': {
                    'token_refresh_request':
                        (TokenRefreshRequest,),
                },
                'attribute_map': {
                },
                'location_map': {
                    'token_refresh_request': 'body',
                },
                'collection_format_map': {
                }
            },
            headers_map={
                'accept': [
                    'application/json'
                ],
                'content_type': [
                    'application/json'
                ]
            },
            api_client=api_client
        )
        self.auth_verify_create_endpoint = _Endpoint(
            settings={
                'response_type': None,
                'auth': [],
                'endpoint_path': '/api/auth/verify/',
                'operation_id': 'auth_verify_create',
                'http_method': 'POST',
                'servers': None,
            },
            params_map={
                'all': [
                    'token_verify',
                ],
                'required': [
                    'token_verify',
                ],
                'nullable': [
                ],
                'enum': [
                ],
                'validation': [
                ]
            },
            root_map={
                'validations': {
                },
                'allowed_values': {
                },
                'openapi_types': {
                    'token_verify':
                        (TokenVerify,),
                },
                'attribute_map': {
                },
                'location_map': {
                    'token_verify': 'body',
                },
                'collection_format_map': {
                }
            },
            headers_map={
                'accept': [],
                'content_type': [
                    'application/json'
                ]
            },
            api_client=api_client
        )

    def auth_create(
        self,
        token_obtain_request,
        **kwargs
    ):
        """auth_create  # noqa: E501

        Takes a set of user credentials and returns an access and refresh JSON web token pair to prove the authentication of those credentials.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.auth_create(token_obtain_request, async_req=True)
        >>> result = thread.get()

        Args:
            token_obtain_request (TokenObtainRequest):

        Keyword Args:
            _return_http_data_only (bool): response data without head status
                code and headers. Default is True.
            _preload_content (bool): if False, the urllib3.HTTPResponse object
                will be returned without reading/decoding response data.
                Default is True.
            _request_timeout (int/float/tuple): timeout setting for this request. If
                one number provided, it will be total request timeout. It can also
                be a pair (tuple) of (connection, read) timeouts.
                Default is None.
            _check_input_type (bool): specifies if type checking
                should be done one the data sent to the server.
                Default is True.
            _check_return_type (bool): specifies if type checking
                should be done one the data received from the server.
                Default is True.
            _host_index (int/None): specifies the index of the server
                that we want to use.
                Default is read from the configuration.
            async_req (bool): execute request asynchronously

        Returns:
            TokenObtainResponse
                If the method is called asynchronously, returns the request
                thread.
        """
        kwargs['async_req'] = kwargs.get(
            'async_req', False
        )
        kwargs['_return_http_data_only'] = kwargs.get(
            '_return_http_data_only', True
        )
        kwargs['_preload_content'] = kwargs.get(
            '_preload_content', True
        )
        kwargs['_request_timeout'] = kwargs.get(
            '_request_timeout', None
        )
        kwargs['_check_input_type'] = kwargs.get(
            '_check_input_type', True
        )
        kwargs['_check_return_type'] = kwargs.get(
            '_check_return_type', True
        )
        kwargs['_host_index'] = kwargs.get('_host_index')
        kwargs['token_obtain_request'] = \
            token_obtain_request
        return self.auth_create_endpoint.call_with_http_info(**kwargs)

    def auth_google_create(
        self,
        google_id_token,
        **kwargs
    ):
        """auth_google_create  # noqa: E501

        Takes a Google ID token and returns an access and refresh token for this API. If token is valid and user does not already exist, a new Genie user will be created.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.auth_google_create(google_id_token, async_req=True)
        >>> result = thread.get()

        Args:
            google_id_token (GoogleIdToken):

        Keyword Args:
            _return_http_data_only (bool): response data without head status
                code and headers. Default is True.
            _preload_content (bool): if False, the urllib3.HTTPResponse object
                will be returned without reading/decoding response data.
                Default is True.
            _request_timeout (int/float/tuple): timeout setting for this request. If
                one number provided, it will be total request timeout. It can also
                be a pair (tuple) of (connection, read) timeouts.
                Default is None.
            _check_input_type (bool): specifies if type checking
                should be done one the data sent to the server.
                Default is True.
            _check_return_type (bool): specifies if type checking
                should be done one the data received from the server.
                Default is True.
            _host_index (int/None): specifies the index of the server
                that we want to use.
                Default is read from the configuration.
            async_req (bool): execute request asynchronously

        Returns:
            TokenObtainResponse
                If the method is called asynchronously, returns the request
                thread.
        """
        kwargs['async_req'] = kwargs.get(
            'async_req', False
        )
        kwargs['_return_http_data_only'] = kwargs.get(
            '_return_http_data_only', True
        )
        kwargs['_preload_content'] = kwargs.get(
            '_preload_content', True
        )
        kwargs['_request_timeout'] = kwargs.get(
            '_request_timeout', None
        )
        kwargs['_check_input_type'] = kwargs.get(
            '_check_input_type', True
        )
        kwargs['_check_return_type'] = kwargs.get(
            '_check_return_type', True
        )
        kwargs['_host_index'] = kwargs.get('_host_index')
        kwargs['google_id_token'] = \
            google_id_token
        return self.auth_google_create_endpoint.call_with_http_info(**kwargs)

    def auth_password_reset_confirm_create(
        self,
        password_reset_confirm,
        **kwargs
    ):
        """auth_password_reset_confirm_create  # noqa: E501

        Password reset e-mail link is confirmed, reset the user's password.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.auth_password_reset_confirm_create(password_reset_confirm, async_req=True)
        >>> result = thread.get()

        Args:
            password_reset_confirm (PasswordResetConfirm):

        Keyword Args:
            _return_http_data_only (bool): response data without head status
                code and headers. Default is True.
            _preload_content (bool): if False, the urllib3.HTTPResponse object
                will be returned without reading/decoding response data.
                Default is True.
            _request_timeout (int/float/tuple): timeout setting for this request. If
                one number provided, it will be total request timeout. It can also
                be a pair (tuple) of (connection, read) timeouts.
                Default is None.
            _check_input_type (bool): specifies if type checking
                should be done one the data sent to the server.
                Default is True.
            _check_return_type (bool): specifies if type checking
                should be done one the data received from the server.
                Default is True.
            _host_index (int/None): specifies the index of the server
                that we want to use.
                Default is read from the configuration.
            async_req (bool): execute request asynchronously

        Returns:
            PasswordResetConfirm
                If the method is called asynchronously, returns the request
                thread.
        """
        kwargs['async_req'] = kwargs.get(
            'async_req', False
        )
        kwargs['_return_http_data_only'] = kwargs.get(
            '_return_http_data_only', True
        )
        kwargs['_preload_content'] = kwargs.get(
            '_preload_content', True
        )
        kwargs['_request_timeout'] = kwargs.get(
            '_request_timeout', None
        )
        kwargs['_check_input_type'] = kwargs.get(
            '_check_input_type', True
        )
        kwargs['_check_return_type'] = kwargs.get(
            '_check_return_type', True
        )
        kwargs['_host_index'] = kwargs.get('_host_index')
        kwargs['password_reset_confirm'] = \
            password_reset_confirm
        return self.auth_password_reset_confirm_create_endpoint.call_with_http_info(**kwargs)

    def auth_password_reset_create(
        self,
        password_reset,
        **kwargs
    ):
        """auth_password_reset_create  # noqa: E501

        Request password reset. Send an email to the user first.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.auth_password_reset_create(password_reset, async_req=True)
        >>> result = thread.get()

        Args:
            password_reset (PasswordReset):

        Keyword Args:
            _return_http_data_only (bool): response data without head status
                code and headers. Default is True.
            _preload_content (bool): if False, the urllib3.HTTPResponse object
                will be returned without reading/decoding response data.
                Default is True.
            _request_timeout (int/float/tuple): timeout setting for this request. If
                one number provided, it will be total request timeout. It can also
                be a pair (tuple) of (connection, read) timeouts.
                Default is None.
            _check_input_type (bool): specifies if type checking
                should be done one the data sent to the server.
                Default is True.
            _check_return_type (bool): specifies if type checking
                should be done one the data received from the server.
                Default is True.
            _host_index (int/None): specifies the index of the server
                that we want to use.
                Default is read from the configuration.
            async_req (bool): execute request asynchronously

        Returns:
            PasswordReset
                If the method is called asynchronously, returns the request
                thread.
        """
        kwargs['async_req'] = kwargs.get(
            'async_req', False
        )
        kwargs['_return_http_data_only'] = kwargs.get(
            '_return_http_data_only', True
        )
        kwargs['_preload_content'] = kwargs.get(
            '_preload_content', True
        )
        kwargs['_request_timeout'] = kwargs.get(
            '_request_timeout', None
        )
        kwargs['_check_input_type'] = kwargs.get(
            '_check_input_type', True
        )
        kwargs['_check_return_type'] = kwargs.get(
            '_check_return_type', True
        )
        kwargs['_host_index'] = kwargs.get('_host_index')
        kwargs['password_reset'] = \
            password_reset
        return self.auth_password_reset_create_endpoint.call_with_http_info(**kwargs)

    def auth_refresh_create(
        self,
        token_refresh_request,
        **kwargs
    ):
        """auth_refresh_create  # noqa: E501

        Takes a refresh type JSON web token and returns an access type JSON web token if the refresh token is valid.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.auth_refresh_create(token_refresh_request, async_req=True)
        >>> result = thread.get()

        Args:
            token_refresh_request (TokenRefreshRequest):

        Keyword Args:
            _return_http_data_only (bool): response data without head status
                code and headers. Default is True.
            _preload_content (bool): if False, the urllib3.HTTPResponse object
                will be returned without reading/decoding response data.
                Default is True.
            _request_timeout (int/float/tuple): timeout setting for this request. If
                one number provided, it will be total request timeout. It can also
                be a pair (tuple) of (connection, read) timeouts.
                Default is None.
            _check_input_type (bool): specifies if type checking
                should be done one the data sent to the server.
                Default is True.
            _check_return_type (bool): specifies if type checking
                should be done one the data received from the server.
                Default is True.
            _host_index (int/None): specifies the index of the server
                that we want to use.
                Default is read from the configuration.
            async_req (bool): execute request asynchronously

        Returns:
            TokenRefreshResponse
                If the method is called asynchronously, returns the request
                thread.
        """
        kwargs['async_req'] = kwargs.get(
            'async_req', False
        )
        kwargs['_return_http_data_only'] = kwargs.get(
            '_return_http_data_only', True
        )
        kwargs['_preload_content'] = kwargs.get(
            '_preload_content', True
        )
        kwargs['_request_timeout'] = kwargs.get(
            '_request_timeout', None
        )
        kwargs['_check_input_type'] = kwargs.get(
            '_check_input_type', True
        )
        kwargs['_check_return_type'] = kwargs.get(
            '_check_return_type', True
        )
        kwargs['_host_index'] = kwargs.get('_host_index')
        kwargs['token_refresh_request'] = \
            token_refresh_request
        return self.auth_refresh_create_endpoint.call_with_http_info(**kwargs)

    def auth_verify_create(
        self,
        token_verify,
        **kwargs
    ):
        """auth_verify_create  # noqa: E501

        Takes a token and indicates if it is valid.  This view provides no information about a token's fitness for a particular use.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.auth_verify_create(token_verify, async_req=True)
        >>> result = thread.get()

        Args:
            token_verify (TokenVerify):

        Keyword Args:
            _return_http_data_only (bool): response data without head status
                code and headers. Default is True.
            _preload_content (bool): if False, the urllib3.HTTPResponse object
                will be returned without reading/decoding response data.
                Default is True.
            _request_timeout (int/float/tuple): timeout setting for this request. If
                one number provided, it will be total request timeout. It can also
                be a pair (tuple) of (connection, read) timeouts.
                Default is None.
            _check_input_type (bool): specifies if type checking
                should be done one the data sent to the server.
                Default is True.
            _check_return_type (bool): specifies if type checking
                should be done one the data received from the server.
                Default is True.
            _host_index (int/None): specifies the index of the server
                that we want to use.
                Default is read from the configuration.
            async_req (bool): execute request asynchronously

        Returns:
            None
                If the method is called asynchronously, returns the request
                thread.
        """
        kwargs['async_req'] = kwargs.get(
            'async_req', False
        )
        kwargs['_return_http_data_only'] = kwargs.get(
            '_return_http_data_only', True
        )
        kwargs['_preload_content'] = kwargs.get(
            '_preload_content', True
        )
        kwargs['_request_timeout'] = kwargs.get(
            '_request_timeout', None
        )
        kwargs['_check_input_type'] = kwargs.get(
            '_check_input_type', True
        )
        kwargs['_check_return_type'] = kwargs.get(
            '_check_return_type', True
        )
        kwargs['_host_index'] = kwargs.get('_host_index')
        kwargs['token_verify'] = \
            token_verify
        return self.auth_verify_create_endpoint.call_with_http_info(**kwargs)

