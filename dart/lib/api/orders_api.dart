//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OrdersApi {
  OrdersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add a new comment to order.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [OrderCommentCreate] orderCommentCreate (required):
  Future<Response> ordersCommentsCreateWithHttpInfo(int orderId, OrderCommentCreate orderCommentCreate,) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }
    if (orderCommentCreate == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderCommentCreate');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{order_id}/comments/'
      .replaceAll('{order_id}', orderId.toString());

    // ignore: prefer_final_locals
    Object postBody = orderCommentCreate;

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

  /// Add a new comment to order.
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [OrderCommentCreate] orderCommentCreate (required):
  Future<OrderCommentCreate> ordersCommentsCreate(int orderId, OrderCommentCreate orderCommentCreate,) async {
    final response = await ordersCommentsCreateWithHttpInfo(orderId, orderCommentCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderCommentCreate',) as OrderCommentCreate;
    
    }
    return Future<OrderCommentCreate>.value();
  }

  /// List all comments of order.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  Future<Response> ordersCommentsListWithHttpInfo(int orderId,) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{order_id}/comments/'
      .replaceAll('{order_id}', orderId.toString());

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

  /// List all comments of order.
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  Future<List<OrderComment>> ordersCommentsList(int orderId,) async {
    final response = await ordersCommentsListWithHttpInfo(orderId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OrderComment>') as List)
        .cast<OrderComment>()
        .toList(growable: false);

    }
    return Future<List<OrderComment>>.value();
  }

  /// Add a new order.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OrderCreate] orderCreate (required):
  Future<Response> ordersCreateWithHttpInfo(OrderCreate orderCreate,) async {
    // Verify required params are set.
    if (orderCreate == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderCreate');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/';

    // ignore: prefer_final_locals
    Object postBody = orderCreate;

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

  /// Add a new order.
  ///
  /// Parameters:
  ///
  /// * [OrderCreate] orderCreate (required):
  Future<Order> ordersCreate(OrderCreate orderCreate,) async {
    final response = await ordersCreateWithHttpInfo(orderCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Order',) as Order;
    
    }
    return Future<Order>.value();
  }

  /// Delete order.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Order.
  Future<Response> ordersDestroyWithHttpInfo(int id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{id}/'
      .replaceAll('{id}', id.toString());

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

  /// Delete order.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Order.
  Future<void> ordersDestroy(int id,) async {
    final response = await ordersDestroyWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists all orders of customer.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project:
  Future<Response> ordersListWithHttpInfo({ String project, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/api/orders/';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (project != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'project', project));
    }

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

  /// Lists all orders of customer.
  ///
  /// Parameters:
  ///
  /// * [String] project:
  Future<List<Order>> ordersList({ String project, }) async {
    final response = await ordersListWithHttpInfo( project: project, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Order>') as List)
        .cast<Order>()
        .toList(growable: false);

    }
    return Future<List<Order>>.value();
  }

  /// Add a new comment to order.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] id (required):
  ///
  /// * [OrderModelCommentCreate] orderModelCommentCreate (required):
  Future<Response> ordersModelsCommentsCreateWithHttpInfo(int orderId, int id, OrderModelCommentCreate orderModelCommentCreate,) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (orderModelCommentCreate == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderModelCommentCreate');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{order_id}/models/{id}/comments/'
      .replaceAll('{order_id}', orderId.toString())
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object postBody = orderModelCommentCreate;

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

  /// Add a new comment to order.
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] id (required):
  ///
  /// * [OrderModelCommentCreate] orderModelCommentCreate (required):
  Future<OrderModelCommentCreate> ordersModelsCommentsCreate(int orderId, int id, OrderModelCommentCreate orderModelCommentCreate,) async {
    final response = await ordersModelsCommentsCreateWithHttpInfo(orderId, id, orderModelCommentCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderModelCommentCreate',) as OrderModelCommentCreate;
    
    }
    return Future<OrderModelCommentCreate>.value();
  }

  /// List all comments of model.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] id (required):
  Future<Response> ordersModelsCommentsListWithHttpInfo(int orderId, int id,) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{order_id}/models/{id}/comments/'
      .replaceAll('{order_id}', orderId.toString())
      .replaceAll('{id}', id.toString());

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

  /// List all comments of model.
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] id (required):
  Future<List<OrderModelComment>> ordersModelsCommentsList(int orderId, int id,) async {
    final response = await ordersModelsCommentsListWithHttpInfo(orderId, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OrderModelComment>') as List)
        .cast<OrderModelComment>()
        .toList(growable: false);

    }
    return Future<List<OrderModelComment>>.value();
  }

  /// Add a new model.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [OrderModelCreate] orderModelCreate (required):
  Future<Response> ordersModelsCreateWithHttpInfo(int orderId, OrderModelCreate orderModelCreate,) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }
    if (orderModelCreate == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderModelCreate');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{order_id}/models/'
      .replaceAll('{order_id}', orderId.toString());

    // ignore: prefer_final_locals
    Object postBody = orderModelCreate;

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

  /// Add a new model.
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [OrderModelCreate] orderModelCreate (required):
  Future<OrderModel> ordersModelsCreate(int orderId, OrderModelCreate orderModelCreate,) async {
    final response = await ordersModelsCreateWithHttpInfo(orderId, orderModelCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderModel',) as OrderModel;
    
    }
    return Future<OrderModel>.value();
  }

  /// Delete model.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Model.
  Future<Response> ordersModelsDestroyWithHttpInfo(int orderId, int id,) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{order_id}/models/{id}/'
      .replaceAll('{order_id}', orderId.toString())
      .replaceAll('{id}', id.toString());

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

  /// Delete model.
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Model.
  Future<void> ordersModelsDestroy(int orderId, int id,) async {
    final response = await ordersModelsDestroyWithHttpInfo(orderId, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete file.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] id (required):
  ///
  /// * [String] fileId (required):
  Future<Response> ordersModelsFilesDestroyWithHttpInfo(int orderId, int id, String fileId,) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (fileId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: fileId');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{order_id}/models/{id}/files/{file_id}/'
      .replaceAll('{order_id}', orderId.toString())
      .replaceAll('{id}', id.toString())
      .replaceAll('{file_id}', fileId);

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

  /// Delete file.
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] id (required):
  ///
  /// * [String] fileId (required):
  Future<void> ordersModelsFilesDestroy(int orderId, int id, String fileId,) async {
    final response = await ordersModelsFilesDestroyWithHttpInfo(orderId, id, fileId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists all files of model.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] id (required):
  Future<Response> ordersModelsFilesListWithHttpInfo(int orderId, int id,) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{order_id}/models/{id}/files/'
      .replaceAll('{order_id}', orderId.toString())
      .replaceAll('{id}', id.toString());

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

  /// Lists all files of model.
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] id (required):
  Future<List<OrderModelFile>> ordersModelsFilesList(int orderId, int id,) async {
    final response = await ordersModelsFilesListWithHttpInfo(orderId, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OrderModelFile>') as List)
        .cast<OrderModelFile>()
        .toList(growable: false);

    }
    return Future<List<OrderModelFile>>.value();
  }

  /// Upload a file. Max size 30MB. Filename is required!
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [String] contentDisposition (required):
  ///   The original filename.
  ///
  /// * [int] id (required):
  ///
  /// * [MultipartFile] body:
  Future<Response> ordersModelsFilesUpdateWithHttpInfo(int orderId, String contentDisposition, int id, { MultipartFile body, }) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }
    if (contentDisposition == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: contentDisposition');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{order_id}/models/{id}/files/'
      .replaceAll('{order_id}', orderId.toString())
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'Content-Disposition'] = parameterToString(contentDisposition);

    const authNames = <String>['cookieAuth', 'jwtAuth', 'tokenAuth'];
    const contentTypes = <String>['application/octet-stream'];


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

  /// Upload a file. Max size 30MB. Filename is required!
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [String] contentDisposition (required):
  ///   The original filename.
  ///
  /// * [int] id (required):
  ///
  /// * [MultipartFile] body:
  Future<FileUploaded> ordersModelsFilesUpdate(int orderId, String contentDisposition, int id, { MultipartFile body, }) async {
    final response = await ordersModelsFilesUpdateWithHttpInfo(orderId, contentDisposition, id,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FileUploaded',) as FileUploaded;
    
    }
    return Future<FileUploaded>.value();
  }

  /// Lists all models of order.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  Future<Response> ordersModelsListWithHttpInfo(int orderId,) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{order_id}/models/'
      .replaceAll('{order_id}', orderId.toString());

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

  /// Lists all models of order.
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  Future<List<OrderModel>> ordersModelsList(int orderId,) async {
    final response = await ordersModelsListWithHttpInfo(orderId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OrderModel>') as List)
        .cast<OrderModel>()
        .toList(growable: false);

    }
    return Future<List<OrderModel>>.value();
  }

  /// `ModelOrder` CRUD Viewset.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Model.
  Future<Response> ordersModelsRetrieveWithHttpInfo(int orderId, int id,) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{order_id}/models/{id}/'
      .replaceAll('{order_id}', orderId.toString())
      .replaceAll('{id}', id.toString());

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

  /// `ModelOrder` CRUD Viewset.
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Model.
  Future<OrderModelDetail> ordersModelsRetrieve(int orderId, int id,) async {
    final response = await ordersModelsRetrieveWithHttpInfo(orderId, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderModelDetail',) as OrderModelDetail;
    
    }
    return Future<OrderModelDetail>.value();
  }

  /// Model was accepted by customer and can be added to project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] id (required):
  Future<Response> ordersModelsSubmitToFinishedPartialUpdateWithHttpInfo(int orderId, int id,) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{order_id}/models/{id}/submit_to_finished/'
      .replaceAll('{order_id}', orderId.toString())
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['cookieAuth', 'jwtAuth', 'tokenAuth'];
    const contentTypes = <String>[];


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

  /// Model was accepted by customer and can be added to project.
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] id (required):
  Future<StateChanged> ordersModelsSubmitToFinishedPartialUpdate(int orderId, int id,) async {
    final response = await ordersModelsSubmitToFinishedPartialUpdateWithHttpInfo(orderId, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StateChanged',) as StateChanged;
    
    }
    return Future<StateChanged>.value();
  }

  /// Model is ready to be reviewed by customer.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] id (required):
  Future<Response> ordersModelsSubmitToReviewPartialUpdateWithHttpInfo(int orderId, int id,) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{order_id}/models/{id}/submit_to_review/'
      .replaceAll('{order_id}', orderId.toString())
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['cookieAuth', 'jwtAuth', 'tokenAuth'];
    const contentTypes = <String>[];


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

  /// Model is ready to be reviewed by customer.
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] id (required):
  Future<StateChanged> ordersModelsSubmitToReviewPartialUpdate(int orderId, int id,) async {
    final response = await ordersModelsSubmitToReviewPartialUpdateWithHttpInfo(orderId, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StateChanged',) as StateChanged;
    
    }
    return Future<StateChanged>.value();
  }

  /// Request rework of model, as specified in comments. Can only happen once.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] id (required):
  Future<Response> ordersModelsSubmitToReworkPartialUpdateWithHttpInfo(int orderId, int id,) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{order_id}/models/{id}/submit_to_rework/'
      .replaceAll('{order_id}', orderId.toString())
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['cookieAuth', 'jwtAuth', 'tokenAuth'];
    const contentTypes = <String>[];


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

  /// Request rework of model, as specified in comments. Can only happen once.
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] id (required):
  Future<StateChanged> ordersModelsSubmitToReworkPartialUpdate(int orderId, int id,) async {
    final response = await ordersModelsSubmitToReworkPartialUpdateWithHttpInfo(orderId, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StateChanged',) as StateChanged;
    
    }
    return Future<StateChanged>.value();
  }

  /// Lists available transitions of order model for current user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] id (required):
  Future<Response> ordersModelsTransitionsListWithHttpInfo(int orderId, int id,) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{order_id}/models/{id}/transitions/'
      .replaceAll('{order_id}', orderId.toString())
      .replaceAll('{id}', id.toString());

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

  /// Lists available transitions of order model for current user.
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] id (required):
  Future<List<AvailableState>> ordersModelsTransitionsList(int orderId, int id,) async {
    final response = await ordersModelsTransitionsListWithHttpInfo(orderId, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AvailableState>') as List)
        .cast<AvailableState>()
        .toList(growable: false);

    }
    return Future<List<AvailableState>>.value();
  }

  /// Change model.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Model.
  ///
  /// * [OrderModelUpdate] orderModelUpdate (required):
  Future<Response> ordersModelsUpdateWithHttpInfo(int orderId, int id, OrderModelUpdate orderModelUpdate,) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (orderModelUpdate == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderModelUpdate');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{order_id}/models/{id}/'
      .replaceAll('{order_id}', orderId.toString())
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object postBody = orderModelUpdate;

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

  /// Change model.
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Model.
  ///
  /// * [OrderModelUpdate] orderModelUpdate (required):
  Future<OrderModelUpdate> ordersModelsUpdate(int orderId, int id, OrderModelUpdate orderModelUpdate,) async {
    final response = await ordersModelsUpdateWithHttpInfo(orderId, id, orderModelUpdate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderModelUpdate',) as OrderModelUpdate;
    
    }
    return Future<OrderModelUpdate>.value();
  }

  /// Details of a single order.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Order.
  Future<Response> ordersRetrieveWithHttpInfo(int id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{id}/'
      .replaceAll('{id}', id.toString());

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

  /// Details of a single order.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Order.
  Future<OrderDetail> ordersRetrieve(int id,) async {
    final response = await ordersRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderDetail',) as OrderDetail;
    
    }
    return Future<OrderDetail>.value();
  }

  /// Send order to estimation after all models have been added and specified.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  Future<Response> ordersSubmitToEstimationPartialUpdateWithHttpInfo(int orderId,) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{order_id}/submit_to_estimation/'
      .replaceAll('{order_id}', orderId.toString());

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['cookieAuth', 'jwtAuth', 'tokenAuth'];
    const contentTypes = <String>[];


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

  /// Send order to estimation after all models have been added and specified.
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  Future<StateChanged> ordersSubmitToEstimationPartialUpdate(int orderId,) async {
    final response = await ordersSubmitToEstimationPartialUpdateWithHttpInfo(orderId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StateChanged',) as StateChanged;
    
    }
    return Future<StateChanged>.value();
  }

  /// All models are reviewed & accepted by customer, order is complete.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  Future<Response> ordersSubmitToFinishedPartialUpdateWithHttpInfo(int orderId,) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{order_id}/submit_to_finished/'
      .replaceAll('{order_id}', orderId.toString());

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['cookieAuth', 'jwtAuth', 'tokenAuth'];
    const contentTypes = <String>[];


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

  /// All models are reviewed & accepted by customer, order is complete.
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  Future<StateChanged> ordersSubmitToFinishedPartialUpdate(int orderId,) async {
    final response = await ordersSubmitToFinishedPartialUpdateWithHttpInfo(orderId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StateChanged',) as StateChanged;
    
    }
    return Future<StateChanged>.value();
  }

  /// Models have been estimated and and payment price for customer is defined.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  Future<Response> ordersSubmitToPaymentPartialUpdateWithHttpInfo(int orderId,) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{order_id}/submit_to_payment/'
      .replaceAll('{order_id}', orderId.toString());

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['cookieAuth', 'jwtAuth', 'tokenAuth'];
    const contentTypes = <String>[];


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

  /// Models have been estimated and and payment price for customer is defined.
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  Future<StateChanged> ordersSubmitToPaymentPartialUpdate(int orderId,) async {
    final response = await ordersSubmitToPaymentPartialUpdateWithHttpInfo(orderId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StateChanged',) as StateChanged;
    
    }
    return Future<StateChanged>.value();
  }

  /// Customer has payed estimated amount and modelling can begin.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  Future<Response> ordersSubmitToProgressPartialUpdateWithHttpInfo(int orderId,) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{order_id}/submit_to_progress/'
      .replaceAll('{order_id}', orderId.toString());

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['cookieAuth', 'jwtAuth', 'tokenAuth'];
    const contentTypes = <String>[];


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

  /// Customer has payed estimated amount and modelling can begin.
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  Future<StateChanged> ordersSubmitToProgressPartialUpdate(int orderId,) async {
    final response = await ordersSubmitToProgressPartialUpdateWithHttpInfo(orderId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StateChanged',) as StateChanged;
    
    }
    return Future<StateChanged>.value();
  }

  /// All models are uploaded and ready, customer may begin with review.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  Future<Response> ordersSubmitToReviewPartialUpdateWithHttpInfo(int orderId,) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{order_id}/submit_to_review/'
      .replaceAll('{order_id}', orderId.toString());

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['cookieAuth', 'jwtAuth', 'tokenAuth'];
    const contentTypes = <String>[];


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

  /// All models are uploaded and ready, customer may begin with review.
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  Future<StateChanged> ordersSubmitToReviewPartialUpdate(int orderId,) async {
    final response = await ordersSubmitToReviewPartialUpdateWithHttpInfo(orderId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StateChanged',) as StateChanged;
    
    }
    return Future<StateChanged>.value();
  }

  /// Lists available transitions of order for current user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  Future<Response> ordersTransitionsListWithHttpInfo(int orderId,) async {
    // Verify required params are set.
    if (orderId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderId');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{order_id}/transitions/'
      .replaceAll('{order_id}', orderId.toString());

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

  /// Lists available transitions of order for current user.
  ///
  /// Parameters:
  ///
  /// * [int] orderId (required):
  Future<List<AvailableState>> ordersTransitionsList(int orderId,) async {
    final response = await ordersTransitionsListWithHttpInfo(orderId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AvailableState>') as List)
        .cast<AvailableState>()
        .toList(growable: false);

    }
    return Future<List<AvailableState>>.value();
  }

  /// Update order price estimation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Order.
  ///
  /// * [OrderUpdate] orderUpdate (required):
  Future<Response> ordersUpdateWithHttpInfo(int id, OrderUpdate orderUpdate,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (orderUpdate == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orderUpdate');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/orders/{id}/'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object postBody = orderUpdate;

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

  /// Update order price estimation.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Order.
  ///
  /// * [OrderUpdate] orderUpdate (required):
  Future<OrderUpdate> ordersUpdate(int id, OrderUpdate orderUpdate,) async {
    final response = await ordersUpdateWithHttpInfo(id, orderUpdate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderUpdate',) as OrderUpdate;
    
    }
    return Future<OrderUpdate>.value();
  }
}
