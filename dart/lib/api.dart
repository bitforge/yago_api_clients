//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/auth_api.dart';
part 'api/customer_api.dart';
part 'api/health_api.dart';
part 'api/memberships_api.dart';
part 'api/models_api.dart';
part 'api/orders_api.dart';
part 'api/plans_api.dart';
part 'api/projects_api.dart';
part 'api/registration_api.dart';
part 'api/stats_api.dart';
part 'api/subscription_api.dart';
part 'api/users_api.dart';

part 'model/active_order.dart';
part 'model/address.dart';
part 'model/available_state.dart';
part 'model/chronic_stats.dart';
part 'model/collection_method_enum.dart';
part 'model/country_enum.dart';
part 'model/customer.dart';
part 'model/error_description.dart';
part 'model/file_upload.dart';
part 'model/file_uploaded.dart';
part 'model/filter_events_enum.dart';
part 'model/global_statistics.dart';
part 'model/global_statistics_group_by_enum.dart';
part 'model/google_id_token.dart';
part 'model/health_status.dart';
part 'model/membership.dart';
part 'model/model.dart';
part 'model/model_create.dart';
part 'model/model_info.dart';
part 'model/model_status.dart';
part 'model/model_update.dart';
part 'model/new_subscription.dart';
part 'model/order.dart';
part 'model/order_comment.dart';
part 'model/order_comment_create.dart';
part 'model/order_create.dart';
part 'model/order_detail.dart';
part 'model/order_model.dart';
part 'model/order_model_comment.dart';
part 'model/order_model_comment_create.dart';
part 'model/order_model_create.dart';
part 'model/order_model_detail.dart';
part 'model/order_model_file.dart';
part 'model/order_state.dart';
part 'model/order_update.dart';
part 'model/password_change.dart';
part 'model/password_reset.dart';
part 'model/password_reset_confirm.dart';
part 'model/patched_address.dart';
part 'model/patched_model_update.dart';
part 'model/patched_project_update.dart';
part 'model/payment_method_enum.dart';
part 'model/plan_enum.dart';
part 'model/price_currency_enum.dart';
part 'model/pricing_plan.dart';
part 'model/project.dart';
part 'model/project_create.dart';
part 'model/project_update.dart';
part 'model/projects_statistics.dart';
part 'model/projects_statistics_group_by_enum.dart';
part 'model/registration.dart';
part 'model/registration_create.dart';
part 'model/report_format_enum.dart';
part 'model/role_enum.dart';
part 'model/state_changed.dart';
part 'model/stripe_subscription.dart';
part 'model/stripe_subscription_status_enum.dart';
part 'model/subscription.dart';
part 'model/summary_stats.dart';
part 'model/time_range_enum.dart';
part 'model/token_obtain_request.dart';
part 'model/token_obtain_response.dart';
part 'model/token_refresh_request.dart';
part 'model/token_refresh_response.dart';
part 'model/token_verify.dart';
part 'model/user.dart';
part 'model/user_verified.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
