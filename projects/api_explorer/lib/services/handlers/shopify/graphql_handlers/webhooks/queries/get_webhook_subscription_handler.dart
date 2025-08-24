import 'package:apis/network/remote/shopify/graphql/webhooks/abstract/webhooks_service.dart';
import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

///*******************************************************************
//************ 🔔 GET WEBHOOK SUBSCRIPTION HANDLER 🔔 ************
///*******************************************************************

class GetWebhookSubscriptionHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    try {
      final id = params['id'] ?? params['query'] ?? params['first'];

      debugPrint('🔔 GetWebhookSubscriptionHandler - DEBUG INFO 🔔');
      debugPrint('🔔 Method: $method');
      debugPrint('🔔 All params: $params');
      debugPrint('🔔 Params keys: ${params.keys.toList()}');
      debugPrint('🔔 Params values: ${params.values.toList()}');
      debugPrint('🔔 ID from params[\'id\']: ${params['id']}');
      debugPrint('🔔 ID from params[\'query\']: ${params['query']}');
      debugPrint('🔔 ID from params[\'first\']: ${params['first']}');
      debugPrint('🔔 Final ID: $id');
      debugPrint('🔔 END DEBUG INFO 🔔');

      if (id == null || id.isEmpty) {
        return {
          "status": "error",
          "message": "Webhook subscription ID is required",
          "timestamp": DateTime.now().toIso8601String(),
        };
      }

      final response =
          await GetIt.I<WebhooksGraphQLService>().webhookSubscription(
        id: id,
      );

      return {
        "status": "success",
        "message": "Webhook subscription retrieved successfully",
        "data": response.toJson(),
        "query_type": "GetWebhookSubscription",
        "timestamp": DateTime.now().toIso8601String(),
      };
    } catch (e) {
      debugPrint('🔔 GetWebhookSubscriptionHandler - ERROR: $e');
      return {
        "status": "error",
        "message": "Failed to get webhook subscription: ${e.toString()}",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }
  }

  @override
  List<String> get supportedMethods => ['QUERY'];

  @override
  Map<String, List<ApiField>> get requiredFields => {
        'QUERY': [
          const ApiField(
            name: 'id',
            label: 'Webhook Subscription ID',
            hint: 'ID of the webhook subscription to retrieve',
            isRequired: true,
            type: ApiFieldType.text,
          ),
        ],
      };
}
