//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of yago;

class SubscriptionApi {
  SubscriptionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a new subscription for a Yago pricing plan.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [NewSubscriptionCreate] newSubscriptionCreate (required):
  Future<Response> subscriptionCreateWithHttpInfo(
    NewSubscriptionCreate newSubscriptionCreate,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/subscription/';

    // ignore: prefer_final_locals
    Object? postBody = newSubscriptionCreate;

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

  /// Create a new subscription for a Yago pricing plan.
  ///
  /// Parameters:
  ///
  /// * [NewSubscriptionCreate] newSubscriptionCreate (required):
  Future<NewSubscription?> subscriptionCreate(
    NewSubscriptionCreate newSubscriptionCreate,
  ) async {
    final response = await subscriptionCreateWithHttpInfo(
      newSubscriptionCreate,
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
        'NewSubscription',
      ) as NewSubscription;
    }
    return null;
  }

  /// Cancel current subscription.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> subscriptionDestroyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/subscription/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Cancel current subscription.
  Future<void> subscriptionDestroy() async {
    final response = await subscriptionDestroyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get details of active subscription if customer is signed up.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> subscriptionRetrieveWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/subscription/';

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

  /// Get details of active subscription if customer is signed up.
  Future<Subscription?> subscriptionRetrieve() async {
    final response = await subscriptionRetrieveWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Subscription',
      ) as Subscription;
    }
    return null;
  }
}
