import 'package:yago_cloud/src/model/active_order.dart';
import 'package:yago_cloud/src/model/address.dart';
import 'package:yago_cloud/src/model/anchor_token.dart';
import 'package:yago_cloud/src/model/available_state.dart';
import 'package:yago_cloud/src/model/chronic_stats.dart';
import 'package:yago_cloud/src/model/customer.dart';
import 'package:yago_cloud/src/model/error_description.dart';
import 'package:yago_cloud/src/model/file_upload.dart';
import 'package:yago_cloud/src/model/file_uploaded.dart';
import 'package:yago_cloud/src/model/global_statistics.dart';
import 'package:yago_cloud/src/model/google_id_token.dart';
import 'package:yago_cloud/src/model/health_status.dart';
import 'package:yago_cloud/src/model/membership.dart';
import 'package:yago_cloud/src/model/model.dart';
import 'package:yago_cloud/src/model/model_create.dart';
import 'package:yago_cloud/src/model/model_info.dart';
import 'package:yago_cloud/src/model/model_update.dart';
import 'package:yago_cloud/src/model/new_subscription.dart';
import 'package:yago_cloud/src/model/new_subscription_create.dart';
import 'package:yago_cloud/src/model/order.dart';
import 'package:yago_cloud/src/model/order_comment.dart';
import 'package:yago_cloud/src/model/order_comment_create.dart';
import 'package:yago_cloud/src/model/order_create.dart';
import 'package:yago_cloud/src/model/order_detail.dart';
import 'package:yago_cloud/src/model/order_model.dart';
import 'package:yago_cloud/src/model/order_model_comment.dart';
import 'package:yago_cloud/src/model/order_model_comment_create.dart';
import 'package:yago_cloud/src/model/order_model_create.dart';
import 'package:yago_cloud/src/model/order_model_detail.dart';
import 'package:yago_cloud/src/model/order_model_file.dart';
import 'package:yago_cloud/src/model/order_model_update.dart';
import 'package:yago_cloud/src/model/order_update.dart';
import 'package:yago_cloud/src/model/password_change.dart';
import 'package:yago_cloud/src/model/password_reset.dart';
import 'package:yago_cloud/src/model/password_reset_confirm.dart';
import 'package:yago_cloud/src/model/patched_address.dart';
import 'package:yago_cloud/src/model/patched_model_update.dart';
import 'package:yago_cloud/src/model/patched_project_update.dart';
import 'package:yago_cloud/src/model/pricing_plan.dart';
import 'package:yago_cloud/src/model/project.dart';
import 'package:yago_cloud/src/model/project_create.dart';
import 'package:yago_cloud/src/model/project_statistics.dart';
import 'package:yago_cloud/src/model/project_update.dart';
import 'package:yago_cloud/src/model/registration.dart';
import 'package:yago_cloud/src/model/registration_create.dart';
import 'package:yago_cloud/src/model/state_changed.dart';
import 'package:yago_cloud/src/model/subscription.dart';
import 'package:yago_cloud/src/model/summary_stats.dart';
import 'package:yago_cloud/src/model/token_obtain_request.dart';
import 'package:yago_cloud/src/model/token_obtain_response.dart';
import 'package:yago_cloud/src/model/token_refresh_request.dart';
import 'package:yago_cloud/src/model/token_refresh_response.dart';
import 'package:yago_cloud/src/model/token_verify.dart';
import 'package:yago_cloud/src/model/user.dart';
import 'package:yago_cloud/src/model/user_verified.dart';

