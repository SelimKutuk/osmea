import 'package:apis/network/remote/shopify/graphql/webhooks/abstract/webhooks_service.dart';
import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

///*******************************************************************
//************ 🔔 GET WEBHOOK SUBSCRIPTIONS HANDLER 🔔 ************
///*******************************************************************

class GetWebhookSubscriptionsHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    try {
      final first = int.tryParse(params['first'] ?? '10') ?? 10;
      final after = params['after'];

      debugPrint('🔔 GetWebhookSubscriptionsHandler - DEBUG INFO 🔔');
      debugPrint('🔔 Method: $method');
      debugPrint('🔔 All params: $params');
      debugPrint('🔔 First: $first');
      debugPrint('🔔 After: $after');
      debugPrint('🔔 END DEBUG INFO 🔔');

      final response = await GetIt.I<WebhooksGraphQLService>().webhookSubscriptions(
        first: first,
        after: after,
      );

      return {
        "status": "success",
        "message": "Webhook subscriptions retrieved successfully",
        "data": response.toJson(),
        "query_type": "GetWebhookSubscriptions",
        "timestamp": DateTime.now().toIso8601String(),
      };
    } catch (e) {
      debugPrint('🔔 GetWebhookSubscriptionsHandler - ERROR: $e');
      return {
        "status": "error",
        "message": "Failed to get webhook subscriptions: ${e.toString()}",
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
            name: 'first',
            label: 'First',
            hint: 'Number of webhook subscriptions to retrieve',
            isRequired: false,
            type: ApiFieldType.number,
          ),
          const ApiField(
            name: 'after',
            label: 'After',
            hint: 'Cursor for pagination',
            isRequired: false,
            type: ApiFieldType.text,
          ),
        ],
      };
}
