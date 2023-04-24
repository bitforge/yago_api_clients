//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsApi {
  ModelsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add a new model. Change details and translations later via PUT or PATCH.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ModelCreate] modelCreate (required):
  Future<Response> modelsCreateWithHttpInfo(
    ModelCreate modelCreate,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/models/';

    // ignore: prefer_final_locals
    Object? postBody = modelCreate;

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

  /// Add a new model. Change details and translations later via PUT or PATCH.
  ///
  /// Parameters:
  ///
  /// * [ModelCreate] modelCreate (required):
  Future<ModelCreate?> modelsCreate(
    ModelCreate modelCreate,
  ) async {
    final response = await modelsCreateWithHttpInfo(
      modelCreate,
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
        'ModelCreate',
      ) as ModelCreate;
    }
    return null;
  }

  /// Remove a model. Be cautious, this is permanent!
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Model.
  Future<Response> modelsDestroyWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/models/{id}/'.replaceAll('{id}', id);

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

  /// Remove a model. Be cautious, this is permanent!
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Model.
  Future<void> modelsDestroy(
    String id,
  ) async {
    final response = await modelsDestroyWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Model infos for embedding. Loaded by <ar-button> web component.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  Future<Response> modelsEmbedOptionsRetrieveWithHttpInfo(
    String slug,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/models/{slug}/embed/options/'.replaceAll('{slug}', slug);

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

  /// Model infos for embedding. Loaded by <ar-button> web component.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  Future<ModelInfo?> modelsEmbedOptionsRetrieve(
    String slug,
  ) async {
    final response = await modelsEmbedOptionsRetrieveWithHttpInfo(
      slug,
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
        'ModelInfo',
      ) as ModelInfo;
    }
    return null;
  }

  /// Delete a file.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> modelsGlbDestroyWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/models/{id}/glb/'.replaceAll('{id}', id);

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

  /// Delete a file.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> modelsGlbDestroy(
    String id,
  ) async {
    final response = await modelsGlbDestroyWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Upload a file. Max size 30MB. Filename is required!
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
  Future<Response> modelsGlbUpdateWithHttpInfo(
    String contentDisposition,
    String id, {
    MultipartFile? body,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/models/{id}/glb/'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'Content-Disposition'] = parameterToString(contentDisposition);

    const contentTypes = <String>['application/octet-stream'];

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

  /// Upload a file. Max size 30MB. Filename is required!
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
  Future<FileUpload?> modelsGlbUpdate(
    String contentDisposition,
    String id, {
    MultipartFile? body,
  }) async {
    final response = await modelsGlbUpdateWithHttpInfo(
      contentDisposition,
      id,
      body: body,
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
        'FileUpload',
      ) as FileUpload;
    }
    return null;
  }

  /// Delete an image.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> modelsImageDestroyWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/models/{id}/image/'.replaceAll('{id}', id);

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

  /// Delete an image.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> modelsImageDestroy(
    String id,
  ) async {
    final response = await modelsImageDestroyWithHttpInfo(
      id,
    );
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
  Future<Response> modelsImageUpdateWithHttpInfo(
    String contentDisposition,
    String id, {
    MultipartFile? body,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/models/{id}/image/'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'Content-Disposition'] = parameterToString(contentDisposition);

    const contentTypes = <String>['image/*'];

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
  Future<FileUpload?> modelsImageUpdate(
    String contentDisposition,
    String id, {
    MultipartFile? body,
  }) async {
    final response = await modelsImageUpdateWithHttpInfo(
      contentDisposition,
      id,
      body: body,
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
        'FileUpload',
      ) as FileUpload;
    }
    return null;
  }

  /// Lists all models for all projects the user is a member of. Can be filtered by `project`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project:
  ///
  /// * [String] status:
  ///   DRAFT=In development, READY=Modelling complete, ONLINE=Active use.  * `DRAFT` - Draft * `READY` - Ready * `ONLINE` - Online
  Future<Response> modelsListWithHttpInfo({
    String? project,
    String? status,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/models/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (project != null) {
      queryParams.addAll(_queryParams('', 'project', project));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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

  /// Lists all models for all projects the user is a member of. Can be filtered by `project`.
  ///
  /// Parameters:
  ///
  /// * [String] project:
  ///
  /// * [String] status:
  ///   DRAFT=In development, READY=Modelling complete, ONLINE=Active use.  * `DRAFT` - Draft * `READY` - Ready * `ONLINE` - Online
  Future<List<Model>?> modelsList({
    String? project,
    String? status,
  }) async {
    final response = await modelsListWithHttpInfo(
      project: project,
      status: status,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Model>') as List).cast<Model>().toList();
    }
    return null;
  }

  /// Delete a file.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> modelsModelDestroyWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/models/{id}/model/'.replaceAll('{id}', id);

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

  /// Delete a file.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> modelsModelDestroy(
    String id,
  ) async {
    final response = await modelsModelDestroyWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Upload a file. Max size 30MB. Filename is required!
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
  Future<Response> modelsModelUpdateWithHttpInfo(
    String contentDisposition,
    String id, {
    MultipartFile? body,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/models/{id}/model/'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'Content-Disposition'] = parameterToString(contentDisposition);

    const contentTypes = <String>['application/octet-stream'];

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

  /// Upload a file. Max size 30MB. Filename is required!
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
  Future<FileUpload?> modelsModelUpdate(
    String contentDisposition,
    String id, {
    MultipartFile? body,
  }) async {
    final response = await modelsModelUpdateWithHttpInfo(
      contentDisposition,
      id,
      body: body,
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
        'FileUpload',
      ) as FileUpload;
    }
    return null;
  }

  /// Change as subset of model details.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Model.
  ///
  /// * [PatchedModelUpdate] patchedModelUpdate:
  Future<Response> modelsPartialUpdateWithHttpInfo(
    String id, {
    PatchedModelUpdate? patchedModelUpdate,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/models/{id}/'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = patchedModelUpdate;

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

  /// Change as subset of model details.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Model.
  ///
  /// * [PatchedModelUpdate] patchedModelUpdate:
  Future<ModelUpdate?> modelsPartialUpdate(
    String id, {
    PatchedModelUpdate? patchedModelUpdate,
  }) async {
    final response = await modelsPartialUpdateWithHttpInfo(
      id,
      patchedModelUpdate: patchedModelUpdate,
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
        'ModelUpdate',
      ) as ModelUpdate;
    }
    return null;
  }

  /// Details of a single model.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Model.
  Future<Response> modelsRetrieveWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/models/{id}/'.replaceAll('{id}', id);

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

  /// Details of a single model.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Model.
  Future<Model?> modelsRetrieve(
    String id,
  ) async {
    final response = await modelsRetrieveWithHttpInfo(
      id,
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
        'Model',
      ) as Model;
    }
    return null;
  }

  /// Change model details. Translated field are all optional expcet for `name_de`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Model.
  ///
  /// * [ModelUpdate] modelUpdate:
  Future<Response> modelsUpdateWithHttpInfo(
    String id, {
    ModelUpdate? modelUpdate,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/models/{id}/'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = modelUpdate;

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

  /// Change model details. Translated field are all optional expcet for `name_de`.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Model.
  ///
  /// * [ModelUpdate] modelUpdate:
  Future<ModelUpdate?> modelsUpdate(
    String id, {
    ModelUpdate? modelUpdate,
  }) async {
    final response = await modelsUpdateWithHttpInfo(
      id,
      modelUpdate: modelUpdate,
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
        'ModelUpdate',
      ) as ModelUpdate;
    }
    return null;
  }

  /// Delete a file.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> modelsUsdzDestroyWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/models/{id}/usdz/'.replaceAll('{id}', id);

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

  /// Delete a file.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> modelsUsdzDestroy(
    String id,
  ) async {
    final response = await modelsUsdzDestroyWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Upload a file. Max size 30MB. Filename is required!
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
  Future<Response> modelsUsdzUpdateWithHttpInfo(
    String contentDisposition,
    String id, {
    MultipartFile? body,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/models/{id}/usdz/'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'Content-Disposition'] = parameterToString(contentDisposition);

    const contentTypes = <String>['application/octet-stream'];

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

  /// Upload a file. Max size 30MB. Filename is required!
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
  Future<FileUpload?> modelsUsdzUpdate(
    String contentDisposition,
    String id, {
    MultipartFile? body,
  }) async {
    final response = await modelsUsdzUpdateWithHttpInfo(
      contentDisposition,
      id,
      body: body,
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
        'FileUpload',
      ) as FileUpload;
    }
    return null;
  }
}
