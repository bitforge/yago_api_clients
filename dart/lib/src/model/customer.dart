//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:yago_cloud/src/model/payment_method_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
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

  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// Name will be visible as title in gallery.
  @JsonKey(name: r'name', required: true, includeIfNull: false)
  final String name;

  /// Defines the number of available models and AR views. <a href=\"mailto:info@bitforge.ch\">Contact us</a> to upgrade your plan.
  @JsonKey(name: r'plan', required: false, includeIfNull: false)
  final String? plan;

  /// Only for internal use
  @JsonKey(name: r'slug', required: true, includeIfNull: false)
  final String slug;

  /// Image will be visible in gallery.
  @JsonKey(name: r'image', required: false, includeIfNull: false)
  final String? image;

  @JsonKey(defaultValue: '', name: r'image_thumb', required: false, includeIfNull: false)
  final String? imageThumb;

  @JsonKey(defaultValue: '', name: r'image_preview', required: false, includeIfNull: false)
  final String? imagePreview;

  @JsonKey(name: r'website', required: false, includeIfNull: false)
  final String? website;

  @JsonKey(name: r'description', required: false, includeIfNull: false)
  final String? description;

  @JsonKey(name: r'contact_address', required: false, includeIfNull: false)
  final String? contactAddress;

  @JsonKey(name: r'billing_address', required: false, includeIfNull: false)
  final String? billingAddress;

  @JsonKey(name: r'payment_method', required: false, includeIfNull: false)
  final PaymentMethodEnum? paymentMethod;

  @JsonKey(defaultValue: 0, name: r'models_count', required: false, includeIfNull: false)
  final int? modelsCount;

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
      id.hashCode +
      name.hashCode +
      (plan == null ? 0 : plan.hashCode) +
      slug.hashCode +
      (image == null ? 0 : image.hashCode) +
      imageThumb.hashCode +
      imagePreview.hashCode +
      (website == null ? 0 : website.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (contactAddress == null ? 0 : contactAddress.hashCode) +
      (billingAddress == null ? 0 : billingAddress.hashCode) +
      paymentMethod.hashCode +
      modelsCount.hashCode;

  factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
