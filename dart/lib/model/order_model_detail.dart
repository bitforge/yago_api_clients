//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderModelDetail {
  /// Returns a new [OrderModelDetail] instance.
  OrderModelDetail({
    @required this.id,
    @required this.name,
    this.state,
    this.website,
    this.widthMm,
    this.heightMm,
    this.depthMm,
    this.model,
    @required this.created,
    @required this.modified,
    this.files = const [],
    this.comments = const [],
  });

  int id;

  String name;

  OrderState state;

  String website;

  double widthMm;

  double heightMm;

  double depthMm;

  /// Resulting model after order is finished. Available when state is IN_PROGRESS.
  String model;

  DateTime created;

  DateTime modified;

  List<OrderModelFile> files;

  List<OrderModelComment> comments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderModelDetail &&
     other.id == id &&
     other.name == name &&
     other.state == state &&
     other.website == website &&
     other.widthMm == widthMm &&
     other.heightMm == heightMm &&
     other.depthMm == depthMm &&
     other.model == model &&
     other.created == created &&
     other.modified == modified &&
     other.files == files &&
     other.comments == comments;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (state == null ? 0 : state.hashCode) +
    (website == null ? 0 : website.hashCode) +
    (widthMm == null ? 0 : widthMm.hashCode) +
    (heightMm == null ? 0 : heightMm.hashCode) +
    (depthMm == null ? 0 : depthMm.hashCode) +
    (model == null ? 0 : model.hashCode) +
    (created == null ? 0 : created.hashCode) +
    (modified == null ? 0 : modified.hashCode) +
    (files == null ? 0 : files.hashCode) +
    (comments == null ? 0 : comments.hashCode);

  @override
  String toString() => 'OrderModelDetail[id=$id, name=$name, state=$state, website=$website, widthMm=$widthMm, heightMm=$heightMm, depthMm=$depthMm, model=$model, created=$created, modified=$modified, files=$files, comments=$comments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'name'] = name;
      json[r'state'] = state == null ? null : state;
    if (website != null) {
      json[r'website'] = website;
    }
    if (widthMm != null) {
      json[r'width_mm'] = widthMm;
    }
    if (heightMm != null) {
      json[r'height_mm'] = heightMm;
    }
    if (depthMm != null) {
      json[r'depth_mm'] = depthMm;
    }
      json[r'model'] = model == null ? null : model;
      json[r'created'] = created.toUtc().toIso8601String();
      json[r'modified'] = modified.toUtc().toIso8601String();
      json[r'files'] = files;
      json[r'comments'] = comments;
    return json;
  }

  /// Returns a new [OrderModelDetail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderModelDetail fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrderModelDetail(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        state: OrderState.fromJson(json[r'state']),
        website: mapValueOfType<String>(json, r'website'),
        widthMm: mapValueOfType<double>(json, r'width_mm'),
        heightMm: mapValueOfType<double>(json, r'height_mm'),
        depthMm: mapValueOfType<double>(json, r'depth_mm'),
        model: mapValueOfType<String>(json, r'model'),
        created: mapDateTime(json, r'created', ''),
        modified: mapDateTime(json, r'modified', ''),
        files: OrderModelFile.listFromJson(json[r'files']),
        comments: OrderModelComment.listFromJson(json[r'comments']),
      );
    }
    return null;
  }

  static List<OrderModelDetail> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrderModelDetail.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrderModelDetail>[];

  static Map<String, OrderModelDetail> mapFromJson(dynamic json) {
    final map = <String, OrderModelDetail>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrderModelDetail.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderModelDetail-objects as value to a dart map
  static Map<String, List<OrderModelDetail>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderModelDetail>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrderModelDetail.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

