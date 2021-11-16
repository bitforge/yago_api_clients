//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ProjectsApi {
  ProjectsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add a new project. Change details later via PUT or PATCH.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProjectCreate] projectCreate (required):
  Future<Response> projectsCreateWithHttpInfo(ProjectCreate projectCreate,) async {
    // Verify required params are set.
    if (projectCreate == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: projectCreate');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/projects/';

    // ignore: prefer_final_locals
    Object postBody = projectCreate;

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

  /// Add a new project. Change details later via PUT or PATCH.
  ///
  /// Parameters:
  ///
  /// * [ProjectCreate] projectCreate (required):
  Future<Project> projectsCreate(ProjectCreate projectCreate,) async {
    final response = await projectsCreateWithHttpInfo(projectCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Project',) as Project;
    
    }
    return Future<Project>.value();
  }

  /// Remove a project. Only members with role OWNER can do this.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Project.
  Future<Response> projectsDestroyWithHttpInfo(String id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/projects/{id}/'
      .replaceAll('{id}', id);

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

  /// Remove a project. Only members with role OWNER can do this.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Project.
  Future<void> projectsDestroy(String id,) async {
    final response = await projectsDestroyWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete an image.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> projectsImageDestroyWithHttpInfo(String id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/projects/{id}/image/'
      .replaceAll('{id}', id);

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

  /// Delete an image.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> projectsImageDestroy(String id,) async {
    final response = await projectsImageDestroyWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Upload an image. Max size 30MB. Filename is required!
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] contentDisposition (required):
  ///   The original filename.
  ///
  /// * [String] id (required):
  ///   A UUID identifying this object.
  ///
  /// * [MultipartFile] body:
  Future<Response> projectsImageUpdateWithHttpInfo(String contentDisposition, String id, { MultipartFile body, }) async {
    // Verify required params are set.
    if (contentDisposition == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: contentDisposition');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/projects/{id}/image/'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'Content-Disposition'] = parameterToString(contentDisposition);

    const authNames = <String>['cookieAuth', 'jwtAuth', 'tokenAuth'];
    const contentTypes = <String>['image/_*'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Upload an image. Max size 30MB. Filename is required!
  ///
  /// Parameters:
  ///
  /// * [String] contentDisposition (required):
  ///   The original filename.
  ///
  /// * [String] id (required):
  ///   A UUID identifying this object.
  ///
  /// * [MultipartFile] body:
  Future<FileUpload> projectsImageUpdate(String contentDisposition, String id, { MultipartFile body, }) async {
    final response = await projectsImageUpdateWithHttpInfo(contentDisposition, id,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FileUpload',) as FileUpload;
    
    }
    return Future<FileUpload>.value();
  }

  /// Lists all projects the user is a member of.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> projectsListWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/projects/';

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

  /// Lists all projects the user is a member of.
  Future<List<Project>> projectsList() async {
    final response = await projectsListWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Project>') as List)
        .cast<Project>()
        .toList(growable: false);

    }
    return Future<List<Project>>.value();
  }

  /// Change as subset of project details.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Project.
  ///
  /// * [PatchedProjectUpdate] patchedProjectUpdate:
  Future<Response> projectsPartialUpdateWithHttpInfo(String id, { PatchedProjectUpdate patchedProjectUpdate, }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/projects/{id}/'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody = patchedProjectUpdate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['cookieAuth', 'jwtAuth', 'tokenAuth'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Change as subset of project details.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Project.
  ///
  /// * [PatchedProjectUpdate] patchedProjectUpdate:
  Future<ProjectUpdate> projectsPartialUpdate(String id, { PatchedProjectUpdate patchedProjectUpdate, }) async {
    final response = await projectsPartialUpdateWithHttpInfo(id,  patchedProjectUpdate: patchedProjectUpdate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectUpdate',) as ProjectUpdate;
    
    }
    return Future<ProjectUpdate>.value();
  }

  /// Details of a single project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Project.
  Future<Response> projectsRetrieveWithHttpInfo(String id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/projects/{id}/'
      .replaceAll('{id}', id);

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

  /// Details of a single project.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Project.
  Future<Project> projectsRetrieve(String id,) async {
    final response = await projectsRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Project',) as Project;
    
    }
    return Future<Project>.value();
  }

  /// Change project and settings.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Project.
  ///
  /// * [ProjectUpdate] projectUpdate (required):
  Future<Response> projectsUpdateWithHttpInfo(String id, ProjectUpdate projectUpdate,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (projectUpdate == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: projectUpdate');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/projects/{id}/'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody = projectUpdate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['cookieAuth', 'jwtAuth', 'tokenAuth'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Change project and settings.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Project.
  ///
  /// * [ProjectUpdate] projectUpdate (required):
  Future<ProjectUpdate> projectsUpdate(String id, ProjectUpdate projectUpdate,) async {
    final response = await projectsUpdateWithHttpInfo(id, projectUpdate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectUpdate',) as ProjectUpdate;
    
    }
    return Future<ProjectUpdate>.value();
  }
}
