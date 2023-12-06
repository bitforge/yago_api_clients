//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of yago;

class PricingPlan {
  /// Returns a new [PricingPlan] instance.
  PricingPlan({
    required this.key,
    required this.name,
    required this.price,
    this.priceOnRequest,
    this.projectQuotas = 0,
    this.projectQuotasDisabled,
    this.modelQuotas = '0',
    this.modelQuotasDisabled,
    this.seoOptimization,
    this.viewReporting,
    this.customQrCodes,
    this.scenesApp,
    this.hidden,
  });

  String key;

  String name;

  /// For display purposes, payment price is defined in stripe product.
  double price;

  /// Remove price and display request price offer in pricing table
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? priceOnRequest;

  int projectQuotas;

  /// Disable quota check for this plan.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? projectQuotasDisabled;

  String modelQuotas;

  /// Disable quota check for models.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? modelQuotasDisabled;

  /// Enables SEO tags and sharing previews.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? seoOptimization;

  /// Allows to view detailed statistics about model views.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? viewReporting;

  /// Allows to visually customie QR Codes when enabled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? customQrCodes;

  /// Allow usage of yago scenes app.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? scenesApp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hidden;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PricingPlan &&
          other.key == key &&
          other.name == name &&
          other.price == price &&
          other.priceOnRequest == priceOnRequest &&
          other.projectQuotas == projectQuotas &&
          other.projectQuotasDisabled == projectQuotasDisabled &&
          other.modelQuotas == modelQuotas &&
          other.modelQuotasDisabled == modelQuotasDisabled &&
          other.seoOptimization == seoOptimization &&
          other.viewReporting == viewReporting &&
          other.customQrCodes == customQrCodes &&
          other.scenesApp == scenesApp &&
          other.hidden == hidden;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (key.hashCode) +
      (name.hashCode) +
      (price.hashCode) +
      (priceOnRequest == null ? 0 : priceOnRequest!.hashCode) +
      (projectQuotas.hashCode) +
      (projectQuotasDisabled == null ? 0 : projectQuotasDisabled!.hashCode) +
      (modelQuotas.hashCode) +
      (modelQuotasDisabled == null ? 0 : modelQuotasDisabled!.hashCode) +
      (seoOptimization == null ? 0 : seoOptimization!.hashCode) +
      (viewReporting == null ? 0 : viewReporting!.hashCode) +
      (customQrCodes == null ? 0 : customQrCodes!.hashCode) +
      (scenesApp == null ? 0 : scenesApp!.hashCode) +
      (hidden == null ? 0 : hidden!.hashCode);

  @override
  String toString() =>
      'PricingPlan[key=$key, name=$name, price=$price, priceOnRequest=$priceOnRequest, projectQuotas=$projectQuotas, projectQuotasDisabled=$projectQuotasDisabled, modelQuotas=$modelQuotas, modelQuotasDisabled=$modelQuotasDisabled, seoOptimization=$seoOptimization, viewReporting=$viewReporting, customQrCodes=$customQrCodes, scenesApp=$scenesApp, hidden=$hidden]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'key'] = this.key;
    json[r'name'] = this.name;
    json[r'price'] = this.price;
    if (this.priceOnRequest != null) {
      json[r'price_on_request'] = this.priceOnRequest;
    } else {
      json[r'price_on_request'] = null;
    }
    json[r'project_quotas'] = this.projectQuotas;
    if (this.projectQuotasDisabled != null) {
      json[r'project_quotas_disabled'] = this.projectQuotasDisabled;
    } else {
      json[r'project_quotas_disabled'] = null;
    }
    json[r'model_quotas'] = this.modelQuotas;
    if (this.modelQuotasDisabled != null) {
      json[r'model_quotas_disabled'] = this.modelQuotasDisabled;
    } else {
      json[r'model_quotas_disabled'] = null;
    }
    if (this.seoOptimization != null) {
      json[r'seo_optimization'] = this.seoOptimization;
    } else {
      json[r'seo_optimization'] = null;
    }
    if (this.viewReporting != null) {
      json[r'view_reporting'] = this.viewReporting;
    } else {
      json[r'view_reporting'] = null;
    }
    if (this.customQrCodes != null) {
      json[r'custom_qr_codes'] = this.customQrCodes;
    } else {
      json[r'custom_qr_codes'] = null;
    }
    if (this.scenesApp != null) {
      json[r'scenes_app'] = this.scenesApp;
    } else {
      json[r'scenes_app'] = null;
    }
    if (this.hidden != null) {
      json[r'hidden'] = this.hidden;
    } else {
      json[r'hidden'] = null;
    }
    return json;
  }

  /// Returns a new [PricingPlan] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PricingPlan? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PricingPlan[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PricingPlan[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PricingPlan(
        key: mapValueOfType<String>(json, r'key')!,
        name: mapValueOfType<String>(json, r'name')!,
        price: mapValueOfType<double>(json, r'price')!,
        priceOnRequest: mapValueOfType<bool>(json, r'price_on_request'),
        projectQuotas: mapValueOfType<int>(json, r'project_quotas') ?? 0,
        projectQuotasDisabled: mapValueOfType<bool>(json, r'project_quotas_disabled'),
        modelQuotas: mapValueOfType<String>(json, r'model_quotas') ?? '0',
        modelQuotasDisabled: mapValueOfType<bool>(json, r'model_quotas_disabled'),
        seoOptimization: mapValueOfType<bool>(json, r'seo_optimization'),
        viewReporting: mapValueOfType<bool>(json, r'view_reporting'),
        customQrCodes: mapValueOfType<bool>(json, r'custom_qr_codes'),
        scenesApp: mapValueOfType<bool>(json, r'scenes_app'),
        hidden: mapValueOfType<bool>(json, r'hidden'),
      );
    }
    return null;
  }

  static List<PricingPlan> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PricingPlan>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PricingPlan.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PricingPlan> mapFromJson(dynamic json) {
    final map = <String, PricingPlan>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PricingPlan.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PricingPlan-objects as value to a dart map
  static Map<String, List<PricingPlan>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PricingPlan>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PricingPlan.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'key',
    'name',
    'price',
  };
}
