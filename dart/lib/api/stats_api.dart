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
  Future<Response> statsGlobalCreateWithHttpInfo(GlobalStatistics globalStatistics,) async {
    // Verify required params are set.
    if (globalStatistics == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: globalStatistics');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/stats/global/';

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
  Future<SummaryStats> statsGlobalCreate(GlobalStatistics globalStatistics,) async {
    final response = await statsGlobalCreateWithHttpInfo(globalStatistics,);
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

  /// Traffic for single project and all models of that project. Raises 404 if the user is not allowed to view data of this project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [ProjectsStatistics] projectsStatistics (required):
  Future<Response> statsProjectCreateWithHttpInfo(String id, ProjectsStatistics projectsStatistics,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (projectsStatistics == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: projectsStatistics');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/stats/project/{id}/'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody = projectsStatistics;

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

  /// Traffic for single project and all models of that project. Raises 404 if the user is not allowed to view data of this project.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [ProjectsStatistics] projectsStatistics (required):
  Future<SummaryStats> statsProjectCreate(String id, ProjectsStatistics projectsStatistics,) async {
    final response = await statsProjectCreateWithHttpInfo(id, projectsStatistics,);
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
