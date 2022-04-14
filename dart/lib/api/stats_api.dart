//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StatsApi {
  StatsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Traffic analytics over all projects and models.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GlobalStatistics] globalStatistics (required):
  Future<Response> statsGlobalChronicCreateWithHttpInfo(GlobalStatistics globalStatistics,) async {
    // Verify required params are set.
    if (globalStatistics == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: globalStatistics');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/stats/global/chronic/';

    // ignore: prefer_final_locals
    Object postBody = globalStatistics;

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

  /// Traffic analytics over all projects and models.
  ///
  /// Parameters:
  ///
  /// * [GlobalStatistics] globalStatistics (required):
  Future<List<ChronicStats>> statsGlobalChronicCreate(GlobalStatistics globalStatistics,) async {
    final response = await statsGlobalChronicCreateWithHttpInfo(globalStatistics,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ChronicStats>') as List)
        .cast<ChronicStats>()
        .toList(growable: false);

    }
    return Future<List<ChronicStats>>.value();
  }

  /// Traffic analytics over all projects and models.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GlobalStatistics] globalStatistics (required):
  Future<Response> statsGlobalSummaryCreateWithHttpInfo(GlobalStatistics globalStatistics,) async {
    // Verify required params are set.
    if (globalStatistics == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: globalStatistics');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/stats/global/summary/';

    // ignore: prefer_final_locals
    Object postBody = globalStatistics;

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

  /// Traffic analytics over all projects and models.
  ///
  /// Parameters:
  ///
  /// * [GlobalStatistics] globalStatistics (required):
  Future<SummaryStats> statsGlobalSummaryCreate(GlobalStatistics globalStatistics,) async {
    final response = await statsGlobalSummaryCreateWithHttpInfo(globalStatistics,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SummaryStats',) as SummaryStats;
    
    }
    return Future<SummaryStats>.value();
  }

  /// Chronic statistics for single project and all models of that project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [ProjectStatistics] projectStatistics (required):
  Future<Response> statsProjectChronicCreateWithHttpInfo(String id, ProjectStatistics projectStatistics,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (projectStatistics == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: projectStatistics');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/stats/project/{id}/chronic/'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody = projectStatistics;

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

  /// Chronic statistics for single project and all models of that project.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [ProjectStatistics] projectStatistics (required):
  Future<List<ChronicStats>> statsProjectChronicCreate(String id, ProjectStatistics projectStatistics,) async {
    final response = await statsProjectChronicCreateWithHttpInfo(id, projectStatistics,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ChronicStats>') as List)
        .cast<ChronicStats>()
        .toList(growable: false);

    }
    return Future<List<ChronicStats>>.value();
  }

  /// Summary statistics for single project and all models of that project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [ProjectStatistics] projectStatistics (required):
  Future<Response> statsProjectSummaryCreateWithHttpInfo(String id, ProjectStatistics projectStatistics,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (projectStatistics == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: projectStatistics');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/stats/project/{id}/summary/'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody = projectStatistics;

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

  /// Summary statistics for single project and all models of that project.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [ProjectStatistics] projectStatistics (required):
  Future<SummaryStats> statsProjectSummaryCreate(String id, ProjectStatistics projectStatistics,) async {
    final response = await statsProjectSummaryCreateWithHttpInfo(id, projectStatistics,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SummaryStats',) as SummaryStats;
    
    }
    return Future<SummaryStats>.value();
  }
}