final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ReturnType deserialize<ReturnType, BaseType>(dynamic value, String targetType, {bool growable = true}) {
  switch (targetType) {
    case 'String':
      return '$value' as ReturnType;
    case 'int':
      return (value is int ? value : int.parse('$value')) as ReturnType;
    case 'bool':
      if (value is bool) {
        return value as ReturnType;
      }
      final valueString = '$value'.toLowerCase();
      return (valueString == 'true' || valueString == '1') as ReturnType;
    case 'double':
      return (value is double ? value : double.parse('$value')) as ReturnType;
    case 'ActiveOrder':
      return ActiveOrder.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Address':
      return Address.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'AnchorToken':
      return AnchorToken.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'AvailableState':
      return AvailableState.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'ChronicStats':
      return ChronicStats.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'CountryEnum':
    case 'Customer':
      return Customer.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'ErrorDescription':
      return ErrorDescription.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'FileUpload':
      return FileUpload.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'FileUploaded':
      return FileUploaded.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'FilterEventsEnum':
    case 'GlobalStatistics':
      return GlobalStatistics.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'GlobalStatisticsGroupByEnum':
    case 'GoogleIdToken':
      return GoogleIdToken.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'HealthStatus':
      return HealthStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Membership':
      return Membership.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Model':
      return Model.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'ModelCreate':
      return ModelCreate.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'ModelInfo':
      return ModelInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'ModelStatus':
    case 'ModelUpdate':
      return ModelUpdate.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'NewSubscription':
      return NewSubscription.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'NewSubscriptionCreate':
      return NewSubscriptionCreate.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Order':
      return Order.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'OrderComment':
      return OrderComment.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'OrderCommentCreate':
      return OrderCommentCreate.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'OrderCreate':
      return OrderCreate.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'OrderDetail':
      return OrderDetail.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'OrderModel':
      return OrderModel.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'OrderModelComment':
      return OrderModelComment.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'OrderModelCommentCreate':
      return OrderModelCommentCreate.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'OrderModelCreate':
      return OrderModelCreate.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'OrderModelDetail':
      return OrderModelDetail.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'OrderModelFile':
      return OrderModelFile.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'OrderModelUpdate':
      return OrderModelUpdate.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'OrderState':
    case 'OrderUpdate':
      return OrderUpdate.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'PasswordChange':
      return PasswordChange.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'PasswordReset':
      return PasswordReset.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'PasswordResetConfirm':
      return PasswordResetConfirm.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'PatchedAddress':
      return PatchedAddress.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'PatchedModelUpdate':
      return PatchedModelUpdate.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'PatchedProjectUpdate':
      return PatchedProjectUpdate.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'PaymentMethodEnum':
    case 'PriceCurrencyEnum':
    case 'PricingPlan':
      return PricingPlan.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Project':
      return Project.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'ProjectCreate':
      return ProjectCreate.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'ProjectStatistics':
      return ProjectStatistics.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'ProjectStatisticsGroupByEnum':
    case 'ProjectUpdate':
      return ProjectUpdate.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Registration':
      return Registration.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'RegistrationCreate':
      return RegistrationCreate.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'RoleEnum':
    case 'StateChanged':
      return StateChanged.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Subscription':
      return Subscription.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'SummaryStats':
      return SummaryStats.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'TimeRangeEnum':
    case 'TokenObtainRequest':
      return TokenObtainRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'TokenObtainResponse':
      return TokenObtainResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'TokenRefreshRequest':
      return TokenRefreshRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'TokenRefreshResponse':
      return TokenRefreshResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'TokenVerify':
      return TokenVerify.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'User':
      return User.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'UserVerified':
      return UserVerified.fromJson(value as Map<String, dynamic>) as ReturnType;
    default:
      RegExpMatch? match;

      if (value is List && (match = _regList.firstMatch(targetType)) != null) {
        targetType = match![1]!; // ignore: parameter_assignments
        return value
            .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
            .toList(growable: growable) as ReturnType;
      }
      if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
        targetType = match![1]!; // ignore: parameter_assignments
        return value
            .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
            .toSet() as ReturnType;
      }
      if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
        targetType = match![1]!; // ignore: parameter_assignments
        return Map<dynamic, BaseType>.fromIterables(
          value.keys,
          value.values.map((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable)),
        ) as ReturnType;
      }
      break;
  }
  throw Exception('Cannot deserialize');
}
