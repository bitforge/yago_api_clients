//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of yago;

class Customer {
  /// Returns a new [Customer] instance.
  Customer({
    required this.id,
    required this.name,
    this.plan,
    required this.slug,
    this.image,
    this.imageThumb = '',
    this.imagePreview = '',
    this.website,
    this.description,
    this.contactAddress,
    this.billingAddress,
    this.paymentMethod,
    this.modelsCount = 0,
  });

  String id;

  /// Name will be visible as title in gallery.
  String name;

  /// Defines the number of available models and AR views. <a href=\"mailto:info@bitforge.ch\">Contact us</a> to upgrade your plan.
  String? plan;

  /// Only for internal use
  String slug;

  /// Image will be visible in gallery.
  String? image;

  String imageThumb;

  String imagePreview;

  String? website;

  String? description;

  String? contactAddress;

  String? billingAddress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PaymentMethodEnum? paymentMethod;

  int modelsCount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Customer &&
          other.id == id &&
          other.name == name &&
          other.plan == plan &&
          other.slug == slug &&
          other.image == image &&
          other.imageThumb == imageThumb &&
          other.imagePreview == imagePreview &&
          other.website == website &&
          other.description == description &&
          other.contactAddress == contactAddress &&
          other.billingAddress == billingAddress &&
          other.paymentMethod == paymentMethod &&
          other.modelsCount == modelsCount;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (name.hashCode) +
      (plan == null ? 0 : plan!.hashCode) +
      (slug.hashCode) +
      (image == null ? 0 : image!.hashCode) +
      (imageThumb.hashCode) +
      (imagePreview.hashCode) +
      (website == null ? 0 : website!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (contactAddress == null ? 0 : contactAddress!.hashCode) +
      (billingAddress == null ? 0 : billingAddress!.hashCode) +
      (paymentMethod == null ? 0 : paymentMethod!.hashCode) +
      (modelsCount.hashCode);

  @override
  String toString() =>
      'Customer[id=$id, name=$name, plan=$plan, slug=$slug, image=$image, imageThumb=$imageThumb, imagePreview=$imagePreview, website=$website, description=$description, contactAddress=$contactAddress, billingAddress=$billingAddress, paymentMethod=$paymentMethod, modelsCount=$modelsCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = this.id;
    json[r'name'] = this.name;
    if (this.plan != null) {
      json[r'plan'] = this.plan;
    } else {
      json[r'plan'] = null;
    }
    json[r'slug'] = this.slug;
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    json[r'image_thumb'] = this.imageThumb;
    json[r'image_preview'] = this.imagePreview;
    if (this.website != null) {
      json[r'website'] = this.website;
    } else {
      json[r'website'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.contactAddress != null) {
      json[r'contact_address'] = this.contactAddress;
    } else {
      json[r'contact_address'] = null;
    }
    if (this.billingAddress != null) {
      json[r'billing_address'] = this.billingAddress;
    } else {
      json[r'billing_address'] = null;
    }
    if (this.paymentMethod != null) {
      json[r'payment_method'] = this.paymentMethod;
    } else {
      json[r'payment_method'] = null;
    }
    json[r'models_count'] = this.modelsCount;
    return json;
  }

  /// Returns a new [Customer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Customer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Customer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Customer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Customer(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        plan: mapValueOfType<String>(json, r'plan'),
        slug: mapValueOfType<String>(json, r'slug')!,
        image: mapValueOfType<String>(json, r'image'),
        imageThumb: mapValueOfType<String>(json, r'image_thumb') ?? '',
        imagePreview: mapValueOfType<String>(json, r'image_preview') ?? '',
        website: mapValueOfType<String>(json, r'website'),
        description: mapValueOfType<String>(json, r'description'),
        contactAddress: mapValueOfType<String>(json, r'contact_address'),
        billingAddress: mapValueOfType<String>(json, r'billing_address'),
        paymentMethod: PaymentMethodEnum.fromJson(json[r'payment_method']),
        modelsCount: mapValueOfType<int>(json, r'models_count') ?? 0,
      );
    }
    return null;
  }

  static List<Customer> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Customer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Customer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Customer> mapFromJson(dynamic json) {
    final map = <String, Customer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Customer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Customer-objects as value to a dart map
  static Map<String, List<Customer>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Customer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Customer.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'slug',
  };
}
