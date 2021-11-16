//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RegistrationApi {
  RegistrationApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a new registeration and sends out an activation email.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RegistrationCreate] registrationCreate (required):
  Future<Response> registrationCreateWithHttpInfo(RegistrationCreate registrationCreate,) async {
    // Verify required params are set.
    if (registrationCreate == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: registrationCreate');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/registration/';

    // ignore: prefer_final_locals
    Object postBody = registrationCreate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Create a new registeration and sends out an activation email.
  ///
  /// Parameters:
  ///
  /// * [RegistrationCreate] registrationCreate (required):
  Future<Registration> registrationCreate(RegistrationCreate registrationCreate,) async {
    final response = await registrationCreateWithHttpInfo(registrationCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Registration',) as Registration;
    
    }
    return Future<Registration>.value();
  }

  /// Verifiy registration email, create user and return login token
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] code (required):
  Future<Response> registrationVerifyCreateWithHttpInfo(String code,) async {
    // Verify required params are set.
    if (code == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: code');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/registration/verify/{code}/'
      .replaceAll('{code}', code);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Verifiy registration email, create user and return login token
  ///
  /// Parameters:
  ///
  /// * [String] code (required):
  Future<UserVerified> registrationVerifyCreate(String code,) async {
    final response = await registrationVerifyCreateWithHttpInfo(code,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserVerified',) as UserVerified;
    
    }
    return Future<UserVerified>.value();
  }
}
