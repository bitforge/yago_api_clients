//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of yago;

class AuthApi {
  AuthApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a new anchor token.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> authAnchorTokenRetrieveWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/anchor_token/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create a new anchor token.
  Future<AnchorToken?> authAnchorTokenRetrieve() async {
    final response = await authAnchorTokenRetrieveWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'AnchorToken',
      ) as AnchorToken;
    }
    return null;
  }

  /// Takes a Google ID token and returns an access and refresh token for this API. If token is valid and user does not already exist, a new Yago user will be created.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GoogleIdToken] googleIdToken (required):
  Future<Response> authGoogleCreateWithHttpInfo(
    GoogleIdToken googleIdToken,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/google/';

    // ignore: prefer_final_locals
    Object? postBody = googleIdToken;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Takes a Google ID token and returns an access and refresh token for this API. If token is valid and user does not already exist, a new Yago user will be created.
  ///
  /// Parameters:
  ///
  /// * [GoogleIdToken] googleIdToken (required):
  Future<TokenObtainResponse?> authGoogleCreate(
    GoogleIdToken googleIdToken,
  ) async {
    final response = await authGoogleCreateWithHttpInfo(
      googleIdToken,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'TokenObtainResponse',
      ) as TokenObtainResponse;
    }
    return null;
  }

  /// Takes a set of user credentials and returns an access and refresh JSON web token pair to prove the authentication of those credentials.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TokenObtainRequest] tokenObtainRequest (required):
  Future<Response> authLoginCreateWithHttpInfo(
    TokenObtainRequest tokenObtainRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/login/';

    // ignore: prefer_final_locals
    Object? postBody = tokenObtainRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Takes a set of user credentials and returns an access and refresh JSON web token pair to prove the authentication of those credentials.
  ///
  /// Parameters:
  ///
  /// * [TokenObtainRequest] tokenObtainRequest (required):
  Future<TokenObtainResponse?> authLoginCreate(
    TokenObtainRequest tokenObtainRequest,
  ) async {
    final response = await authLoginCreateWithHttpInfo(
      tokenObtainRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'TokenObtainResponse',
      ) as TokenObtainResponse;
    }
    return null;
  }

  /// Change password of current user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PasswordChange] passwordChange (required):
  Future<Response> authPasswordChangeCreateWithHttpInfo(
    PasswordChange passwordChange,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/password/change/';

    // ignore: prefer_final_locals
    Object? postBody = passwordChange;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Change password of current user.
  ///
  /// Parameters:
  ///
  /// * [PasswordChange] passwordChange (required):
  Future<PasswordChange?> authPasswordChangeCreate(
    PasswordChange passwordChange,
  ) async {
    final response = await authPasswordChangeCreateWithHttpInfo(
      passwordChange,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'PasswordChange',
      ) as PasswordChange;
    }
    return null;
  }

  /// Password reset e-mail link is confirmed, reset the user's password.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PasswordResetConfirm] passwordResetConfirm (required):
  Future<Response> authPasswordResetConfirmCreateWithHttpInfo(
    PasswordResetConfirm passwordResetConfirm,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/password/reset/confirm/';

    // ignore: prefer_final_locals
    Object? postBody = passwordResetConfirm;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Password reset e-mail link is confirmed, reset the user's password.
  ///
  /// Parameters:
  ///
  /// * [PasswordResetConfirm] passwordResetConfirm (required):
  Future<PasswordResetConfirm?> authPasswordResetConfirmCreate(
    PasswordResetConfirm passwordResetConfirm,
  ) async {
    final response = await authPasswordResetConfirmCreateWithHttpInfo(
      passwordResetConfirm,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'PasswordResetConfirm',
      ) as PasswordResetConfirm;
    }
    return null;
  }

  /// Request password reset. Send an email to the user first.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PasswordReset] passwordReset (required):
  Future<Response> authPasswordResetCreateWithHttpInfo(
    PasswordReset passwordReset,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/password/reset/';

    // ignore: prefer_final_locals
    Object? postBody = passwordReset;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Request password reset. Send an email to the user first.
  ///
  /// Parameters:
  ///
  /// * [PasswordReset] passwordReset (required):
  Future<PasswordReset?> authPasswordResetCreate(
    PasswordReset passwordReset,
  ) async {
    final response = await authPasswordResetCreateWithHttpInfo(
      passwordReset,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'PasswordReset',
      ) as PasswordReset;
    }
    return null;
  }

  /// Takes a refresh type JSON web token and returns an access type JSON web token if the refresh token is valid.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TokenRefreshRequest] tokenRefreshRequest (required):
  Future<Response> authRefreshCreateWithHttpInfo(
    TokenRefreshRequest tokenRefreshRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/refresh/';

    // ignore: prefer_final_locals
    Object? postBody = tokenRefreshRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Takes a refresh type JSON web token and returns an access type JSON web token if the refresh token is valid.
  ///
  /// Parameters:
  ///
  /// * [TokenRefreshRequest] tokenRefreshRequest (required):
  Future<TokenRefreshResponse?> authRefreshCreate(
    TokenRefreshRequest tokenRefreshRequest,
  ) async {
    final response = await authRefreshCreateWithHttpInfo(
      tokenRefreshRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'TokenRefreshResponse',
      ) as TokenRefreshResponse;
    }
    return null;
  }

  /// Takes a token and indicates if it is valid.  This view provides no information about a token's fitness for a particular use.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TokenVerify] tokenVerify (required):
  Future<Response> authVerifyCreateWithHttpInfo(
    TokenVerify tokenVerify,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/verify/';

    // ignore: prefer_final_locals
    Object? postBody = tokenVerify;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Takes a token and indicates if it is valid.  This view provides no information about a token's fitness for a particular use.
  ///
  /// Parameters:
  ///
  /// * [TokenVerify] tokenVerify (required):
  Future<void> authVerifyCreate(
    TokenVerify tokenVerify,
  ) async {
    final response = await authVerifyCreateWithHttpInfo(
      tokenVerify,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
