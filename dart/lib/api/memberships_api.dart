//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of yago;

class MembershipsApi {
  MembershipsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add a new project membership.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Membership] membership (required):
  Future<Response> membershipsCreateWithHttpInfo(
    Membership membership,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/memberships/';

    // ignore: prefer_final_locals
    Object? postBody = membership;

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

  /// Add a new project membership.
  ///
  /// Parameters:
  ///
  /// * [Membership] membership (required):
  Future<Membership?> membershipsCreate(
    Membership membership,
  ) async {
    final response = await membershipsCreateWithHttpInfo(
      membership,
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
        'Membership',
      ) as Membership;
    }
    return null;
  }

  /// Remove a project member. Only OWNERS can do this.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Project member.
  Future<Response> membershipsDestroyWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/memberships/{id}/'.replaceAll('{id}', id);

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

  /// Remove a project member. Only OWNERS can do this.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Project member.
  Future<void> membershipsDestroy(
    String id,
  ) async {
    final response = await membershipsDestroyWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// All project memberships of projects the user is also a member of. Can be filtered by `project` and `user`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project:
  ///
  /// * [String] user:
  Future<Response> membershipsListWithHttpInfo({
    String? project,
    String? user,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/memberships/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (project != null) {
      queryParams.addAll(_queryParams('', 'project', project));
    }
    if (user != null) {
      queryParams.addAll(_queryParams('', 'user', user));
    }

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

  /// All project memberships of projects the user is also a member of. Can be filtered by `project` and `user`.
  ///
  /// Parameters:
  ///
  /// * [String] project:
  ///
  /// * [String] user:
  Future<List<Membership>?> membershipsList({
    String? project,
    String? user,
  }) async {
    final response = await membershipsListWithHttpInfo(
      project: project,
      user: user,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Membership>') as List)
          .cast<Membership>()
          .toList(growable: false);
    }
    return null;
  }
}
