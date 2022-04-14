//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SubscriptionApi {
  SubscriptionApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a new stripe Subscription for a Yago pricing plan in state incomplete. Use client_secret to submit payment method with a stripe element to activate subscription.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [NewSubscriptionCreate] newSubscriptionCreate (required):
  Future<Response> subscriptionCreateWithHttpInfo(NewSubscriptionCreate newSubscriptionCreate,) async {
    // Verify required params are set.
    if (newSubscriptionCreate == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: newSubscriptionCreate');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/subscription/';

    // ignore: prefer_final_locals
    Object postBody = newSubscriptionCreate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['cookieAuth', 'jwtAuth', 'tokenAuth'];
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

  /// Create a new stripe Subscription for a Yago pricing plan in state incomplete. Use client_secret to submit payment method with a stripe element to activate subscription.
  ///
  /// Parameters:
  ///
  /// * [NewSubscriptionCreate] newSubscriptionCreate (required):
  Future<NewSubscription> subscriptionCreate(NewSubscriptionCreate newSubscriptionCreate,) async {
    final response = await subscriptionCreateWithHttpInfo(newSubscriptionCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NewSubscription',) as NewSubscription;
    
    }
    return Future<NewSubscription>.value();
  }

  /// Cancel current subscription. Subscription will be valid until current payment schedule is finished.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> subscriptionDestroyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/subscription/';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['cookieAuth', 'jwtAuth', 'tokenAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Cancel current subscription. Subscription will be valid until current payment schedule is finished.
  Future<void> subscriptionDestroy() async {
    final response = await subscriptionDestroyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get details of active subscription i customer is signed up.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> subscriptionRetrieveWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/subscription/';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['cookieAuth', 'jwtAuth', 'tokenAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get details of active subscription i customer is signed up.
  Future<Subscription> subscriptionRetrieve() async {
    final response = await subscriptionRetrieveWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Subscription',) as Subscription;
    
    }
    return Future<Subscription>.value();
  }
}
