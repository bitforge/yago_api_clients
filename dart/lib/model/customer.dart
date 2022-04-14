//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Customer {
  /// Returns a new [Customer] instance.
  Customer({
    @required this.id,
    @required this.name,
    this.plan,
    @required this.slug,
    this.image,
    @required this.imageThumb,
    @required this.imagePreview,
    this.website,
    this.description,
    this.contactAddress,
    this.billingAddress,
    this.paymentMethod,
  });

  String id;

  /// Name will be visible as title in gallery.
  String name;

  /// Defines the number of available models and AR views. <a href=\"mailto:info@bitforge.ch\">Contact us</a> to upgrade your plan.
  String plan;

  /// Only for internal use
  String slug;

  /// Image will be visible in gallery.
  String image;

  String imageThumb;

  String imagePreview;

  String website;

  String description;

  String contactAddress;

  String billingAddress;

  PaymentMethodEnum paymentMethod;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Customer &&
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
     other.paymentMethod == paymentMethod;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (plan == null ? 0 : plan.hashCode) +
    (slug == null ? 0 : slug.hashCode) +
    (image == null ? 0 : image.hashCode) +
    (imageThumb == null ? 0 : imageThumb.hashCode) +
    (imagePreview == null ? 0 : imagePreview.hashCode) +
    (website == null ? 0 : website.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (contactAddress == null ? 0 : contactAddress.hashCode) +
    (billingAddress == null ? 0 : billingAddress.hashCode) +
    (paymentMethod == null ? 0 : paymentMethod.hashCode);

  @override
  String toString() => 'Customer[id=$id, name=$name, plan=$plan, slug=$slug, image=$image, imageThumb=$imageThumb, imagePreview=$imagePreview, website=$website, description=$description, contactAddress=$contactAddress, billingAddress=$billingAddress, paymentMethod=$paymentMethod]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'name'] = name;
    if (plan != null) {
      json[r'plan'] = plan;
    }
      json[r'slug'] = slug;
    if (image != null) {
      json[r'image'] = image;
    }
      json[r'image_thumb'] = imageThumb;
      json[r'image_preview'] = imagePreview;
    if (website != null) {
      json[r'website'] = website;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (contactAddress != null) {
      json[r'contact_address'] = contactAddress;
    }
    if (billingAddress != null) {
      json[r'billing_address'] = billingAddress;
    }
    if (paymentMethod != null) {
      json[r'payment_method'] = paymentMethod;
    }
    return json;
  }

  /// Returns a new [Customer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Customer fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Customer(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        plan: mapValueOfType<String>(json, r'plan'),
        slug: mapValueOfType<String>(json, r'slug'),
        image: mapValueOfType<String>(json, r'image'),
        imageThumb: mapValueOfType<String>(json, r'image_thumb'),
        imagePreview: mapValueOfType<String>(json, r'image_preview'),
        website: mapValueOfType<String>(json, r'website'),
        description: mapValueOfType<String>(json, r'description'),
        contactAddress: mapValueOfType<String>(json, r'contact_address'),
        billingAddress: mapValueOfType<String>(json, r'billing_address'),
        paymentMethod: PaymentMethodEnum.fromJson(json[r'payment_method']),
      );
    }
    return null;
  }

  static List<Customer> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Customer.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Customer>[];

  static Map<String, Customer> mapFromJson(dynamic json) {
    final map = <String, Customer>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Customer.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Customer-objects as value to a dart map
  static Map<String, List<Customer>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Customer>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Customer.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

