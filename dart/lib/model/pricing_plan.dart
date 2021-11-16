//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PricingPlan {
  /// Returns a new [PricingPlan] instance.
  PricingPlan({
    @required this.key,
    @required this.name,
    @required this.price,
    @required this.projectQuotas,
    @required this.modelQuotas,
    @required this.viewQuotas,
    this.seoOptimization,
    this.viewReporting,
    this.customQrCodes,
  });

  String key;

  String name;

  /// For display purposes, payment price is defined in stripe product.
  double price;

  /// How many projects are included in this plan.
  // minimum: 0
  // maximum: 9223372036854775807
  int projectQuotas;

  /// How many models are included in this plan.
  // minimum: 0
  // maximum: 9223372036854775807
  int modelQuotas;

  /// How many AR views are included in this plan.
  // minimum: 0
  // maximum: 9223372036854775807
  int viewQuotas;

  /// Enables SEO tags and sharing previews.
  bool seoOptimization;

  /// Allows to view detailed statistics about model views.
  bool viewReporting;

  /// Allows to visually customie QR Codes when enabled.
  bool customQrCodes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PricingPlan &&
     other.key == key &&
     other.name == name &&
     other.price == price &&
     other.projectQuotas == projectQuotas &&
     other.modelQuotas == modelQuotas &&
     other.viewQuotas == viewQuotas &&
     other.seoOptimization == seoOptimization &&
     other.viewReporting == viewReporting &&
     other.customQrCodes == customQrCodes;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (key == null ? 0 : key.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (price == null ? 0 : price.hashCode) +
    (projectQuotas == null ? 0 : projectQuotas.hashCode) +
    (modelQuotas == null ? 0 : modelQuotas.hashCode) +
    (viewQuotas == null ? 0 : viewQuotas.hashCode) +
    (seoOptimization == null ? 0 : seoOptimization.hashCode) +
    (viewReporting == null ? 0 : viewReporting.hashCode) +
    (customQrCodes == null ? 0 : customQrCodes.hashCode);

  @override
  String toString() => 'PricingPlan[key=$key, name=$name, price=$price, projectQuotas=$projectQuotas, modelQuotas=$modelQuotas, viewQuotas=$viewQuotas, seoOptimization=$seoOptimization, viewReporting=$viewReporting, customQrCodes=$customQrCodes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'key'] = key;
      json[r'name'] = name;
      json[r'price'] = price;
      json[r'project_quotas'] = projectQuotas;
      json[r'model_quotas'] = modelQuotas;
      json[r'view_quotas'] = viewQuotas;
    if (seoOptimization != null) {
      json[r'seo_optimization'] = seoOptimization;
    }
    if (viewReporting != null) {
      json[r'view_reporting'] = viewReporting;
    }
    if (customQrCodes != null) {
      json[r'custom_qr_codes'] = customQrCodes;
    }
    return json;
  }

  /// Returns a new [PricingPlan] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PricingPlan fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PricingPlan(
        key: mapValueOfType<String>(json, r'key'),
        name: mapValueOfType<String>(json, r'name'),
        price: mapValueOfType<double>(json, r'price'),
        projectQuotas: mapValueOfType<int>(json, r'project_quotas'),
        modelQuotas: mapValueOfType<int>(json, r'model_quotas'),
        viewQuotas: mapValueOfType<int>(json, r'view_quotas'),
        seoOptimization: mapValueOfType<bool>(json, r'seo_optimization'),
        viewReporting: mapValueOfType<bool>(json, r'view_reporting'),
        customQrCodes: mapValueOfType<bool>(json, r'custom_qr_codes'),
      );
    }
    return null;
  }

  static List<PricingPlan> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PricingPlan.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PricingPlan>[];

  static Map<String, PricingPlan> mapFromJson(dynamic json) {
    final map = <String, PricingPlan>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PricingPlan.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PricingPlan-objects as value to a dart map
  static Map<String, List<PricingPlan>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PricingPlan>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PricingPlan.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

