//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of yago;

class CustomerApi {
  CustomerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Manage customer billing address. Required prior to subscribing to Yago services.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PatchedAddress] patchedAddress:
  Future<Response> customerBillingAddressPartialUpdateWithHttpInfo({
    PatchedAddress? patchedAddress,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/customer/billing_address/';

    // ignore: prefer_final_locals
    Object? postBody = patchedAddress;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Manage customer billing address. Required prior to subscribing to Yago services.
  ///
  /// Parameters:
  ///
  /// * [PatchedAddress] patchedAddress:
  Future<Address?> customerBillingAddressPartialUpdate({
    PatchedAddress? patchedAddress,
  }) async {
    final response = await customerBillingAddressPartialUpdateWithHttpInfo(
      patchedAddress: patchedAddress,
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
        'Address',
      ) as Address;
    }
    return null;
  }

  /// Manage customer billing address. Required prior to subscribing to Yago services.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> customerBillingAddressRetrieveWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/customer/billing_address/';

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

  /// Manage customer billing address. Required prior to subscribing to Yago services.
  Future<Address?> customerBillingAddressRetrieve() async {
    final response = await customerBillingAddressRetrieveWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Address',
      ) as Address;
    }
    return null;
  }

  /// Manage customer billing address. Required prior to subscribing to Yago services.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Address] address (required):
  Future<Response> customerBillingAddressUpdateWithHttpInfo(
    Address address,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/customer/billing_address/';

    // ignore: prefer_final_locals
    Object? postBody = address;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Manage customer billing address. Required prior to subscribing to Yago services.
  ///
  /// Parameters:
  ///
  /// * [Address] address (required):
  Future<Address?> customerBillingAddressUpdate(
    Address address,
  ) async {
    final response = await customerBillingAddressUpdateWithHttpInfo(
      address,
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
        'Address',
      ) as Address;
    }
    return null;
  }

  /// Returns the customer associated with the current user account.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> customerRetrieveWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/customer/';

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

  /// Returns the customer associated with the current user account.
  Future<Customer?> customerRetrieve() async {
    final response = await customerRetrieveWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Customer',
      ) as Customer;
    }
    return null;
  }
}
